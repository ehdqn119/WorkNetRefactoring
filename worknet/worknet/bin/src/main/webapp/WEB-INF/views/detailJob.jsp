<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WorkNet:상세조회</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <link rel="stylesheet" href="/DetailJob/css/search.css">
    <link rel="stylesheet" href="/DetailJob/css/font.css">
    <link rel="stylesheet" href="/DetailJob/css/areaSearchBox.css">
    <link rel="stylesheet" href="/DetailJob/css/fieldSearchBox.css">
    <link rel="stylesheet" href="/DetailJob/css/animation.css">
    <link rel="stylesheet" href="/DetailJob/css/logo.css">
    <link rel="stylesheet" href="/DetailJob/css/detailJob.css">
    
    <!-- Rating css-->
    <link rel="stylesheet" href="/DetailJob/css/rating.css">


    <link rel="stylesheet" href="/DetailJob/css/tabui.css">
    
    
    <!--  리커맨드 컨테이너 추가 2020-09-23 -->
    <link rel="stylesheet" href="/DetailJob/css/recommendContainer.css">
    <link rel="stylesheet" href="/DetailJob/css/recommendContainer.css">

    <!-- Magnific Popup css-->
    <link rel="stylesheet" href="/DetailJob/css/magnificPopup.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
	
	
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
                <!-- <div style="class="sideMeenuLayoutRow"><i class="far fa-comment-dots" area-hidden="true"></i></i><<span>>Talk</span></i></div> kakaoapi -->
                <div class="sideMeenuLayoutRow" id="magnificPopup"><i class="fas fa-question-circle"></i><span>Guide</span></div>
                <div class="sideMeenuLayoutRow"><i class="fas fa-plus-circle newPage"></i><span class="newPage">New</span></i></div> <!-- New brower -->
<!--                 <div class="sideMeenuLayoutRow"><<span>>Settings</span></i></div> -->
<!--                 <hr  class="hrBar" width = "221px" color = "#5492FA" size = "2"> -->
<!--                 <div class="sideMeenuLayoutRow"><<span>>Help</span></i></div> -->
<!--                 <div class="sideMeenuLayoutRow"><<span>>Send Feedback</span></i></div> -->
<!--                 <div class="sideMeenuLayoutRow"><<span>>Privacy</span></i></div> -->
<!--                 <div class="sideMeenuLayoutRow"><<span>>Terms and Conditions</span></i></div> -->
            </div>
            <!-- <div id="sideMenuLayout">
                <div class="sideMeenuLayoutRow"><a href="search.html"><i class="fas fa-home" area-hidden="true"></i><<span>>Home</span></a></div>
                <div class="sideMeenuLayoutRow"><a href="#"><i class="fab fa-hotjar" area-hidden="true"></i><<span>>Hot</span></a></div>
                <div class="sideMeenuLayoutRow"><a href="#"><i class="fas fa-redo-alt" area-hidden="true"></i><<span>>Refresh</span></a></div> 
                <div class="sideMeenuLayoutRow"><i class="far fa-comment-dots" area-hidden="true"></i></i><<span>>Talk</span></i></div> 
                <div class="sideMeenuLayoutRow" id="magnificPopup"><i class="fas fa-plus-circle"></i><<span>>Guide</span></i></div> 
                <hr width = "221px" color = "#5492FA" size = "2">
                <div class="sideMeenuLayoutRow" ><i class="fas fa-plus-circle"></i><<span>>New</span></i></div> 
                <div
                    id="kakao-talk-channel-chat-button"
                    data-channel-public-id="_xdmWixb/chat"
                    data-title="consult"
                    data-size="small"
                    data-color="mono"
                    data-shape="pc"
                    data-support-multiple-densities="true"
                    ></div>
                <div class="sideMeenuLayoutRow"><<span>>Settings</span></i></div>
                <hr width = "221px" color = "#5492FA" size = "2">
                <div class="sideMeenuLayoutRow"><<span>>Help</span></i></div>
                <div class="sideMeenuLayoutRow"><<span>>Send Feedback</span></i></div>
                <div class="sideMeenuLayoutRow"><<span>>Privacy</span></i></div>
                <div class="sideMeenuLayoutRow"><<span>>Terms and Conditions</span></i></div>
            </div> -->
        </div>
        <div class="header">
            <div id="paddingBox">
                <div id="rheader">
                    <div id="login">
                    <div id ="searchContent"><%= session.getAttribute("name")%></div>
                    <a href="/logout"><div id ="logout"><i class="fas fa-sign-out-alt"></i>로그아웃</div></a>
                </div>
                </div>
            </div>
