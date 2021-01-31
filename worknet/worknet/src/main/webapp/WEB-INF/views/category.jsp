<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WorkNet:카테고리</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    
    <link rel="stylesheet" href="/Category/css/search.css">
    <link rel="stylesheet" href="/Category/css/font.css">
    <link rel="stylesheet" href="/Category/css/areaSearchBox.css">
    <link rel="stylesheet" href="/Category/css/fieldSearchBox.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link rel="stylesheet" href="/Category/css/animation.css">
    <link rel="stylesheet" href="/Category/css/logo.css">

    <!-- Magnific Popup css-->
    <link rel="stylesheet" href="/Category/css/magnificPopup.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
    
	<!-- 페이징 css -->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
	<link rel="stylesheet" href="/Default/pagination.css">
	<!-- 페이징 css -->

</head>
<body>
    <div id="sideSpaceLayout">
        <div id="side">
            <div id="sideHeader">
                <h3 class="logoText"> Vital </h3>
                <div id="hamburger">
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </div>
            <div id="sideMenuLayout">
                <div class="sideMeenuLayoutRow"><i class="fas fa-home goHome" area-hidden="true"></i><span class="goHome">Home</span></a></div> <!-- 메인으로 -->
                <div class="sideMeenuLayoutRow"><i class="fab fa-hotjar recommand" area-hidden="true"></i><span class="recommand">Category</span></i> </div> <!-- 메인으로 -->
                <div class="sideMeenuLayoutRow"><i class="fas fa-redo-alt refreshs" area-hidden="true"></i><span class="refreshs">Refresh</span></i>  </div> <!-- history.go() --> 
                <!-- <div style="class="sideMeenuLayoutRow"><i class="far fa-comment-dots" area-hidden="true"></i></i><span>Talk</span></i></div> kakaoapi -->
                <div class="sideMeenuLayoutRow" id="magnificPopup"><i class="fas fa-question-circle" area-hidden="true"></i><span class="goGuide">Guide</span> </div>   
                <div class="sideMeenuLayoutRow"><i class="fas fa-plus-circle newPage" area-hidden="true"></i><span class="newPage">New</span></i></div> <!-- New brower -->
            </div>
            <!-- <div id="sideMenuLayout">
                <div class="sideMeenuLayoutRow"><a href="search.html"><i class="fas fa-home" area-hidden="true"></i><span>Home</span></a></div>
                <div class="sideMeenuLayoutRow"><a href="#"><i class="fab fa-hotjar" area-hidden="true"></i><span>Hot</span></a></div>
                <div class="sideMeenuLayoutRow"><a href="#"><i class="fas fa-redo-alt" area-hidden="true"></i><span>Refresh</span></a></div> 
                <div class="sideMeenuLayoutRow"><i class="far fa-comment-dots" area-hidden="true"></i></i><span>Talk</span></i></div> 
                <div class="sideMeenuLayoutRow" id="magnificPopup"><i class="fas fa-plus-circle"></i><span>Guide</span></i></div> 
                <hr width = "221px" color = "#5492FA" size = "2">
                <div class="sideMeenuLayoutRow" ><i class="fas fa-plus-circle"></i><span>New</span></i></div> 
                <div
                    id="kakao-talk-channel-chat-button"
                    data-channel-public-id="_xdmWixb/chat"
                    data-title="consult"
                    data-size="small"
                    data-color="mono"
                    data-shape="pc"
                    data-support-multiple-densities="true"
                    ></div>
                <div class="sideMeenuLayoutRow"><span>Settings</span></i></div>
                <hr width = "221px" color = "#5492FA" size = "2">
                <div class="sideMeenuLayoutRow"><span>Help</span></i></div>
                <div class="sideMeenuLayoutRow"><span>Send Feedback</span></i></div>
                <div class="sideMeenuLayoutRow"><span>Privacy</span></i></div>
                <div class="sideMeenuLayoutRow"><span>Terms and Conditions</span></i></div>
            </div> -->
        </div>
        <div class="header">
            <div id="paddingBox">
                <div id="rheader">
                    <div id="login">
                    <div id ="searchContent"><%= session.getAttribute("name")%></div>
                    <a href="/logout"><div id ="logout"><i class="fas fa-sign-out-alt"></i> 로그아웃</div></a>
                </div>
                </div>
            </div>

            <form id="category" action='search.html' method="GET">
                <div class="headCategory">
                    <div class="c_CategorySearch">
                    <button type='button' class="area"><i class="fas fa-map-marker-alt categorymarker-alt"></i><span>상세검색</span></button>
                    <!-- <button type='button' class="field"><i class="fas fa-address-card"></i><span>분야</span></button> -->
                    </div>
                    <input type="text" id="wantedTitle" name="wantedTitleName" placeholder="키워드를 입력해주세요 &#xf002;" class="searchBar"/>
                </div>
                <!-- 애는 none 처리입니다. 그리고 포지션 잡아줘야 합니다. 추가하면서-->
                <div class="categorySearch">
                    <div class="areaContainer">
                        <div class="areaSelect">
                            <button type="button" data-code="401" data-bcode="area" class="subDepth_btn_404"><span class="txt">지역</span><span class="count"> (17)</span></button>
                            <button type="button" data-code="402" data-bcode="busiSize" class="subDepth_btn_404"><span class="txt">기업형태</span><span class="count"> (4)</span></button>
                            <button type="button" data-code="403" data-bcode="eduNm" class="subDepth_btn_404"><span class="txt">학력</span><span class="count"> (6)</span></button>
                        </div>
                        <div class="areaCheckbox">
                            <div class="area_btn">
