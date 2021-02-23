package com.kmu.worknet.member.webConfig;

import com.kmu.worknet.member.service.MemberDetailService;
import com.kmu.worknet.member.service.MemberLoginFailHandler;
import com.kmu.worknet.member.service.MemberLoginSuccessHandler;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Profile;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
@Profile("!test")
@EnableWebSecurity
@RequiredArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	private final MemberDetailService memberDetailService;
	

	   @Override
	   public void configure(WebSecurity web) throws Exception {
	       // 허용되어야 할 경로들
	       web.ignoring().antMatchers("/resources/**", 
	                                  "/Category/**",
	                                  "/Default/**",
	                                  "/DetailJob/**",
	                                  "/Main/**",
	                                  "/sign/**"); 
	   }
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.csrf()
			.disable()
			.authorizeRequests()
			.antMatchers("/login","/signUp","/duplicateCheck","/findByPass").permitAll()
			.antMatchers("/**").hasRole("MEMBER")
			.anyRequest().authenticated()

		.and()
			.formLogin()
			.loginPage("/login")
			.loginProcessingUrl("/loginProcess")
			.defaultSuccessUrl("/jobs")
			.usernameParameter("memId")
			.passwordParameter("memPw")
			.failureHandler(failureHandler())
			.successHandler(successHandler())
			.permitAll()
		.and()
			.logout()
			.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
			.invalidateHttpSession(true)
			.permitAll();
	}


	@Bean
	public BCryptPasswordEncoder passwordEncode() {
		return new BCryptPasswordEncoder();
	}
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(memberDetailService)
			.passwordEncoder(passwordEncode());
	}
    @Bean
    public SessionRegistry sessionRegistry() {
        return new SessionRegistryImpl();
    }
	
	@Bean
	public AuthenticationFailureHandler failureHandler() {
		return new MemberLoginFailHandler();
	}
	@Bean
	public AuthenticationSuccessHandler successHandler() {
		return new MemberLoginSuccessHandler();
	}
    @Bean
    public HttpFirewall defaultHttpFirewall() {
        return new DefaultHttpFirewall();
    }
	
}