<!-- 종단 -->

			<div class="devideMain">
	            <div id="exTab1" class="container">	
	                  <ul class="nav nav-pills">
	                        <li class="active">
	                              <a href="#1a" data-toggle="tab">채용정보</a>
	                        </li>
	                        <li class=""><a href="#2a" data-toggle="tab">기업정보</a>
	                        </li>
	                        <li class=""><a href="#3a" data-toggle="tab">우대사항</a>
	                        </li>
	                        <li class=""><a href="#4a" data-toggle="tab">복리후생</a>
	                        </li>
	                        <li class=""><a href="#5a" data-toggle="tab">접수 방법 및 안내</a>
	                        </li>
	                  </ul>
	                  
	                        <div class="tab-content clearfix">
	                              <div class="tab-pane active" id="1a">
	                                    <div class="tabContent">
	                                          <div class="isolationContainer">
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>구인제목</span></div>
	                                                    <p><c:out value="${job.wantedTitle}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>모집집종</span></div>
	                                                    <p><c:out value="${job.jobsNm}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>직무내용</span></div>
	                                                    <p><c:out value="${job.jobCont}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>고용형태</span></div>
	                                                    <p><c:out value="${job.empTpNm}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>모집인원</span></div>
	                                                    <p><c:out value="${job.collectPsncnt}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>임금조건</span></div>
	                                                    <p><c:out value="${job.salTpNm}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>경력조건</span></div>
	                                                    <p><c:out value="${job.enterTpNm}"/></p>
	                                                </div>
	                        
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>학력</span></div>
	                                                    <p><c:out value="${job.eduNm}"/></p>
	                                                </div>
	                        
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>근무시간/형태</span></div>
	                                                    <p><c:out value="${job.workdayWorkhrCont}"/></p>
	                                                </div>
	
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>근무예정지</span></div>
	                                                    <p><c:out value="${job.workRegion}"/></p>
	                                                </div>
	                                            </div>
	
	                                    </div>
	                              </div>
	                              <div class="tab-pane" id="2a">
	                                    <div class="tabContent">
	                                          <div class="isolationContainer">
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>회사명</span></div>
	                                                    <p><c:out value="${job.corpNm}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>대표자명</span></div>
	                                                    <p><c:out value="${job.reperNm}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>근로자수</span></div>
	                                                    <p><c:out value="${job.totPsncnt}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>연매출액</span></div>
	                                                    <p><c:out value="${job.yrSalesAmt}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>업종</span></div>
	                                                    <p><c:out value="${job.indTpCdNm}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>주요사업내용</span></div>
	                                                    <p><c:out value="${job.busiCont}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>회사규모</span></div>
	                                                    <p><c:out value="${job.busiSize}"/></p>
	                                                </div>
	                        
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>회사홈페이지</span></div>
	                                                    <p><a href="${job.homePg}"><c:out value="${job.homePg}"/></a></p>
	                                                </div>
	                        
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>회사주소</span></div>
	                                                    <p><c:out value="${job.corpAddr}"/></p>
	                                                </div>
	                                           
	                                            </div>
	                                    </div>
	                              </div>
	                              <div class="tab-pane" id="3a">
	                                    <div class="tabContent">
	                                          <div class="isolationContainer">
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>전공</span></div>
	                                                       <p><c:out value="${job.major}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>외국어</span></div>
	                                                       <p><c:out value="${job.forLang}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>자격면허</span></div>
	                                                       <p><c:out value="${job.certificate}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>우대조건</span></div>
	                                                       <p><c:out value="${job.pfCond}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>컴퓨터활용능력</span></div>
	                                                       <p><c:out value="${job.compAbl}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>기타우대조건</span></div>
	                                                       <p><c:out value="${job.etcPfCond}"/></p>
	                                                </div>
	                                                
	                         
	                                            </div>
	                                    </div>
	                              </div>
	                              <div class="tab-pane" id="4a">
	                                    <div class="tabContent">
	                                          <div class="isolationContainer">
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>연금4대 보험</span></div>
	                                                       <p><c:out value="${job.fourIns}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>퇴직금</span></div>
	                                                       <p><c:out value="${job.retirepay}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>기타복리후생</span></div>
	                                                       <p><c:out value="${job.etcWelfare}"/></p>
	                                                </div>
	                                            </div>
	                                    </div>
	                              </div>
	
	                              <div class="tab-pane" id="5a">
	                                    <div class="tabContent">
	                                          <div class="isolationContainer">
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>전형방법</span></div>
	                                                         <p><c:out value="${job.selMthd}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>접수방법</span></div>
	                                                         <p><c:out value="${job.rcptMthd}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>제출서류준비물</span></div>
	                                                         <p><c:out value="${job.submitDoc}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>채용부서</span></div>
	                                                         <p><c:out value="${job.empChargerDpt}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>전화번호</span></div>
	                                                         <p><c:out value="${job.contactTelno}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>팩스번호</span></div>
	                                                         <p><c:out value="${job.chargerFaxNo}"/></p>
	                                                </div>
	                                                <div class="columnInformationContainer">
	                                                    <div class="tableTitle"><span>기타안내</span></div>
	                                                    <p><c:out value="${job.etcHopeCont}"/></p>
	                                                </div>
	                                            </div>
	                                    </div>
	                              </div>
	                        </div>
	            
	
	                <div class="isolationContainer2">   
	                    <div class='head text-center'>
	                        <h2 class="ratingTitle">원하는 결과를 찾으셨나요?</h2>
	                    <p> 평점을 제출해주시면, 더욱 좋은 서비스로 보답해드릴 수 있습니다!</p>
	                    </div>
	
	                <div class='rating-widget'>
	                    
	                    <!-- Rating Stars Box -->
	                    <div class='rating-stars text-center'>
	                        <ul id='stars'>
	                        <li class='star' title='Poor' data-value='1'>
	                            <i class='fa fa-star fa-fw'></i>
	                        </li>
	                        <li class='star' title='Fair' data-value='2'>
	                            <i class='fa fa-star fa-fw'></i>
	                        </li>
	                        <li class='star' title='Good' data-value='3'>
	                            <i class='fa fa-star fa-fw'></i>
	                        </li>
	                        <li class='star' title='Excellent' data-value='4'>
	                            <i class='fa fa-star fa-fw'></i>
	                        </li>
	                        <li class='star' title='WOW!!!' data-value='5'>
	                            <i class='fa fa-star fa-fw'></i>
	                        </li>
	                        </ul>
	                    </div>
	                    
	                    <div class='success-box'>
	                        <div class='clearfix'></div>
	                        <img alt='tick image' width='32' src='data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0MjYuNjY3IDQyNi42NjciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQyNi42NjcgNDI2LjY2NzsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+CjxwYXRoIHN0eWxlPSJmaWxsOiM2QUMyNTk7IiBkPSJNMjEzLjMzMywwQzk1LjUxOCwwLDAsOTUuNTE0LDAsMjEzLjMzM3M5NS41MTgsMjEzLjMzMywyMTMuMzMzLDIxMy4zMzMgIGMxMTcuODI4LDAsMjEzLjMzMy05NS41MTQsMjEzLjMzMy0yMTMuMzMzUzMzMS4xNTcsMCwyMTMuMzMzLDB6IE0xNzQuMTk5LDMyMi45MThsLTkzLjkzNS05My45MzFsMzEuMzA5LTMxLjMwOWw2Mi42MjYsNjIuNjIyICBsMTQwLjg5NC0xNDAuODk4bDMxLjMwOSwzMS4zMDlMMTc0LjE5OSwzMjIuOTE4eiIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K'/>
	                        <div class='text-message'> <span id="evaluation"> </span> </div>
	                        <div class='clearfix'></div>
	                    </div>
	                    <div class="submitContainer">
	                        <button class="ratingSubmit" type="submit"> 제출 </button>
	                    </div>
	                </div>
	                <!-- 별점 -->
	                </div>
	            
	
	<!-- 종단 -->
	
	            <footer id="footer">
	                <div class="inner">
	                    <ul class="copyright">
	                        <li class="footerFirstLi">©
	                            Team Sebm
	                        </li>
	                    </ul>
	                    <div class="companyContent">
	                        <li>
	                            이진훈 대구광역시 동구 큰고개로 35-2 1층<br>
	                            투자기관 : 계명대학교 | 제작 멤버 : 정진욱, 이상민, 정의훈<br>
	                            2020-09-10 <br>
	                        </li>
	                    </div>
	                    <div class="icons">
	                        <ul class="soc">
	                            <li><a class="icon-15 instagram" href="#" title="Instagram">
	                                <div class="ir">
	                                <svg viewBox="0 0 512 512" preserveAspectRatio="xMidYMid meet">
	                                    <path d="M256 109.3c47.8 0 53.4 0.2 72.3 1 17.4 0.8 26.9 3.7 33.2 6.2 8.4 3.2 14.3 7.1 20.6 13.4 6.3 6.3 10.1 12.2 13.4 20.6 2.5 6.3 5.4 15.8 6.2 33.2 0.9 18.9 1 24.5 1 72.3s-0.2 53.4-1 72.3c-0.8 17.4-3.7 26.9-6.2 33.2 -3.2 8.4-7.1 14.3-13.4 20.6 -6.3 6.3-12.2 10.1-20.6 13.4 -6.3 2.5-15.8 5.4-33.2 6.2 -18.9 0.9-24.5 1-72.3 1s-53.4-0.2-72.3-1c-17.4-0.8-26.9-3.7-33.2-6.2 -8.4-3.2-14.3-7.1-20.6-13.4 -6.3-6.3-10.1-12.2-13.4-20.6 -2.5-6.3-5.4-15.8-6.2-33.2 -0.9-18.9-1-24.5-1-72.3s0.2-53.4 1-72.3c0.8-17.4 3.7-26.9 6.2-33.2 3.2-8.4 7.1-14.3 13.4-20.6 6.3-6.3 12.2-10.1 20.6-13.4 6.3-2.5 15.8-5.4 33.2-6.2C202.6 109.5 208.2 109.3 256 109.3M256 77.1c-48.6 0-54.7 0.2-73.8 1.1 -19 0.9-32.1 3.9-43.4 8.3 -11.8 4.6-21.7 10.7-31.7 20.6 -9.9 9.9-16.1 19.9-20.6 31.7 -4.4 11.4-7.4 24.4-8.3 43.4 -0.9 19.1-1.1 25.2-1.1 73.8 0 48.6 0.2 54.7 1.1 73.8 0.9 19 3.9 32.1 8.3 43.4 4.6 11.8 10.7 21.7 20.6 31.7 9.9 9.9 19.9 16.1 31.7 20.6 11.4 4.4 24.4 7.4 43.4 8.3 19.1 0.9 25.2 1.1 73.8 1.1s54.7-0.2 73.8-1.1c19-0.9 32.1-3.9 43.4-8.3 11.8-4.6 21.7-10.7 31.7-20.6 9.9-9.9 16.1-19.9 20.6-31.7 4.4-11.4 7.4-24.4 8.3-43.4 0.9-19.1 1.1-25.2 1.1-73.8s-0.2-54.7-1.1-73.8c-0.9-19-3.9-32.1-8.3-43.4 -4.6-11.8-10.7-21.7-20.6-31.7 -9.9-9.9-19.9-16.1-31.7-20.6 -11.4-4.4-24.4-7.4-43.4-8.3C310.7 77.3 304.6 77.1 256 77.1L256 77.1z"></path>
	                                    <path d="M256 164.1c-50.7 0-91.9 41.1-91.9 91.9s41.1 91.9 91.9 91.9 91.9-41.1 91.9-91.9S306.7 164.1 256 164.1zM256 315.6c-32.9 0-59.6-26.7-59.6-59.6s26.7-59.6 59.6-59.6 59.6 26.7 59.6 59.6S288.9 315.6 256 315.6z"></path>
	                                    <circle cx="351.5" cy="160.5" r="21.5"></circle>
	                                </svg>
	                                </div></a></li>
	                            <li><a class="icon-26 twitter" href="#" title="Twitter">
	                                <div class="ir">
	                                    <svg viewBox="0 0 512 512" preserveAspectRatio="xMidYMid meet">
	                                    <path d="M419.6 168.6c-11.7 5.2-24.2 8.7-37.4 10.2 13.4-8.1 23.8-20.8 28.6-36 -12.6 7.5-26.5 12.9-41.3 15.8 -11.9-12.6-28.8-20.6-47.5-20.6 -42 0-72.9 39.2-63.4 79.9 -54.1-2.7-102.1-28.6-134.2-68 -17 29.2-8.8 67.5 20.1 86.9 -10.7-0.3-20.7-3.3-29.5-8.1 -0.7 30.2 20.9 58.4 52.2 64.6 -9.2 2.5-19.2 3.1-29.4 1.1 8.3 25.9 32.3 44.7 60.8 45.2 -27.4 21.4-61.8 31-96.4 27 28.8 18.5 63 29.2 99.8 29.2 120.8 0 189.1-102.1 185-193.6C399.9 193.1 410.9 181.7 419.6 168.6z"></path>
	                                    </svg>
	                                </div></a></li>
	                            <li><a class="icon-10 facebook" href="#" title="Facebook">
	                                <div class="ir">
	                                <svg viewBox="0 0 512 512" preserveAspectRatio="xMidYMid meet">
	                                    <path d="M211.9 197.4h-36.7v59.9h36.7V433.1h70.5V256.5h49.2l5.2-59.1h-54.4c0 0 0-22.1 0-33.7 0-13.9 2.8-19.5 16.3-19.5 10.9 0 38.2 0 38.2 0V82.9c0 0-40.2 0-48.8 0 -52.5 0-76.1 23.1-76.1 67.3C211.9 188.8 211.9 197.4 211.9 197.4z"></path>
	                                </svg>
	                                </div></a></li>
	                            <li><a class="icon-13 github" href="#" title="GitHub">
	                                <div class="ir">
	                                    <svg viewBox="0 0 512 512" preserveAspectRatio="xMidYMid meet">
	                                    <path d="M256 70.7c-102.6 0-185.9 83.2-185.9 185.9 0 82.1 53.3 151.8 127.1 176.4 9.3 1.7 12.3-4 12.3-8.9V389.4c-51.7 11.3-62.5-21.9-62.5-21.9 -8.4-21.5-20.6-27.2-20.6-27.2 -16.9-11.5 1.3-11.3 1.3-11.3 18.7 1.3 28.5 19.2 28.5 19.2 16.6 28.4 43.5 20.2 54.1 15.4 1.7-12 6.5-20.2 11.8-24.9 -41.3-4.7-84.7-20.6-84.7-91.9 0-20.3 7.3-36.9 19.2-49.9 -1.9-4.7-8.3-23.6 1.8-49.2 0 0 15.6-5 51.1 19.1 14.8-4.1 30.7-6.2 46.5-6.3 15.8 0.1 31.7 2.1 46.6 6.3 35.5-24 51.1-19.1 51.1-19.1 10.1 25.6 3.8 44.5 1.8 49.2 11.9 13 19.1 29.6 19.1 49.9 0 71.4-43.5 87.1-84.9 91.7 6.7 5.8 12.8 17.1 12.8 34.4 0 24.9 0 44.9 0 51 0 4.9 3 10.7 12.4 8.9 73.8-24.6 127-94.3 127-176.4C441.9 153.9 358.6 70.7 256 70.7z"></path>
	                                    </svg>
	                                </div></a></li>
	                        </ul>
	                    </div>
	                </div>
	            </footer>
	          </div>
	          
	          
	          <div class="recommendContainer">
	          	<h1 class="recommendTitle"> 추천 채용 공고</h1>
	          	<div class="recommendLayoutContainer">
			        <div class="slider-wrap">
			            <div id="card-slider" class="slider">
			            <div class="slider-item">
			                <div class="animation-card_image">
			                	<!--  이미지 경로 떔빵 2020-09-23 -->
			                    <img class="comandSlider__item_photo" src="/DetailJob/img/majorCompany.svg" alt="">
			                </div>
			                <div class="animation-card_content">
			                    <h4 class="animation-card_content_title title-2"> 삼성전자(3)</h4>
			                    <p class="animation-card_content_description p-2">생산직 모집</p>
			                    <p class="animation-card_content_city">대구광역시 동구 큰고개로 35-2</p>
			                </div>
			            </div>
			            <div class="slider-item">
			                <div class="animation-card_image">
			                    <img class="comandSlider__item_photo" src="/DetailJob/img/midSizeCompany.svg" alt="">
			                </div>
			                <div class="animation-card_content">
			                    <h4 class="animation-card_content_title title-2">고려아연(4)</h4>
			                    <p class="animation-card_content_description p-2">생산직 모집</p>
			                    <p class="animation-card_content_city">경상북도 경산시  22-1</p>
			                </div>
			            </div>
			            <div class="slider-item">
			                <div class="animation-card_image">
			                    <img class="comandSlider__item_photo" src="/DetailJob/img/smallEnterprise.svg" alt="">
			                </div>
			                <div class="animation-card_content">
			                    <h4 class="animation-card_content_title title-2">세원IT(1)</h4>
			                    <p class="animation-card_content_description p-2">개발자 모집</p>
			                    <p class="animation-card_content_city">동대구역 5번 출구</p>
			                </div>
			            </div>
			            <div class="slider-item">
			                <div class="animation-card_image">
			                    <img class="comandSlider__item_photo" src="/DetailJob/img/otherCompany.svg" alt="">
			                </div>
			                <div class="animation-card_content">
			                    <h4 class="animation-card_content_title title-2">세영건설(2)</h4>
			                    <p class="animation-card_content_description p-2">샷시, 미장 기술자 모집</p>
			                    <p class="animation-card_content_city"> 경상북도 미장시 </p>
			                </div>
			            </div>
			
			            <!-- 5개 입니다. -->
			
			        	</div>
			        </div>  
    			</div>
	          	
	          	
	          </div>
         </div>
        </div>
       </div>
      </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="/DetailJob/js/detaiInformation.js"></script>
    <!-- Nav js-->
    <script src="/DetailJob/js/nav.js"></script>

    <!-- Magnific Popup Custom-->
    <script src="/DetailJob/js/magnificpopup.js"></script>

    <!-- Social Login js-->
    <script src="/DetailJob/js/socialLogin.js"></script>


    <!-- Star Rating-->
    <script src="/DetailJob/js/rating.js"></script>
	<script src="/DetailJob/js/ratingAjax.js"></script>

    <script src="/DetailJob/js/tabui.js"></script>

    <!--<script src="js/fieldButtonSearch.js"></script> !-->
    
    
    <!--  2020-09-23 gsap js 추가 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js"></script>
    <script src="/DetailJob/js/recommendAnimation.js"></script>
     
     
</body>
    
</body>
</html>