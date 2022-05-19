
$(document).on('click','.poslike', function() {
    // 버튼의 글씨 -> 좋아요취소
    $(this).text('공감');
    // 아이디 - dislike 추가, like 삭제
    $(this).attr('class','dislike')
})

    $(document).on('click','.dislike', function() {
    // 버튼의 글씨 -> 좋아요
    $(this).text('공감');
    // 아이디 - like 추가, dislike 삭제
    $(this).attr('class','poslike')
})