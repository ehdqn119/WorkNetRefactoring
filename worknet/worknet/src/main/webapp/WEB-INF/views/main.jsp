<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KMU WorkNet</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <link rel="stylesheet" href="/DetailJob/css/logo.css">
  
    <link rel="stylesheet" href="/Main/css/main.css">
    <link rel="stylesheet" href="/Main/css/animation.css">
    <link rel="stylesheet" href="/Main/css/search.css">
    
    
    <!--  변경된 슬라이더 추가  -->
    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="/Main/css/slickSlider.css">
    

	<!-- 페이징 css -->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
	<link rel="stylesheet" href="/Default/pagination.css">
	<!-- 페이징 css -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">

	<!-- Animate.style cdn -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">

</head>
<body>
    <div class="main">
        <div class="hero__background">
            <img class="mainImage" src="Test1500.jpg" 
                srcset="/Main/img/Test1500.jpg 1500w,
                        /Main/img/Test2000.jpg 2000w">
        </div>
        <div class="nav"> 
          <span><%= session.getAttribute("name")%> 님 </span>
          <a href="/logout"><span>로그아웃</span></a>
          <a href="/jobs"><span class="animated rotateIn">Home</span></a>
          <a href="/jobs/category.do"><span class="animated rotateIn">Search</span></a>

          </div>
        <div class="mainSearch">
          <span class="mainTitle"> 다양한 채용공고들을 공유하고 </span>
          <span class="mainTitle"> 최고의 정보를 얻어보세요 </span>
          <form action="/jobs/category.do" class="search-bar">
            <input class = "mainSearchBar" type="search" name="wantedTitle" pattern=".*\S.*" placeholder="   공고 제목을 입력하세요!" required>
            <button class="search-btn" type="submit">
              <span>Search</span>
            </button>
          </form>
<!--           <div class="mainRecommand"> -->
<!--             <span class="mainText"> 추천 검색어 : </span> -->
<!--             <span class="recommand">거문고, 시가 , 이유란 </span> -->
<!--           </div> -->
          </div>
    </div>
    
    
    <!-- 변경된 슬라이더 추가 2020-09-23 -->
<c:if test="${not empty recSet.recommendList}">
<h1 class="sliderTitle mainMarginSize" >추천 공고</h1>
<div class="ContentContainer">
	<div class="sliderLayoutContainer wh">
<!-- 		<div class="tarkikComandSlider"> -->
		<c:forEach var="rec" items="${recSet.recommendList}" varStatus="status">
			  <article class="comandSlider__item"  onclick="window.location.href='/jobs/detailJob?wantedAuthNo=${rec.wantedAuthNo}&Kind=2'">
			    <header>
			      <p class="comandSlider__item_name"><a style="color:white;">${rec.corpNm}</a></p>
			      <p class="comandSlider__item_contact"><span>구인 제목</span>${rec.wantedTitle}</p>
			    </header>
<%-- 			    <c:choose> --%>
<%-- 			    	<c:when test="${rec.busiSize eq '대기업'}"> --%>
<!-- 			    		<img class="comandSlider__item_photo" src="/Main/img/majorCompany.svg" alt="user1" /> -->
<%-- 			    	</c:when> --%>
<%-- 			    	<c:when test="${rec.busiSize eq '중견기업'}"> --%>
<!-- 			    		<img class="comandSlider__item_photo" src="/Main/img/midSizeCompany.svg" alt="user1" /> -->
<%-- 			    	</c:when> --%>
<%-- 			    	<c:when test="${rec.busiSize eq '중소기업'}"> --%>
<!-- 			    		<img class="comandSlider__item_photo" src="/Main/img/smallEnterprise.svg" alt="user1" /> -->
<%-- 			    	</c:when> --%>
<%-- 			    	<c:otherwise> --%>
<!-- 			    		<img class="comandSlider__item_photo" src="/Main/img/otherCompany.svg" alt="user1" /> -->
<%-- 			    	</c:otherwise> --%>
<%-- 			    </c:choose> --%>

			    <div class="comandSlider__item_contact">
			    </div>
			    <div class="comandSlider__item_contact"><span>급여</span>${rec.salTpNm}</div>
			    <div class="comandSlider__item_contact"><span>소재지</span>${rec.workRegion}</div>
			  </article>
