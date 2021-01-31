  $('#duplicateCheck').click(function () {

        $.ajax({
            type: "POST",
            url: "/duplicateCheck",
            data: {
                "memid": $('#memId').val()
            },
            success: function (data) {	
                if ($.trim(data) == "YES") {
                    if ($('#userId').val() != '') {
                        $('#checkMsg').html('<p style="color:blue">사용가능한 ID 입니다!</p>');
                        $('#signUp').show();
                        $('#duplicateCheck').hide();
                        $('#memId').attr('readonly',true);
                    }
                } else {
                    if ($('#memId').val() != '') {
                        $('#checkMsg').html('<p style="color:red">이미 사용중인 ID 입니다. 다른 ID를 입력하세요.</p>');
                        $('#memId').val('');
                        $('#memId').focus();
                        $("#signUp").hide();
                        $('#duplicateCheck').show();
                    }
                }
            }
        })
    });

