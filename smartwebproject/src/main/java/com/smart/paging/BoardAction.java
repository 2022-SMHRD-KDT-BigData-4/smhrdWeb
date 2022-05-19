package com.smart.paging;

public class BoardAction implements Action {
	@Override
	  public void execute(HttpServletRequest request, HttpServletResponse response) {
	    // TODO Auto-generated method stub
	     
	    BoardDAO dao = new BoardDAO();
	    ArrayList <span style="font-family: "맑은 고딕", sans-serif;">list;</span></p><boarddto>   
	    int totalCount = dao.getTotalCount();
	    int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
	     
	    Paging paging = new Paging();
	    paging.setPageNo(page); //get방식의 parameter값으로 반은 page변수, 현재 페이지 번호
	    paging.setPageSize(10); // 한페이지에 불러낼 게시물의 개수 지정
	    paging.setTotalCount(totalCount);
	     
	    page = (page - 1) * 10; //select해오는 기준을 구한다.
	     
	    list = dao.getList(page, paging.getPageSize());
	     
	    request.setAttribute("list", list);
	    request.setAttribute("paging", paging);
	  }

}
