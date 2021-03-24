package interfase;


import bean.Ownerbean;

import bean.Ownerlogin;
import bean.Uploadbean;
import bean.Userbean;
import bean.Userlogin;


public interface Inter {
	
	public int ureg(Userbean ub);
	public boolean ulog(Userlogin ul);
	
	public int oreg(Ownerbean ob);
	public boolean olog(Ownerlogin ol);
	
	public int file(Uploadbean upb);
	
	public int Request(Uploadbean uprq);
	
	public int Response(Uploadbean uprp);
	

}
