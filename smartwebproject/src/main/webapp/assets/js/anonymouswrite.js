let article = $(".wrap.articles")
let writeArticleButton = "";
$("#writeArticleButton").on("click", function () {
        writeArticleButton += "<form action='AnonymousWriteCon' method='post' class='write'>"
        writeArticleButton += '<p><input name="article_title" autocomplete="off" placeholder="글 제목" class="title">'
        writeArticleButton += '</p>'
        writeArticleButton += '<p>'        
        writeArticleButton += '<textarea name="article_content" class="smallplaceholder" placeholder="스마트타임은 스마트인재개발원 학생들의 원할한 커뮤니케이션을 위한 커뮤니티입니다. 맘편히 사용해주세요. \n\n※ 공지사항 이용안내\n- 공지사항의 글쓰기,수정,삭제 등 기능은 괸리자만 가능합니다."></textarea>'
        writeArticleButton += '</p>'
        writeArticleButton += '<input class="file" type="file" name="file" multiple="multiple">'
        writeArticleButton += '<ol class="thumbnails">'
        writeArticleButton += '<li class="new">'
        writeArticleButton += '</li>'
        writeArticleButton += '</ol>'
        writeArticleButton += '<div class="clearBothOnly"></div>'
        writeArticleButton += "<ul class='option'>"
        writeArticleButton += "<li title='첨부' class='attach'></li>"
        writeArticleButton += "<li id='seq' name='article_seq'></li>"
        writeArticleButton += "<select id='seq2' name='article_type'><option value='익명게시판' selected/></select>" 
        writeArticleButton += '<input type="text" id="seq3" name="mb_email" value='+email+'>'
        writeArticleButton += '<input type="text" id="seq4" name="mb_nick" value='+nick+'>'
        writeArticleButton += "<button type='submit'>"
        writeArticleButton += "<li title='완료' class='success'></li>"
        writeArticleButton += "</button>"
        writeArticleButton += `<li title='목록' class='list' onclick='location.href="anonymous.jsp"'></li>`
        writeArticleButton += "</ul>"
        writeArticleButton += '<div class="clearBothOnly"></div>'
        writeArticleButton += "</form>"
        article.html(writeArticleButton);
        $("#seq").hide();
        $("#seq2").hide();
        $("#seq3").hide();
        $("#seq4").hide();
})


