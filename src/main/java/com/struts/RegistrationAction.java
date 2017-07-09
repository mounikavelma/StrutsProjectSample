package com.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class RegistrationAction extends Action {
	
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		HttpSession ses = request.getSession(true);
		RegistrationForm registrationForm= (RegistrationForm) form;
		int sid = registrationForm.getSid();
		String fname = registrationForm.getFname();
		String lname= registrationForm.getLname();
		String mailid = registrationForm.getMailid();
		String password = registrationForm.getPassword();
		String confirmpassword =registrationForm.getConfirmpassword();
		
		if(sid <= 0 || fname.equals("")|| lname.equals("")||mailid.equals("") )
			return mapping.findForward("failure");
		
		RegistrationDAO dao = new RegistrationDAO();
		
		boolean checker = dao.checkingUser(sid);
		if(checker){
			return mapping.findForward("existed");
		}
		
		dao.insertStudentDetails(sid, fname, lname, mailid, password, confirmpassword);
		ses.setAttribute("sid", sid);
		ses.setAttribute("fname", fname);
		ses.setAttribute("lname", lname);
		ses.setAttribute("mailid", mailid);
		ses.setAttribute("password", password);
		ses.setAttribute("confirmpassword", confirmpassword);
		
		return mapping.findForward("success");
	}

}
