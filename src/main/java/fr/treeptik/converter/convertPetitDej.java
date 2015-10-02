package fr.treeptik.converter;

import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

import fr.treeptik.jpa.entity.PetitDej;

public class convertPetitDej extends StrutsTypeConverter {


	
	 public Object convertFromString(Map map, String[] strings, Class type)
	    {
	       PetitDej petitdej= new PetitDej(strings[0]);
	       return petitdej;
	    }

	public String convertToString(Map map, Object o)
	{
	        if(o instanceof PetitDej)
	        {
	            PetitDej petitdej = (PetitDej)o;
	            //return the  state string
	            ((PetitDej) o).getId().toString();
	        }
	        return ((PetitDej) o).getId().toString();
	}
	
}

