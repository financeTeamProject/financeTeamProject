<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드상세보기-카드캡틴</title>
<style type="text/css">
	
	@font-face {
	
	    font-family: 'GmarketSansMedium';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
		
	@font-face {
	    font-family: 'Cafe24Ohsquare';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/Cafe24Ohsquare.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	
	body {
		margin: 0;
		top: 0;
	}
	/* 헤더  영역*/
	#header {
		width: 100%;
		height: 55px;
		border-style: solid;
	    border-width: 0 0 2px 0;
	    border-color: #0047AB;
	    font-family: 'GmarketSansMedium';
	    min-width: 1830px;
	}
	#headerWrap {
		width: 1600px;
		height: 100%;
		margin: 0 auto;
		display: flex;
	}
	#headerLeft {
		display: inline-block;
		width: 50%;
		height: 100%;
	    font-size: 16px;
		vertical-align: top;
	}
	#headerLogo {
	    display: inline-block;
	    vertical-align: top;
	    background-image: url("/cdcp/resources/images/main/logo.png");
	    background-repeat: no-repeat;
	    background-size: 120px;
	    width: 120px;
	    height: 40px;
	    cursor: pointer;
	    text-align: center;
	    margin-top: 10px;
	}
	#headerLeft .menu1 { 
		display: inline-block;
		width: 130px;
		height: 100%;
		line-height: 65px;
		color: #0047AB;
		text-align: center;
		letter-spacing: 2px;
		vertical-align: top;
		cursor: pointer;
	}	
	/* header_left 종료 */
	
	#headerRight {
		display: inline-block;
		width: 50%;
		height: 100%;
	    font-size: 18px;
		vertical-align: top;
	}
	#imgSearch {
	 	display: inline-block;
	    background-image: url("/cdcp/resources/images/main/search.png");
	    background-repeat: no-repeat;
	    background-size: 30px;
	    width: 30px;
	    height: 25px;
	    cursor: pointer;
	    text-align: center;
	    margin-left: 85%;
	}
	#imgLogin {
	 	display: inline-block;
	    background-image: url("/cdcp/resources/images/main/login1.png");
	    background-repeat: no-repeat;
	    background-size: 30px;
	    width: 30px;
	    height: 25px;
	    cursor: pointer;
	    margin-top: 15px;
	}
	/* header_right 종료 */
	/* 헤더 종료 */

	/*	내용 영역	*/	
	#content{
	width: 100%;
	height: 100%;
	}
		#contentMenu{
			width: 1600px;
			height: 100%;
			margin: 0 auto;
		}
			/* 소주제 영역 */
			#menuName{
				height: 50px;
				margin: 10px auto;
				margin-left: 10px;
				font-family: Cafe24Ohsquare;
				font-size: 30px;
				line-height: 60px;			
			}
			/* 혜택 상위 영역 */
			#topArea{
				width: 100%;
				background-color: #f2f2f2;
				border-radius: 50px;
				padding: 20px 0px;
				margin: 20px 0;
			}
				/* 왼쪽이미지 영역 */
				#mainImg{
					display: inline-block;
					vertical-align: top;
					width: 360px;
					height: 220px;
					margin-left: 350px;
				}
					.big_img{	
						width: 350px;
						height: 200px;
						border-radius: 20px;
						box-shadow: 0px 5px 10px 1px gray;
					}
				/* 오른쪽 혜택안내 영역 */	
				#cardBnf{
					display: inline-block;
					vertical-align: top;
					width:650px;
					height: 220px;
					text-align: center;
				}
					/* 해당카드 이름 영역 */
					#nameSct{
						width: 100%;
						height: 100px;
						text-align: center;
						}
							#cardName{
							height: 60px;
							font-size: 35px;
							line-height: 80px;
							font-family: Cafe24Ohsquare;
							}
							#cardCmp{
							height: 40px;
							font-size: 20px;
							font-family: GmarketSansMedium;
							}
					/* 혜택 전체 박스 영역 */		
					#imgSct{
					width: 100%;
					height: 200px;
					margin: 10px 0;
					}
						/* 각 혜택 박스 */
						.bnf_sct{
							display: inline-block;
							vertical-align: top;
							width: 200px;
							height: inherit;
						}
							.bnf_name{	/* 혜택내용 */
								text-align: center;
								width: 100%;
								height: 45px;
								font-size: 20px;
								font-family: GmarketSansMedium;
								font-weight: bold;
							}
							.bnf_box{	
								width: 100%;
								height: 50px;
								text-align: center;
							}
								.bnf_dt{	 /* %표시 */
									display: inline-block;
									vertical-align: top;
									text-align: right;
									width: 70px;
									height: inherit;
									font-size: 20px;
									font-family: GmarketSansMedium;
									font-weight: bold;
								}
								.bnf_small{	/* 할인 */
									display: inline-block;
									vertical-align: top;
									text-align: left;
									width: 60px;
									height: inherit;
									font-size: 15px;
									font-family: GmarketSansMedium;
									line-height: 30px;
								}
					/* 버튼 영역 */		
					#btnSct{ 
						width: 100%;
						height: 80px;
						text-align: center;
					}
						#btnCmp{
						width: 250px;
						height: 60px;
						font-size: 25px;
						color: white;
						background-color: #0047ab;
						padding: 10px;
						border-radius: 10px;
						font-family: GmarketSansMedium;
						font-weight: bold;
					}
						#btnCmp:hover{
							cursor: pointer;
							opacity: 0.6;
						}
			/* 혜택 하위 영역 */
			#botArea{
				width: 100%;
				background-color: #f2f2f2;
				border-radius: 50px;
				padding: 20px 0px;
				margin: 20px 0;
			}	
				/* 주요 혜택 글씨 영역 */
				#bnfTxt{
					height: 50px;
					margin: 10px auto;
					margin-left: 10px;
					font-family: Cafe24Ohsquare;
					font-size: 30px;
					line-height: 60px;
				}
				/* 혜택 박스 틀 */
				.bot_box{  
					margin: 10px auto;
					width: 800px;
					height: 100px;
					background-color: white;
				}
					.bnf_icon{
						display: inline-block;
						vertical-align: top;
						text-align: center;
						width: 150px;
						height: inherit;
					}
						.icon_img{
							width: 80%;
							height: 100%;
							padding: 0px 10px;
						}
					.box_txt{
						display: inline-block;
						vertical-align: top;
						text-align: left;
						width: 515px;
						height: inherit;
						font-family: GmarketSansMedium;
					}
						.name_card{
							margin-bottom: 0;
							text-align: left;
						}
						.cmp_card{
							margin-top: 0;
						}
					.open_view{
						display: inline-block;
						vertical-align: top;
						width: 15%;
						height: inherit;
						cursor: pointer;
					}
						.arrow_down{
							width: 50%;
							height: 50%;
							margin: 20px 30px;
						}				
				/* 리뷰 영역 */	
				#review_name{
					height: 50px;
					margin: 10px auto;
					font-family: Cafe24Ohsquare;
					font-size: 30px;
					line-height: 60px;
				}	
				.review_area{
					display: flex;
					justify-content: space-around;
					width: 100%;
					background-color: #f2f2f2;
					border-radius: 50px;
					padding: 20px 0px;
				}		
					/* 사용자 평점 영역 */
					.star_area{
						display: inline-block;
						vertical-align: top;
					}
						h2 {
						font-size:20px;
						text-align: center;
						font-family: GmarketSansMedium;
						}
						.star-rating {
							width:304px; 
						}
						.star-rating,.star-rating span {
							display:inline-block; 
							height:55px; 
							overflow:hidden; 
							background-image: url("resources/images/ranking/background/star.png");
							background-repeat: no-repeat;
							}
						.star-rating span{
						background-position:left bottom; 
						line-height:0; 
						vertical-align:top; 
						}
					/* 전체 리뷰 수 영역 */	
					.review_total{
						display: inline-block;
						vertical-align: top;
						
					}
						.review_img{
							display: inline-block;
							vertical-align: top;
							width: 40px;
							height: 40px;
							background-image: url("resources/images/ranking/icon/review.png");
							background-repeat: no-repeat;
							background-size: 40px;
							margin: 0 10px;
							
						}
						.review_cnt{
							display: inline-block;
							vertical-align: top;
							font-family: GmarketSansMedium;
							font-size: 40px;
							font-weight: bold;
							text-align: center;
							margin: 0 10px;
						}
					.click_total{
						display: inline-block;
						vertical-align: top;
						
					}
						.click_img{
							display: inline-block;
							vertical-align: top;
							width: 40px;
							height: 40px;
							background-image: url("resources/images/ranking/icon/click.png");
							background-repeat: no-repeat;
							background-size: 40px;
							margin: 0 10px;
							
						}
						.click_cnt{
							display: inline-block;
							vertical-align: top;
							font-family: GmarketSansMedium;
							font-size: 40px;
							font-weight: bold;
							text-align: center;
							margin: 0 10px;
						}
					/* 리뷰 작성 영역 */
					.review_write_area{
						width: 100%;
						height: 500px; 
					}

	/* 풋터 영역 */
	#footer {
	    width: 100%;
	  	height: 100px;
		border-style: solid;
	    border-width: 2px 0 0 0;
	    border-color: #0047AB;
	    font-family: 'Cafe24Ohsquare';
		min-width: 1830px;	
			
	}
	#footerMenu {
		width: 80%;
	    height: inherit;
	    margin: 0 auto;
	    color: #0047AB;
	    text-align: center;
	    font-family: GmarketSansMedium;
	    font-size: 12px;
	}	
	#footerLogo {
	    display: inline-block;
	    vertical-align: top;
	    background-image: url("/cdcp/resources/images/main/logo.png");
	    background-repeat: no-repeat;
	    background-size: 120px;
	    width: 120px;
	    height: 40px;
	    cursor: pointer;
	    text-align: center;
	    margin-top: 10px;
	}
		/* 풋터 종료 */
