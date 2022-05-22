
$(document).on('click','.posscrap', function() {
    // 버튼의 글씨 -> 좋아요취소
    $(this).text('스크랩');
    // 아이디 - dislike 추가, like 삭제
    $(this).attr('class','disscrap')
})

    $(document).on('click','.disscrap', function() {
    // 버튼의 글씨 -> 좋아요
    $(this).text('스크랩');
    // 아이디 - like 추가, dislike 삭제
    $(this).attr('class','posscrap')
})