// 글작성 이벤트
let article = $(".wrap.articles")
let writeArticleButton = "";
$("#writeArticleButton").on("click", function () {
        writeArticleButton += "<form action='BoardWriteCon' method='post' class='write'>"
        writeArticleButton += '<p><input name="article_title" autocomplete="off" placeholder="글 제목" class="title">'
        writeArticleButton += '</p>'
        writeArticleButton += '<p>'
        writeArticleButton += '<textarea name="article_content"  class="smallplaceholder" placeholder="스마트타임은 오직 스마트인재개발원 학생들의 원할한 커뮤니케이션을 위한 커뮤니티입니다."></textarea>'
        writeArticleButton += '</p>'
        writeArticleButton += '<div class="clearBothOnly"></div>'
        writeArticleButton += "<ul class='option'>"
        writeArticleButton += "<div class='insert'>"
        writeArticleButton += "<form method='post' onsubmit='return false;' enctype='multipart/form-data'>"
        writeArticleButton += '<input type="file" onchange="addFile(this);" multiple />'
        writeArticleButton += '<div class="file-list"></div>'
        writeArticleButton += '</form>'
        writeArticleButton += '</div>'
        writeArticleButton += "<div id='seq' name='article_seq'></div>"
        writeArticleButton += "<select id='seq2' name='article_type'><option value='동원쌤게시판' selected/></select>" 
        writeArticleButton += '<input type="text" id="seq3" name="mb_email" value='+email+'>'
        writeArticleButton += '<input type="text" id="seq4" name="mb_nick" value='+nick+'>'
        writeArticleButton += `<button type='submit' style='float: right; position: relative; bottom: 43px;'>`
        writeArticleButton += `<li title='완료' class='success'></li>`
        writeArticleButton += "</button>"
        writeArticleButton += `<li title='목록' class='list' onclick='location.href="notice.jsp"'></li>`
        writeArticleButton += "</ul>"
        writeArticleButton += '<div class="clearBothOnly"></div>'
        writeArticleButton += "</form>"
        article.html(writeArticleButton);
        $("#seq").hide();
        $("#seq2").hide();
        $("#seq3").hide();
        $("#seq4").hide();

})