</c:forEach>
		 </div>
		</div>
<!-- 	</div> -->
</c:if>
<!-- 테스트용 view -->
<!-- 
<div style="width: 100%; display: flex; align-items: center; justify-content: center; flex-direction: column;">
   
   <h3>
무비 데이터 테스트용
기존 ratings.csv 파일의 userId = MemberSeq 로 변경
  </h3>
   <c:if test="${not empty test}">    
		<table>
			<thead>
			<tr>
			<th>No.</th>
			<th>Member Seq</th>
			<th>Movie ID</th>
			<th>Rating</th>
			<th>Timestamp</th>
			</tr>
			</thead>
			<tbody>
			<style>
				th, td {
					border-bottom: 1px solid #444444;
					border-left : 1px solid #444444;
					box-sizing: border-box;
					text-align : center;
					font-size : 20px;
					padding: 5px;
					margin: 0;
				}
			</style>
			   	<c:forEach var="test" items="${test}" varStatus="status">
			   	<tr style="cursor: pointer; padding: 5px; " onclick="window.location.href='/jobs/test?movieId=${test.movieId}'" >
				<td>${status.index+1}</td>
				<td>${test.memSeq}</td>
				<td>${test.movieId}</td>
				<td>${test.rating}</td>
				<td>${test.timestamp}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
   
