// 글작성 이벤트
let article = $(".wrap.articles")
let writeArticleButton = "";
$("#writeArticleButton").on("click", function () {
        writeArticleButton += "<form action='method' class='write'>"
        writeArticleButton += '<p><input name="title" autocomplete="off" placeholder="글 제목" class="title">'
        writeArticleButton += '</p>'
        writeArticleButton += '<p>'
        writeArticleButton += '<textarea name="text"  class="smallplaceholder" placeholder="스마트타임은 오직 스마트인재개발원 학생들의 원할한 커뮤니케이션을 위한 커뮤니티입니다."></textarea>'
        writeArticleButton += '</p>'
        writeArticleButton += '<div class="clearBothOnly"></div>'
        writeArticleButton += "<ul class='option'>"
        writeArticleButton += "<div class='insert'>"
        writeArticleButton += "<form method='post' onsubmit='return false;' enctype='multipart/form-data'>"
        writeArticleButton += '<input type="file" onchange="addFile(this);" multiple />'
        writeArticleButton += '<div class="file-list"></div>'
        writeArticleButton += '</form>'
        writeArticleButton += '</div>'
        writeArticleButton += "<button type='submit'>"
        writeArticleButton += "<li title='완료' class='success'></li>"
        writeArticleButton += "</button>"
        writeArticleButton += `<li title='목록' class='list' onclick='location.href="notice.html"'></li>`
        writeArticleButton += "</ul>"
        writeArticleButton += '<div class="clearBothOnly"></div>'
        writeArticleButton += "</form>"
        article.html(writeArticleButton);
})





