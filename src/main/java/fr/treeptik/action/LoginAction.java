package fr.treeptik.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import fr.treeptik.jpa.entity.Member;

public class LoginAction extends ActionSupport implements SessionAware {

	private static final long serialVersionUID = 1L;

	private String message;
	private Member member;

	private Map<String, Object> session;

	public String execute() throws Exception {
		session.put("USER", member);
		setMessage("vous êtes connecté sous " + member.getLogin());
		return SUCCESS;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}