package com.smart.paging;

public interface Action {
	
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException;

}
