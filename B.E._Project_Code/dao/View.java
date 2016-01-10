package dao;

public class View
{
	int id;
	String uid;
	String name;
	String setting;
	String user;
	String statususa;
	String relationship;
	String statususb;
	String fgroup;
	String statususc;

	public View(int id, String uid, String name, String setting, String user, String statususa, String relationship, String statususb, String fgroup, String statususc) 
	{
		super();
		this.id = id;
		this.uid = uid;
		this.name = name;
		this.setting = setting;
		this.user = user;
		this.statususa = statususa;
		this.relationship = relationship;
		this.statususb = statususb;
		this.fgroup = fgroup;
		this.statususc = statususc;
	}
	
	public int getId() 
	{
		return id;
	}
	
	public void setId(int id) 
	{
		this.id = id;
	}
	
	public String getUid() 
	{
		return uid;
	}
	
	public void setUid(String uid) 
	{
		this.uid = uid;
	}
	
	public String getName() 
	{
		return name;
	}
	
	public void setName(String name) 
	{
		this.name = name;
	}
	
	public String getSetting() 
	{
		return setting;
	}
	
	public void setSetting(String setting) 
	{
		this.setting = setting;
	}
	
	public String getUser() 
	{
		return user;
	}
	
	public void setUser(String user) 
	{
		this.user = user;
	}
	
	public String getStatususa() 
	{
		return statususa;
	}
	
	public void setStatususa(String statususa) 
	{
		this.statususa = statususa;
	}
	
	public String getRelationship() 
	{
		return relationship;
	}
	
	public void setRelationship(String relationship) 
	{
		this.relationship = relationship;
	}
	
	public String getStatususb() 
	{
		return statususb;
	}
	
	public void setStatususb(String statususb) 
	{
		this.statususb = statususb;
	}
	
	public String getFgroup() 
	{
		return fgroup;
	}
	
	public void setFgroup(String fgroup) 
	{
		this.fgroup = fgroup;
	}
	
	public String getStatususc() 
	{
		return statususc;
	}
	
	public void setStatususc(String statususc) 
	{
		this.statususc = statususc;
	}
}
