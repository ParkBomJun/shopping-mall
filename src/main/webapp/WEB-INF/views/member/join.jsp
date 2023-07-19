<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/member/join.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="cotn_principal">
<div class="cont_centrar">

  <div class="cont_login">
<div class="cont_info_log_sign_up">
      <div class="col_md_login">
<div class="cont_ba_opcitiy">
        
        <h2>로그인</h2>  
  <p>빠른 로그인</p> 
  <button class="btn_login" onclick="change_to_login()">LOGIN</button>
  </div>
  </div>
<div class="col_md_sign_up">
<div class="cont_ba_opcitiy">
  <h2>회원가입</h2>

  
  <p>간편가입</p>

  <button class="btn_sign_up" onclick="change_to_sign_up()">SIGN UP</button>
</div>
  </div>
       </div>

    
    <div class="cont_back_info">
       <div class="cont_img_back_grey">
       <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
       </div>
       
    </div>
<div class="cont_forms" >
    <div class="cont_img_back_">
       <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
       </div>
       
 <div class="cont_form_login">
 <form id="Login_form" method="post" style="margin-top: 126px;">
   <h2 style="margin-right: 2px;">LOGIN</h2>
   <div class="Login_wrap">
   <div class="id_input_box">
 <input class="id_input" name="memberId" placeholder="아이디" style="margin-top: 10px;">
 	</div>
 	</div>
 	<div class="pw_wrap">
 	<div class="pw_input_box">
  <input class="pw_iput" name="memberPw" placeholder="비밀번호" style="margin-top: 10px;">
	</div>
	</div>
	
 	<div class="Login_button_wrap">
 		<input type="button" class="Login_button" value="로그인">
 	</div>
</form>
  </div>
  
  
  <form id="join_form" method="post">
 	 <div class="cont_form_sign_up">
  
<a href="#" onclick="hidden_login_and_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
     <h2>SIGN UP</h2>

<input class="id_input" name="memberId" type="text" placeholder="아이디" />
<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
<span class="final_id_ck">아이디를 입력해주세요.</span>

<input class="pw_input" name="memberPw" type="password" placeholder="비밀번호" />
<span class="final_pw_ck">비밀번호를 입력해주세요.</span>

<input class="pwck_input" type="password" placeholder="비밀번호 확인" />
<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
<span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
<span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>

<input class="user_input" name="memberName" type="text" placeholder="이름" />
<span class="final_name_ck">이름을 입력해주세요.</span>

<input class="mail_input" name="memberMail" type="text" placeholder="이메일" />
<span class="final_mail_ck">이메일을 입력해주세요.</span>
<span class="mail_input_box_warn"></span>

<div class="mail_check_wrap">
<div class="mail check input box" id="mail_check_input_box_false">
<input class="mail_check_input" disabled="disabled"/>
</div>
<div class="mail_check_button">
	<span>인증번호 전송</span>
</div>
<div class="clearfix"></div>
<span id="mail_check_input_box_warn"></span>
</div>
<input class="address_input_1" name="memberAddr1" type="text" placeholder="주소" readonly="readonly"/>
<button type="button" class="btn_address_up" onclick="execution_daum_address()">주소 찾기 </button>
<input class="address_input_2" name="memberAddr2" type="text" placeholder="상세주소" readonly="readonly"/>
<input class="address_input_3" name="memberAddr3" type="text" placeholder="참고항목" readonly="readonly"/>
<span class="final_addr_ck">주소를 입력해주세요.</span>
<button class="btn_sign_up_1">SIGN UP</button>
</div>
</form>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>

var code = "";                //이메일전송 인증번호 저장위한 코 드 

/* 유효성 검사 통과유무 변수 */
var idCheck = false;            // 아이디
var idckCheck = false;            // 아이디 중복 검사
var pwCheck = false;            // 비번
var pwckCheck = false;            // 비번 확인
var pwckcorCheck = false;        // 비번 확인 일치 확인
var nameCheck = false;            // 이름
var mailCheck = false;            // 이메일
var mailnumCheck = false;        // 이메일 인증번호 확인
var addressCheck = false         // 주소

$(document).ready(function(){
	//회원가입 버튼(회원가입 기능 작동)
	$(".btn_sign_up_1").click(function(){
		
		/* 입력값 변수 */
        var id = $('.id_input').val();                 // id 입력란
        var pw = $('.pw_input').val();                // 비밀번호 입력란
        var pwck = $('.pwck_input').val();            // 비밀번호 확인 입력란
        var name = $('.user_input').val();            // 이름 입력란
        var mail = $('.mail_input').val();            // 이메일 입력란
        var addr = $('.address_input_3').val(); 
        
        /* 아이디 유효성검사 */
        if(id == "") {
            $('.final_id_ck').css('display','block');
            idCheck = false;
        }else{
            $('.final_id_ck').css('display', 'none');
            idCheck = true;
        }
        
        /* 비밀번호 유효성 검사 */
        if(pw == ""){
            $('.final_pw_ck').css('display','block');
            pwCheck = false;
        }else{
            $('.final_pw_ck').css('display', 'none');
            pwCheck = true;
        }
        
        /* 비밀번호 확인 유효성 검사 */
        if(pwck == ""){
            $('.final_pwck_ck').css('display','block');
            pwckCheck = false;
        }else{
            $('.final_pwck_ck').css('display', 'none');
            pwckCheck = true;
        }
        
        /* 이름 유효성 검사 */
        if(name == ""){
            $('.final_name_ck').css('display','block');
            nameCheck = false;
        }else{
            $('.final_name_ck').css('display', 'none');
            nameCheck = true;
        }
        
        /* 이메일 유효성 검사 */
        if(mail == ""){
            $('.final_mail_ck').css('display','block');
            mailCheck = false;
        }else{
            $('.final_mail_ck').css('display', 'none');
            mailCheck = true;
        }
        
        /* 주소 유효성 검사 */
        if(addr == ""){
            $('.final_addr_ck').css('display','block');
            addressCheck = false;
        }else{
            $('.final_addr_ck').css('display', 'none');
            addressCheck = true;
        }
        
        
        
        /* 최종 유효성 검사 */
        if(idCheck&&idckCheck&&pwCheck&&pwckCheck&&pwckcorCheck&&nameCheck&&mailCheck&&mailnumCheck&&addressCheck ){
        	$("#join_form").attr("action", "/member/join");
            $("#join_form").submit();
        }
        
    });
});

