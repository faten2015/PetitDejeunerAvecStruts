package fr.treeptik.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import fr.treeptik.jpa.entity.Member;
import fr.treeptik.service.MemberService;

public class LoginAction extends ActionSupport implements SessionAware {

	private static final long serialVersionUID = 1L;

	private String message;
	private Member member;
    private MemberService memberService=new MemberService();
	private Map<String, Object> session;

	public String execute() throws Exception {
		System.out.println(member.getLogin());
		System.out.println(member.getPassword());
		boolean login = memberService.login(member);
		if (login) {
			setMessage("vous êtes connecté sous " + member.getLogin());
			return SUCCESS;
		}
		return ERROR;
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