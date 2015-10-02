package fr.treeptik.converter;


import java.util.Map;



import org.apache.struts2.util.StrutsTypeConverter;

import fr.treeptik.jpa.entity.Team;

public abstract  class ConvertTeam extends StrutsTypeConverter {


	
	 public Object convertFromString(Map map, String[] strings, Class type)
	    {
	       Team team= new Team(strings[0]);
	       return team;
	    }

	public String convertToString(Map map, Object o)
	{
	        if(o instanceof Team)
	        {
	            Team team = (Team)o;
	            //return the  state string
	            ((Team) o).getId().toString();
	        }
	        return ((Team) o).getId().toString();
	}
	
}
