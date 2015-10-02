package fr.treeptik.converter;

import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

import fr.treeptik.jpa.entity.Member;

public class convertMember extends StrutsTypeConverter {


	
	 public Object convertFromString(Map map, String[] strings, Class type)
	    {
	       Member member= new Member(strings[0]);
	       return member;
	    }

	public String convertToString(Map map, Object o)
	{
	        if(o instanceof Member)
	        {
	            Member member = (Member)o;
	            //return the  state string
	            ((Member) o).getId().toString();
	        }
	        return ((Member) o).getId().toString();
	}
}