<!--                                 <button type="button" class="btn_all_category" data-logging-flow="area">지역 펼쳐보기</button> -->
<!--                                 <button type="button" class="btn_reset">상세검색 초기화</button> -->
                            </div>
                            <div class="checkbox_layout">
                                <!-- 이 부분은 동적 엘리멘트 생성 완료했습니다. -->
                                <!-- <div> <input type="checkbox" id="selectCheck" value="all"/> <label name="selectCheck">대구 전체</label></div>
                                <div> <input type="checkbox" id="selectCheck" value="1"/> <label name="selectCheck">동구</label></div>
                                <div> <input type="checkbox" id="selectCheck" value="2"/> <label name="selectCheck">수성구</label></div>
                                <div> <input type="checkbox" id="selectCheck" value="3"/> <label name="selectCheck">달서구</label></div>
                                <div> <input type="checkbox" id="selectCheck" value="4"/> <label name="selectCheck">서구</label></div>
                                <div> <input type="checkbox" id="selectCheck" value="5"/> <label name="selectCheck">머구</label></div>
                                <div> <input type="checkbox" id="selectCheck" value="6"/> <label name="selectCheck">수하하구</label></div>
                                <div> <input type="checkbox" id="selectCheck" value="7"/> <label name="selectCheck">대구 전체</label></div>
                                <div> <input type="checkbox" id="selectCheck" value="8"/> <label name="selectCheck">대구 전체</label></div>
                                <div> <input type="checkbox" id="selectCheck" value="9"/> <label name="selectCheck">대구 전체</label></div>
                                <div> <input type="checkbox" id="selectCheck" value="1"/> <label name="selectCheck">대구 전체</label></div> -->
                            </div>
                        </div>
                    </div>
                    <!-- 애는 none 처리입니다.-->
                    <div class="fieldContainer">
                        <div class="fieldSelect">
                            <button type="button" data-code="404" data-bcode="youngup" class="subDepth_btn_405"><span class="txt">경영사무</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="sangdam" class="subDepth_btn_405"><span class="txt">영업상담</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="IT" class="subDepth_btn_405"><span class="txt">IT</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="Design" class="subDepth_btn_405"><span class="txt">디자인</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="Service" class="subDepth_btn_405"><span class="txt">서비스</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="Junmunjik" class="subDepth_btn_405"><span class="txt">전문직</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="Medical" class="subDepth_btn_405"><span class="txt">의료</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="Produce" class="subDepth_btn_405"><span class="txt">생산제조</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="" class="subDepth_btn_405"><span class="txt">교육</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="4" class="subDepth_btn_405"><span class="txt">경영사무</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="4" class="subDepth_btn_405"><span class="txt">영업상담</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="4" class="subDepth_btn_405"><span class="txt">IT</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="4" class="subDepth_btn_405"><span class="txt">디자인</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="4" class="subDepth_btn_405"><span class="txt">서비스</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="4" class="subDepth_btn_405"><span class="txt">전문직</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="4" class="subDepth_btn_405"><span class="txt">의료</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="4" class="subDepth_btn_405"><span class="txt">생산제조</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="4" class="subDepth_btn_405"><span class="txt">교육</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="4" class="subDepth_btn_405"><span class="txt">포항</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="4" class="subDepth_btn_405"><span class="txt">울산</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="4" class="subDepth_btn_405"><span class="txt">인도</span><span class="count">(3,442)</span></button>
                            <button type="button" data-code="404" data-bcode="4" class="subDepth_btn_405"><span class="txt">캬바레</span><span class="count">(3,442)</span></button>
        
                        </div>
                        <!-- 애는 none 처리입니다. 그리고 포지션 잡아줘야 합니다. 추가하면서-->
                        <div class="areaCheckbox">
                            <div class="area_btn">
                                <button type="button" class="btn_all_category" data-logging-flow="area">지역 펼쳐보기</button>
                                <button type="button" class="btn_reset">지역 초기화</button>
                            </div>
                            <!-- 동적 생성 중-->
                            <div class="fieldCheckbox_layout">
                            <!-- <div> <input type="checkbox" id="selectCheck" /> <label name="selectCheck">대구 전체</label></div>
                                <div> <input type="checkbox" id="selectCheck" /> <label name="selectCheck">대구 전체</label></div>
                                <div> <input type="checkbox" id="selectCheck" /> <label name="selectCheck">대구 전체</label></div>
                                <div> <input type="checkbox" id="selectCheck" /> <label name="selectCheck">대구 전체</label></div>
                                <div> <input type="checkbox" id="selectCheck" /> <label name="selectCheck">대구 전체</label></div>
                                <div> <input type="checkbox" id="selectCheck" /> <label name="selectCheck">대구 전체</label></div>
                                <div> <input type="checkbox" id="selectCheck" /> <label name="selectCheck">대구 전체</label></div>
                                <div> <input type="checkbox" id="selectCheck" /> <label name="selectCheck">대구 전체</label></div>
                                <div> <input type="checkbox" id="selectCheck" /> <label name="selectCheck">대구 전체</label></div>
                                <div> <input type="checkbox" id="selectCheck" /> <label name="selectCheck">대구 전체</label></div>
                                <div> <input type="checkbox" id="selectCheck" /> <label name="selectCheck">대구 전체</label></div>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="searchResultContainer">
                    <div class="searchResult"> <span>검색 조건을 설정해주세요</span>  </div>
                    <button type="submit" class="btnSubmit" value="검색">검색</button>
                </div>
                </div>
            </form>

            <div class="resultTitle"> 
	            <span>검색결과 :</span> 
	            <c:forEach var="total" items="${SearchText}">
	            	<c:forEach var="s" items="${total.value}">
	            		<c:out value="${s}"></c:out>
	            	</c:forEach>
				</c:forEach>
            </div>
       <c:choose>
		<c:when test="${!empty jobs}">
           	<c:forEach var="jobList" items="${jobs}" varStatus="status">
				<div class="contentContainer">
					<div class="companyName">
						<a href="/jobs/detailJob?wantedAuthNo=${jobList.wantedAuthNo}&Kind=4&${url}"><span>${jobList.corpNm}</span></a>
					</div>
					<div class="companyDetail">${jobList.wantedTitle}</div>
					<div class="companyDetail">${jobList.salTpNm}</div>
					<div class="companyUrl">${jobList.workRegion}</div>
					<div class="classification">
						<div class="recruitmentForm">${jobList.receiptCloseDt}</div>
