package com.smart.paging;

@WebServlet("*.do")
public class BoardController extends HttpServlet {
	  private static final long serialVersionUID = 1L;
	        
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public BoardController() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
	 
	  /**
	   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	   */
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // TODO Auto-generated method stub
	    doPost(request, response);
	  }
	 
	  /**
	   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	   */
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // TODO Auto-generated method stub
	    request.setCharacterEncoding("UTF-8");
	    String requestURI = request.getRequestURI();
	    String[] URIList = requestURI.split("/");
	    String cmdURI = URIList[URIList.length-1];
	     
	    Action action = null;
	     
	    if(cmdURI.equals("board.do")) {
	      action = new BoardAction();
	      action.execute(request, response);
	       
	      RequestDispatcher dis = request.getRequestDispatcher("board.jsp");
	      dis.forward(request, response);
	    }
	  }

}
