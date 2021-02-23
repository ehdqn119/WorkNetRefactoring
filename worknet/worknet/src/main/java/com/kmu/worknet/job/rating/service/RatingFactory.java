package com.kmu.worknet.job.rating.service;

import com.kmu.worknet.member.mappers.MemberMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.HashMap;
import java.util.Map;

@Component
@RequiredArgsConstructor
public class RatingFactory {

    private final Map<String, Evaluation> EVALUATES = new HashMap<String, Evaluation>();
    private final MemberMapper memberMapper;
    private final Map<String,Evaluation> evaluation;

    @PostConstruct
    protected void setEVALUATES(){
        evaluation.keySet().forEach(evaluationType -> {
            EVALUATES.put(evaluationType, evaluation.get(evaluationType));
        });

    }
    public Evaluation getEvaluation(Assessment assessment){
        setMemberIdx(assessment);
        return EVALUATES.get(assessment.getKind());
    }

    protected void setMemberIdx(Assessment assessment){
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String userName = ((UserDetails) principal).getUsername();
        assessment.setIdx(memberMapper.findByMemberSeq(userName));
    }

}
