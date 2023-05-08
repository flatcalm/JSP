package com.myweb.user.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myweb.user.model.UserDAO;
import com.myweb.user.model.UserVO;

public class DeleteService implements IUserService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = ((UserVO)request.getSession()
				.getAttribute("user"))
				.getUserId();
		String checkPw = request.getParameter("check_pw");
		
		UserDAO dao = UserDAO.getInstance();
		response.setContentType("text/html; charset=UTF-8");
		String htmlCode;
		PrintWriter out = null;
		
		if(dao.userCheck(id, checkPw) == 1) {
			dao.deleteUser(id);
			request.getSession().invalidate();
			
			htmlCode = "<script>\r\n"
                    + "                alert('회원 탈퇴가 완료되었습니다.');\r\n"
                    + "                location.href='/MyWeb';\r\n"
                    + "                </script>";
		} else {
			htmlCode = "<script>\r\n"
                    + "                alert('비밀번호가 일치하지 않습니다.');\r\n"
                    + "                history.back();\r\n"
                    + "                </script>";
		}
		
		try {
			out = response.getWriter();
			out.print(htmlCode);
			out.flush();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			out.close();
		}

	}

}