//아이디 중복검사
$('.id_input').on("propertychange change keyup paste input", function(){

	var memberId = $('.id_input').val();			// .id_input에 입력되는 값
	var data = {memberId : memberId}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
	
	$.ajax({
		type : "post",
		url : "/member/memberIdChk",
		data : data,
		success : function(result){
				console.log("성공 여부" + result);
				if(result != 'fail'){
					$('.id_input_re_1').css("display","inline-block");
					$('.id_input_re_2').css("display","none");
					idckCheck = true;
				} else {
					$('.id_input_re_2').css("display","inline-block");
					$('.id_input_re_1').css("display","none");
					idckCheck = false;
				}
		}// success 종료
	}); // ajax 종료	

});// function 종료

/* 인증번호 이메일 전송 */
$(".mail_check_button").click(function(){
	
	 var email = $(".mail_input").val();	// 입력한 이메일
	 var cehckBox = $(".mail_check_input");  //- 인증번호 입력란
	 var boxWrap = $(".mail_check_input_box"); // 인증번호 입력란 박스
	 var warnMsg = $(".mail_input_box_warn");    // 이메일 입력 경고글
	 
	 /* 이메일 형식 유효성 검사 */
	    if(mailFormCheck(email)){
	        warnMsg.html("이메일이 전송 되었습니다. 이메일을 확인해주세요.");
	        warnMsg.css("display", "inline-block");
	    } else {
	        warnMsg.html("올바르지 못한 이메일 형식입니다.");
	        warnMsg.css("display", "inline-block");
	        return false;
	    } 
	 
	 $.ajax({
	        
	        type:"GET",
	        url:"mailCheck?email=" + email,
	        success:function(data){
	        	
	        	/* console.log("data: " + data); */
	        	cehckBox.attr("disabled",false);
	        	boxWrap.attr("id", "mail_check_input_box_true");
	        	code = data;
	         
	        }
	    });
    
});

/* 인증번호 비교 */
$(".mail_check_input").blur(function() {

var inputCode = $(".mail_check_input").val(); // 입력코드
var checkResult = $("#mail_check_input_box_warn"); // 비교 결과

if (inputCode == code) { // 일치할 경우
mailnumCheck=true;
checkResult.html("인증번호가 일치합니다.");
checkResult.attr("class", "correct");

} else { // 일치하지 않을 경우
checkResult.html("인증번호를 다시 확인해주세요.");
checkResult.attr("class", "incorrect");
}

});

/* 다음 주소 연동 */
function execution_daum_address(){
 
    new daum.Postcode({
        oncomplete: function(data) {
        	
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수
 
                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
 
                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 주소변수 문자열과 참고항목 문자열 합치기
                    addr += extraAddr;
                
                } else {
                    addr += ' ';
                }
 
                $(".address_input_1").val(data.zonecode);
                //$("[name=memberAddr1]").val(data.zonecode);    // 대체가능
                $(".address_input_2").val(addr);
                //$("[name=memberAddr2]").val(addr);            // 대체가능
             // 상세주소 입력란 disabled 속성 변경 및 커서를 상세주소 필드로 이동한다.
                $(".address_input_3").attr("readonly",false);
                 $(".address_input_3").focus();
            
 
        }
    }).open();    
}

/* 비밀번호 확인 일치 유효성 검사 */
 
$('.pwck_input').on("propertychange change keyup paste input", function(){
 
    var pw = $('.pw_input').val();
    var pwck = $('.pwck_input').val();
    $('.final_pwck_ck').css('display', 'none');
    
    if(pw == pwck){
        $('.pwck_input_re_1').css('display','block');
        $('.pwck_input_re_2').css('display','none');
        pwckcorCheck = true;
    }else{
        $('.pwck_input_re_1').css('display','none');
        $('.pwck_input_re_2').css('display','block');
        pwckcorCheck = false;
    }
         
});
	
	/* 입력 이메일 형식 유효성 검사 */
	function mailFormCheck(email) {
		 var form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
		 return form.test(email);
	}

</script>

<script>
 
    /* 로그인 버튼 클릭 메서드 */
    $(".Login_button").click(function(){
    	
    	/* 로그인 메서드 서버 요청 */
        $("#Login_form").attr("action", "/member/error.do");
        $("#Login_form").submit();
        
    });
 
</script>

   </div>
  </div>
 </div>
</div>
</body>
<script src="/resources/js/member/joiner.js"></script>
</html>