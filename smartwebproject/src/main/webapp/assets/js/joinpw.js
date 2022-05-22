$(function(){
	$('#pw1').keyup(function(){
	$('#chkpw').html('');
	});

    $('#pw2').keyup(function(){

	if($('#pw1').val() != $('#pw2').val()){
    $('#chkpw').html('비밀번호가 일치하지 않습니다.<br><br>');
    $('#chkpw').attr('color', '#FF1515');
    } else{
    $('#chkpw').html('비밀번호가 일치합니다.<br><br>');
    $('#chkpw').attr('color', '#0059DE');
    }
    });
});