</style>
<script type="text/javascript"
			src = "resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* 카드순위 페이지 이동 */
		$("#ranking").on("click", function(){
			location.href = "card_rank";
		}); // ranking click end
		/* 카드검색/비교 페이지 이동 */
		 $("#search").on("click", function(){
			location.href = "search";
		});// search click end
		/* 컨텐츠 페이지 이동 */
		$("#contents").on("click", function(){
			location.href = "content";
		});// contents click end
		
		/* 메인페이지 이동 */
		$("#headerLogo").on("click", function(){
			location.href = "/cdcp";
		}); // headerLogo click end
	}); // document ready end
</script>
</head>
<body>
<!-- 헤더영역 -->
	<div id="header">
		<div id="headerWrap">
			<div id="headerLeft">
				<div id="headerLogo"></div>
				<div class="menu1" id="ranking">카드순위</div>
				<div class="menu1" id="search">카드검색/비교</div>
				<div class="menu1" id="contents">컨텐츠</div>
			</div>
			<div id="headerRight">
				<div id="imgSearch"></div>
				<div id="imgLogin"></div>
			</div>
		</div>
	</div>
<!-- 내용 영역 -->	
	<div id="content">
		<div class=side_area></div>	
		<div id="contentMenu">
			<div id="menuName">카드 혜택 안내</div>
			<!-- 상위 내용 영역 -->
			<div id="topArea">
				<div id="nameSct">
						<div id="cardName">톡톡 with 카드</div>
						<div id="cardCmp">KB국민카드</div>
				</div>
				<div id="mainImg">
					<img alt="혜택카드" src="resources/images/ranking/card/credit/kb/kb_toktokwith.png" width="350px" height="200px" class="big_img"/>
				</div>
				<!-- 혜택  영역 -->
				<div id="cardBnf">
					<div id="imgSct">
						<!-- 카페 혜택 -->
						<div class="bnf_sct">
							<img alt="카페" src="resources/images/ranking/icon/benefit/icon_cafe_blue.png" width="100px" height="100px"/>
							<div class="bnf_dsc">
								<div class="bnf_name">스타벅스</div>
								<div class="bnf_box">
									<div class="bnf_dt">50%</div>
									<div class="bnf_small">할인</div>
								</div>
							</div>
						</div>
						<!-- 간편결제 혜택 -->
						<div class="bnf_sct">
							<img alt="간편결제" src="resources/images/ranking/icon/benefit/icon_pay_blue.png" width="100px" height="100px"/>
							<div class="bnf_dsc">
								<div class="bnf_name">온라인 간편결제</div>
								<div class="bnf_box">
									<div class="bnf_dt">10%</div>
									<div class="bnf_small">할인</div>
								</div>
							</div>
						</div>
						<!-- 구독 혜택 -->
						<div class="bnf_sct">
							<img alt="구독" src="resources/images/ranking/icon/benefit/icon_subscribe_blue.png" width="100px" height="100px"/>
							<div class="bnf_dsc">
								<div class="bnf_name">구독</div>
								<div class="bnf_box">
									<div class="bnf_dt">20%</div>
									<div class="bnf_small">할인</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="btnSct">
						<input type="button" value="카드 신청" id="btnCmp" />
				</div>
			</div>
			<!-- 하위 내용 영역 -->
			<div id="bnfTxt">주요 혜택</div>
			<div id="botArea">
				<!-- 카페 혜택 -->
				<div class="bot_box">
					<div class="bnf_icon">
						<img alt="혜택아이콘" src="resources/images/ranking/icon/benefit/icon_cafe_blue.png" class="icon_img"/> 
					</div>
					<div class="box_txt"> 
						<h2 class="name_card">카페</h2>
						<h4 class="cmp_card">스타벅스 50%할인</h4>
					</div>
					<div class="open_view">
						<img alt="펼쳐보기" src="resources/images/ranking/icon/arrow_down_gray.png" class="arrow_down"/>
					</div>
				</div>
				<!-- 구독 혜택 -->
				<div class="bot_box">	
					<div class="bnf_icon">
						<img alt="혜택아이콘" src="resources/images/ranking/icon/benefit/icon_subscribe_blue.png" class="icon_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">디지털 구독</h2>
						<h4 class="cmp_card">구독(YouTube premium,넷플릭스,웨이브,티빙)20% 할인</h4>
					</div>
					<div class="open_view">
						<img alt="펼쳐보기" src="resources/images/ranking/icon/arrow_down_gray.png" class="arrow_down"/>
					</div>
				</div>
				<!-- 간편결제 혜택 -->
				<div class="bot_box">	
					<div class="bnf_icon">
						<img alt="혜택아이콘" src="resources/images/ranking/icon/benefit/icon_pay_blue.png" class="icon_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">간편결제</h2>
						<h4 class="cmp_card">온라인 간편결제 10% 할인</h4>
					</div>
					<div class="open_view">
						<img alt="펼쳐보기" src="resources/images/ranking/icon/arrow_down_gray.png" class="arrow_down"/>
					</div>
				</div>
				<!-- 유의사항 -->
				<div class="bot_box">	
					<div class="bnf_icon">
						<img alt="유의사항" src="resources/images/ranking/icon/benefit/icon_note_bule.png" class="icon_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">유의사항</h2>
						<h4 class="cmp_card">꼭 확인하세요!</h4>
					</div>
					<div class="open_view">
						<img alt="펼쳐보기" src="resources/images/ranking/icon/arrow_down_gray.png" class="arrow_down"/>
					</div>
				</div>
			</div>
			<!-- 리뷰 영역 -->
			<div id="review_name">카드 리뷰</div>
			<div class="review_area">
				<!-- 사용자 평점 영역 -->
				<div class="star_area">
					<h2>사용자 총 평점</h2>
					<div class="star-rating">
						<span style ="width:30%"></span>
					</div>
				</div>
				<!-- 전체 리뷰 수 영역 -->
				<div class="review_total">
					<h2>전체 리뷰수</h2>
					<div class="review_img"></div>
					<div class="review_cnt">100건</div>
				</div>
				<!-- 전체 조회수 영역 -->
				<div class="click_total">
					<h2>카드 조회수</h2>
					<div class="click_img"></div>
					<div class="click_cnt">5건</div>
				</div>
			</div>
			<!-- 리뷰 작성 영역 -->
			<hr style="border: 2px dashed black"/>
			<div class="review_write_area">
					
			</div>
		</div>
		<div class=side_area></div>	
<!-- 풋터영역 -->
	<div id="footer">
		<div id="footerMenu">
			<div id="footerLogo"></div>
			<div>서울시 금천구 가산디지털2로 115,509호,811호,1109-1호(가산동,대륭테크노타운3차) 금융조 조장 : 주건정</div>
			<div>Copyright © 2021-2031 CardCaptain All Rights Reserved.</div>
		</div>
	</div>
	</div>
</body>
</html>