<!-- 						<div class="salary"></div> -->
<!-- 						<div class="location">비워</div> -->
					</div>
				</div>
			</c:forEach>
			<div class="pagination">
			    <div class="pagination-container">
			        <div class="pagination-hover-overlay"></div>
					<c:if test="${page.currentPage > page.buttonLength}"> 
						<a href="/jobs/category.do?currentPage=${page.beginPage-1}&${url}" class="pagination-prev">
				            <span class="icon-pagination icon-pagination-prev">
				                <i class="icon material-icons">
				                    keyboard_arrow_left
				                </i>
				            </span>
				        </a>
					</c:if>
					<c:choose>
					    <c:when test="${page.endPage > page.totalPage}">
						    <c:forEach begin="${page.beginPage}" end="${page.totalPage}" varStatus="status">
								<c:if test="${page.currentPage == status.current}">
									<a style="border: solid 2px #3e5b79; box-sizing: border-box;" href="/jobs/category.do?currentPage=${status.current}&${url}" class="pagination-page-number">${status.current}</a>
								</c:if>
								<c:if test="${page.currentPage != status.current}">
									<a href="/jobs/category.do?currentPage=${status.current}&${url}" class="pagination-page-number">${status.current}</a>	
								</c:if>
							</c:forEach>
					    </c:when>
					    
					    <c:otherwise>
						    <c:forEach begin="${page.beginPage}" end="${page.endPage}" varStatus="status">
								<c:if test="${page.currentPage == status.current}">
									<a style="border: solid 2px #3e5b79; box-sizing: border-box;" href="/jobs/category.do?currentPage=${status.current}&${url}" class="pagination-page-number">${status.current}</a>
								</c:if>
								<c:if test="${page.currentPage != status.current}">
									<a href="/jobs/category.do?currentPage=${status.current}&${url}" class="pagination-page-number">${status.current}</a>	
								</c:if>
							</c:forEach>
							<a href="/jobs/category.do?currentPage=${page.endPage+1}&${url}" class="pagination-next">
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
			</c:when>
			<c:otherwise>
			<div style="width: 100%;display: flex; flex-direction:column; justify-content: center; align-items: center; margin-top: 100px; margin-bottom: 100px;">
				<h2>더 많은 채용공고를 검색해보세요</h2>
				<span>상세검색과 키워드 입력을 통하여 더 많고 자세한 채용공고를 검색하세요</span>
			</div>
			</c:otherwise>
			</c:choose>
			
			
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

        </div>
    </div>

    <script src="/Category/js/condition.js"></script>
    <script src="/Category/js/buttonSearch.js"></script>
    
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>

	<script src="/Default/pagination.js"></script>

    <!-- Nav js-->
    <script src="/Category/js/nav.js"></script>

    <!-- Magnific Popup Custom-->
    <script src="/Category/js//magnificpopup.js"></script>

    <!-- Social Login js-->
    <script src="/Category/js/socialLogin.js"></script>


    <!-- 서치 결과 보여주는 js-->
    <script src="/Category/js/r_searchResult.js"></script>

    <!--<script src="js/fieldButtonSearch.js"></script> !-->

</body>

</html>