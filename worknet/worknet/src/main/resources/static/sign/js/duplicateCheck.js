  $('#duplicateCheck').click(function () {
	  
	  // 이메일 벨리데이션 선 체크 //
	  
	  const mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
		
//	  if($('#email').val().match(mailformat)) {
//		  	alert('올바른 형식의 Email 입니다.');
//			findEmail.focus();
//			// Ajax 연동 부분 //
//			return true;
//		}
//		else{
//			let findEmail = document.getElementsByClassName('Find');
//			findEmail[1].value = "잘못된 이메일 형식입니다!";
//		}
	  
	  
	  
	  
	  if ($('#memId').val() == '' && $('#email').val() == '') {
          $('#IdcheckMsg').html('');
          $('#EmailcheckMsg').html('');
          $('#IdcheckMsg').html('<p style="color:red">사용하실 아이디를 입력해주세요</p>');
          $('#EmailcheckMsg').html('<p style="color:red">사용하실 이메일을 입력해주세요</p>');
	  }else if ($('#memId').val() == '') {
          $('#EmailcheckMsg').html('');
          $('#IdcheckMsg').html('<p style="color:red">사용하실 아이디를 입력해주세요</p>');
	  }else if($('#email').val() == ''){
          $('#IdcheckMsg').html('');
          $('#EmailcheckMsg').html('<p style="color:red">사용하실 이메일을 입력해주세요</p>');
	  }else{
        $.ajax({
            type: "POST",
            url: "/duplicateCheck", 
            data: {
                "memId": $('#memId').val(),
                "email": $('#email').val()
            },
            success: function (data) {	
                if ($.trim(data) == "ALL_YES") {
                    if ($('#userId').val() != '') {
                        $('#IdcheckMsg').html('<p style="color:blue">사용가능한 ID 입니다!</p>');
                        $('#EmailcheckMsg').html('<p style="color:blue">사용가능한 EMAiL 입니다!</p>');
                        $('#signUp').show();
                        $('#duplicateCheck').hide();
                        $('#memId').attr('readonly',true);
                        $('#email').attr('readonly',true);
                    }
                } else if ($.trim(data) == "ID_YES") {
                    if ($('#userId').val() != '') {
                        $('#IdcheckMsg').html('<p style="color:blue">사용가능한 ID 입니다!</p>');
                        $('#EmailcheckMsg').html('<p style="color:red">이미 사용중인 EMAIL 입니다. 다른 EMAIL을 입력하세요.</p>');
                        $('#email').val('');
                        $('#email').focus();
                        $('#memId').attr('readonly',true);
                    }
				}else if($.trim(data) == "EMAIL_YES"){
                    if ($('#memId').val() != '') {
                        $('#IdcheckMsg').html('<p style="color:red">이미 사용중인 ID 입니다. 다른 ID를 입력하세요.</p>');
                        $('#EmailcheckMsg').html('<p style="color:blue">사용가능한 EMAiL 입니다!</p>');
                        $('#memId').val('');
                        $('#email').attr('readonly',true);
                        $('#memId').focus();
                    }
				}else{
                    if ($('#memId').val() != '') {
                        $('#IdcheckMsg').html('<p style="color:red">이미 사용중인 ID 입니다. 다른 ID를 입력하세요.</p>');
                        $('#EmailcheckMsg').html('<p style="color:red">이미 사용중인 EMAIL 입니다. 다른 EMAIL을 입력하세요.</p>');
                        $('#memId').val('');
                        $('#email').val('');
                        $('#memId').focus();
                    }
                }
            }
        })
	  }
    });