</div>
-->
   <!-- 테스트용 view -->
	
	<div class="ContentContainer">
	<h1 class="sliderTitle mainMarginSize" >신규 등록 공고</h1>
	<div class="sliderLayoutContainer">
	<c:forEach var="jobList" items="${jobs}" varStatus="status">
		<div class="twoRowcontentContainer"  onclick="window.location.href='/jobs/detailJob?wantedAuthNo=${jobList.wantedAuthNo}&Kind=1'">
			<div class="newContentContainer">
				<div class="companyName">
					${jobList.corpNm}
				</div>
				<div class="companyDetail">${jobList.wantedTitle}</div>
				<div class="companyDetail">${jobList.salTpNm}</div>
				<div class="companyUrl">${jobList.workRegion}</div>
				<div class="classification">
					<div class="recruitmentForm">${jobList.receiptCloseDt}</div>
				</div>
			</div>
		</div>
	</c:forEach>
	</div>
	<div class="pagination mainMarginSize">
	    <div class="pagination-container">
	        <div class="pagination-hover-overlay"></div>
		    <c:if test="${page.currentPage > page.buttonLength}"> 
				<a href="/jobs?currentPage=${page.beginPage-1}" class="pagination-prev">
		            <span class="icon-pagination icon-pagination-prev">
		                <i class="icon material-icons">
		                    keyboard_arrow_left
		                </i>
		            </span>
		        </a>
			</c:if>
			<c:choose>
			
			    <c:when test="${page.endPage > page.totalPage}">
				    <c:forEach begin="${page.beginPage}" end="${page.totalPage}"
						varStatus="status">
						<c:if test="${page.currentPage == status.current}">
							<a style="border: solid 2px #3e5b79; box-sizing: border-box;" href="/jobs?currentPage=${status.current}" class="pagination-page-number">${status.current}</a>
						</c:if>
						<c:if test="${page.currentPage != status.current}">
							<a href="/jobs?currentPage=${status.current}" class="pagination-page-number">${status.current}</a>	
						</c:if>
					</c:forEach>
			    </c:when>
			    <c:otherwise>
			       	<c:forEach begin="${page.beginPage}" end="${page.endPage}" varStatus="status">
						<c:if test="${page.currentPage == status.current}">
							<a style="border: solid 2px #3e5b79;  box-sizing: border-box;" href="/jobs?currentPage=${status.current}" class="pagination-page-number">${status.current}</a>
						</c:if>
						<c:if test="${page.currentPage != status.current}">
							<a href="/jobs?currentPage=${status.current}" class="pagination-page-number">${status.current}</a>	
						</c:if>
					</c:forEach>
					<a href="/jobs?currentPage=${page.endPage+1}" class="pagination-next">
			            <span class="icon-pagination icon-pagination-next">
			                <i class="icon material-icons">
			                    keyboard_arrow_left
			                </i>
			            </span>
		        	</a>
			    </c:otherwise>
			    
			</c:choose>

	    </div>
	</div>
	<!--    
	<h2 class="test mainMarginSize"> 추천 분야에 대한 검색결과를 제공 받으세요! </h2>
    <div class="recommandContainer_out_Layout mainMarginSize">
      <div class="recommandContainer_Layout">
        <figure class="snip1384">
          <img src="/Main/img/area.jpg" class="imgHover">
          <figcaption>
            <h3>지역별</h3>
            <p>서울 전체 공고를 확인하세요. </p><i class="ion-ios-arrow-right"></i>
          </figcaption>
          <a href="#"></a>
        </figure>
        <figure class="snip1384">
          <img src="/Main/img/marketing.jpg" class="imgHover">
          <figcaption>
            <h3>기업별</h3>
            <p>최신 대기업 채용 공고를 확인하세요.</p><i class="ion-ios-arrow-right"></i>
          </figcaption>
          <a href="#"></a>
        </figure>
        
        <figure class="snip1384">
          <img src="/Main/img/Design.jpg" class="imgHover">
          <figcaption>
            <h3>학력별</h3>
            <p>석사 전체 채용 공고를 확인하세요. </p><i class="ion-ios-arrow-right"></i>
          </figcaption>
          <a href="#"></a>
        </figure>
        -->
		<!--         
        <figure class="snip1384">
          <img src="/Main/img/IT.jpg" class="imgHover">
          <figcaption>
            <h3> 샘플</h3>
            <p>샘플</p><i class="ion-ios-arrow-right"></i>
          </figcaption>
          <a href="#"></a>
        </figure>
        <figure class="snip1384">
          <img src="/Main/img/medical1.jpg" class="imgHover">
          <figcaption>
            <h3>샘플</h3>
            <p>샘플</p><i class="ion-ios-arrow-right"></i>
          </figcaption>
          <a href="#"></a>
        </figure>
        <figure class="snip1384">
          <img src="/Main/img/sales.jpg" class="imgHover">
          <figcaption>
            <h3>샘플</h3>
            <p>샘플</p><i class="ion-ios-arrow-right"></i>
          </figcaption>
          <a href="#"></a>
        </figure>
        -->
      </div>
    </div>
	
	
	<!--  여기까지 두줄 테스트 입니다. 2020-09-23 -->
	
	
	
	<!--  Footer Line -->
	
 	<footer id="footer">
                <div class="inner">
                	<div class="about Us">
                		<h1> ABOUT US </h1>
                		<ul class="aboutUsulClass">
		                	<li class="addressTitle bi"> <i class="fas fa-map-marker-alt"></i> 주소  </li>
		                	<li class="address ftContent"> 대구광역시 동구 큰고개로 35-2 Team sebm </li>
		                	<li class="questionsTitle bi"> <i class="far fa-envelope"></i>  문제가 있으신가요? </li>
		                	<li class="questions ftContent"> tuehdnx@naver.com </li>
		                	<li class="phoneNumberTitle bi"> <i class="fas fa-phone-alt"></i> 연락번호 </li>
		                	<li class="phoneNumber ftContent"> +82 (Republic of  Korean)010-9830-5559 </li>
	                	</ul>
                	</div> 	
                    <div class="Update">
                		<h1>Latest Updates </h1>
                		<ul class="aboutUsulClass">
		                	<li class="addressTitle bi">  
		                		<i class="fas fa-retweet"></i>
		                		<div class="Update ftContent">
		                			<span class="UpdateContent"> 회원정보 수정이 업데이트 되었습니다! 지금 활용해보세요!  </span>
		                		</div>
		                	</li>
		                	<li class="addressTitle bi">  
		                		<i class="fas fa-retweet"></i>
		                		<div class="Update ftContent">
		                			<span class="UpdateContent"> 이메일 찾기 기능이 업데이트 되었습니다!  </span>
		                		</div>
		                	</li>
		                	<li class="addressTitle bi">  
		                		<i class="fas fa-retweet"></i>
		                		<div class="Update ftContent">
		                			<span class="UpdateContent"> 추천 채용공고가 업데이트 되었습니다!  </span>
		                		</div>
		                	</li>
	                	</ul>
                	</div>
                	
                	 <div class="social">
                		<h1> Contect with Us </h1>
                		<div class="icons">
                        <ul class="soc">
                            <li><a class="icon-15 instagram" href="https://www.instagram.com/z.uuunk_/" title="Instagram">
                                <div class="ir">
                                <svg viewBox="0 0 512 512" preserveAspectRatio="xMidYMid meet">
                                    <path d="M256 109.3c47.8 0 53.4 0.2 72.3 1 17.4 0.8 26.9 3.7 33.2 6.2 8.4 3.2 14.3 7.1 20.6 13.4 6.3 6.3 10.1 12.2 13.4 20.6 2.5 6.3 5.4 15.8 6.2 33.2 0.9 18.9 1 24.5 1 72.3s-0.2 53.4-1 72.3c-0.8 17.4-3.7 26.9-6.2 33.2 -3.2 8.4-7.1 14.3-13.4 20.6 -6.3 6.3-12.2 10.1-20.6 13.4 -6.3 2.5-15.8 5.4-33.2 6.2 -18.9 0.9-24.5 1-72.3 1s-53.4-0.2-72.3-1c-17.4-0.8-26.9-3.7-33.2-6.2 -8.4-3.2-14.3-7.1-20.6-13.4 -6.3-6.3-10.1-12.2-13.4-20.6 -2.5-6.3-5.4-15.8-6.2-33.2 -0.9-18.9-1-24.5-1-72.3s0.2-53.4 1-72.3c0.8-17.4 3.7-26.9 6.2-33.2 3.2-8.4 7.1-14.3 13.4-20.6 6.3-6.3 12.2-10.1 20.6-13.4 6.3-2.5 15.8-5.4 33.2-6.2C202.6 109.5 208.2 109.3 256 109.3M256 77.1c-48.6 0-54.7 0.2-73.8 1.1 -19 0.9-32.1 3.9-43.4 8.3 -11.8 4.6-21.7 10.7-31.7 20.6 -9.9 9.9-16.1 19.9-20.6 31.7 -4.4 11.4-7.4 24.4-8.3 43.4 -0.9 19.1-1.1 25.2-1.1 73.8 0 48.6 0.2 54.7 1.1 73.8 0.9 19 3.9 32.1 8.3 43.4 4.6 11.8 10.7 21.7 20.6 31.7 9.9 9.9 19.9 16.1 31.7 20.6 11.4 4.4 24.4 7.4 43.4 8.3 19.1 0.9 25.2 1.1 73.8 1.1s54.7-0.2 73.8-1.1c19-0.9 32.1-3.9 43.4-8.3 11.8-4.6 21.7-10.7 31.7-20.6 9.9-9.9 16.1-19.9 20.6-31.7 4.4-11.4 7.4-24.4 8.3-43.4 0.9-19.1 1.1-25.2 1.1-73.8s-0.2-54.7-1.1-73.8c-0.9-19-3.9-32.1-8.3-43.4 -4.6-11.8-10.7-21.7-20.6-31.7 -9.9-9.9-19.9-16.1-31.7-20.6 -11.4-4.4-24.4-7.4-43.4-8.3C310.7 77.3 304.6 77.1 256 77.1L256 77.1z"></path>
                                    <path d="M256 164.1c-50.7 0-91.9 41.1-91.9 91.9s41.1 91.9 91.9 91.9 91.9-41.1 91.9-91.9S306.7 164.1 256 164.1zM256 315.6c-32.9 0-59.6-26.7-59.6-59.6s26.7-59.6 59.6-59.6 59.6 26.7 59.6 59.6S288.9 315.6 256 315.6z"></path>
                                    <circle cx="351.5" cy="160.5" r="21.5"></circle>
                                </svg>
                                </div></a></li>
                            <li><a class="icon-26 twitter" href="https://twitter.com/TLZj1jZO4dGkN7d" title="Twitter">
                                <div class="ir">
                                    <svg viewBox="0 0 512 512" preserveAspectRatio="xMidYMid meet">
                                    <path d="M419.6 168.6c-11.7 5.2-24.2 8.7-37.4 10.2 13.4-8.1 23.8-20.8 28.6-36 -12.6 7.5-26.5 12.9-41.3 15.8 -11.9-12.6-28.8-20.6-47.5-20.6 -42 0-72.9 39.2-63.4 79.9 -54.1-2.7-102.1-28.6-134.2-68 -17 29.2-8.8 67.5 20.1 86.9 -10.7-0.3-20.7-3.3-29.5-8.1 -0.7 30.2 20.9 58.4 52.2 64.6 -9.2 2.5-19.2 3.1-29.4 1.1 8.3 25.9 32.3 44.7 60.8 45.2 -27.4 21.4-61.8 31-96.4 27 28.8 18.5 63 29.2 99.8 29.2 120.8 0 189.1-102.1 185-193.6C399.9 193.1 410.9 181.7 419.6 168.6z"></path>
                                    </svg>
                                </div></a></li>
                            <li><a class="icon-10 facebook" href="https://www.facebook.com/profile.php?id=100005139281575" title="Facebook">
                                <div class="ir">
                                <svg viewBox="0 0 512 512" preserveAspectRatio="xMidYMid meet">
                                    <path d="M211.9 197.4h-36.7v59.9h36.7V433.1h70.5V256.5h49.2l5.2-59.1h-54.4c0 0 0-22.1 0-33.7 0-13.9 2.8-19.5 16.3-19.5 10.9 0 38.2 0 38.2 0V82.9c0 0-40.2 0-48.8 0 -52.5 0-76.1 23.1-76.1 67.3C211.9 188.8 211.9 197.4 211.9 197.4z"></path>
                                </svg>
                                </div></a></li>
                            <li><a class="icon-13 github" href="https://github.com/jeongjinuk/worknet" title="GitHub">
                                <div class="ir">
                                    <svg viewBox="0 0 512 512" preserveAspectRatio="xMidYMid meet">
                                    <path d="M256 70.7c-102.6 0-185.9 83.2-185.9 185.9 0 82.1 53.3 151.8 127.1 176.4 9.3 1.7 12.3-4 12.3-8.9V389.4c-51.7 11.3-62.5-21.9-62.5-21.9 -8.4-21.5-20.6-27.2-20.6-27.2 -16.9-11.5 1.3-11.3 1.3-11.3 18.7 1.3 28.5 19.2 28.5 19.2 16.6 28.4 43.5 20.2 54.1 15.4 1.7-12 6.5-20.2 11.8-24.9 -41.3-4.7-84.7-20.6-84.7-91.9 0-20.3 7.3-36.9 19.2-49.9 -1.9-4.7-8.3-23.6 1.8-49.2 0 0 15.6-5 51.1 19.1 14.8-4.1 30.7-6.2 46.5-6.3 15.8 0.1 31.7 2.1 46.6 6.3 35.5-24 51.1-19.1 51.1-19.1 10.1 25.6 3.8 44.5 1.8 49.2 11.9 13 19.1 29.6 19.1 49.9 0 71.4-43.5 87.1-84.9 91.7 6.7 5.8 12.8 17.1 12.8 34.4 0 24.9 0 44.9 0 51 0 4.9 3 10.7 12.4 8.9 73.8-24.6 127-94.3 127-176.4C441.9 153.9 358.6 70.7 256 70.7z"></path>
                                    </svg>
                                </div></a></li>
                        </ul>
                    	</div>
                    	
                        <h3 class="copyright"> © Team Sebm 	</h3>
                	</div>
                	
                </div>
                
            </footer>

<!-- 페이징 버튼 js -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="/Main/js/main.js"></script>
<script src="/Default/pagination.js"></script>
<script src="/Default/recommend.js"></script>

<!--  변경된 슬라이더 추가 2020-09-23 -->
<!-- <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> -->

<script src="/Main/js/slickSlider.js"></script>




<!-- 페이징 버튼 js -->
</body>
</html>