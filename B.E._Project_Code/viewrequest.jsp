<%@ page  language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
 String name = null,userid=null,id=null;
try{

  
   Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();
 
   //fname=(String)session.getAttribute("fname");
   //sname=(String)session.getAttribute("sname");
   userid=(String)session.getAttribute("userid");
  
   String s = "select id,name,userid from reg where userid='"+userid+"'";
   
   ResultSet rs = st.executeQuery(s);
  
   if(rs.next())
   {
   id=rs.getString(1);
   name=rs.getString(2);
   userid=rs.getString(3);

  session.setAttribute("id",id);
   
   }
   else
   out.print("Please check your login credentials");
  
   
  %>

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Multiparty Access Control for Online Social
Networks: Model and Mechanisms</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />

</head>
<body>
<!-- start header -->
<div id="header">
	<div id="logo">
		
    <h1><font size="+3">Multiparty Access Control for Online Social Networks: Model 
      and Mechanisms</font></h1>
		
	</div>
	
</div>
<div style="position:absolute; left:299px; top:270px"><img src="images/img09.GIF" width="2" height="430"></div>
<div style="position:absolute; left:780px; top:250px"><img src="images/own.JPG" width="300"></div>
<div style="position:absolute; left:780px; top:450px"><img src="images/stake.JPG" width="300"></div>

<div class='cssmenu'>
<ul>
   <li class='active '><a href="userpage.jsp"><span>Access</span></a></li>
   <li><a href="my_own.jsp"><span>Owned</span></a></li>
  
   <li><a href="contributor.jsp"><span>Contributed</span></a></li>
   <li><a href="disseminator.jsp"><span>Disseminated</span></a></li>
    <li><a href="index.html"><span>Back</span></a></li>
 
</ul>
</div>
<div id="page">
<h2>Welcome!&nbsp; 
       <font color="#FFFFCC"><font size="5"> <%=name%></font></font>
</h2>
		<div><img src="viewimage.jsp?id=<%=id%>" alt="" width="120" height="99" /></div>
		<%
 
}
catch(Exception e)
{
System.out.println(e);
}
%>
	<div id="leftbar" class="sidebar">
		<ul>
			<li>
				
				<ul>
					<br><br>
          <li><a href="friends.jsp"><font color="#FFFFFF" size="3">Find Friends</font></a></li>
		<li><a href="viewrequest.jsp"><font color="#FFFFFF" size="3">ViewFriendRequest</font></a></li>
        <li><a href="upload.jsp"><font color="#FFFFFF" size="3">Upload Image</font></a></li>
		<li><a href="upload.jsp"><font color="#FFFFFF" size="3">Share Photo</font></a></li>
	    <li><a href="holder.jsp"><font color="#FFFFFF" size="3">FriendsList(Stakeholder)</font></a></li>
		<!--	<li><a href="group.jsp"><font color="#FFFFFF" size="3">Group</font></a></li>-->
				</ul>
			</li>
			
			
			
		</ul>
	</div>
			
	
	</div>

<br><br>

	<div id="content">
<div style="position:absolute; left:360px; top:240px;"><font color="#FFFFFF" size="5"><font color="#FFFFCC"> 
     View Friend Request</font></font></div>

		<div id="fragment-2" class="ui-tabs-panel ui-tabs-hide">
		<%
	int fid=0;
	String rid=null,rid1=null,rid2=null,fname=null;
 	Connection con2=null;
	Statement st2=null;
	ResultSet rs2=null;
	String status="waiting for approve";
	String sql="select distinct id,name from request where fid='"+id+"' and status = '"+status+"'";
	try
	{
		Class.forName("com.mysql.jdbc.Driver");	
		con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialnetwork","root","");;
		st2=con2.createStatement();
		rs2=st2.executeQuery(sql);
		
		%>
		<form name="f1" ENCTYPE="multipart/form-data" action="#" method="post">
		<div style="position:absolute; left:360px; top:325px; width: 358px; height: 166px;">
		
		<fieldset>
      
    <legend><font color="#FFFFFF"><strong><font size="4">View Request</font></strong></font></legend>
		<table align="center" height="150">
			<%while(rs2.next()){
			fid=rs2.getInt("id");
			fname=rs2.getString("name");
			rid=id+","+name+","+Integer.toString(fid)+","+fname;
			rid1=id+","+name+","+Integer.toString(fid)+","+fname+",Confirm";
			rid2=id+","+name+","+Integer.toString(fid)+","+fname+",Ignore";
			%>
			<tr><td>Name:&nbsp;&nbsp;&nbsp;<%=rs2.getString("name")%></td></tr>
			<tr><td><img src="viewimage.jsp?id=<%=fid%>" alt="" width="120" height="99" /></td></tr>
			<tr>
            <td><a href="viewrequest1.jsp?id=<%=rid1%>"><font color="#FFFFCC"><strong>Confirm</strong></font></a>&nbsp;&nbsp;&nbsp;<a href="ignore.jsp?id=<%=rid2%>"><font color="#FFFFCC"><strong>Ignore</strong></font></a></td>
          </tr>
			<%}%>
		</table>
		</fieldset>
		</div>
		</form>
		<%
		}
catch(Exception ex)
	{
		System.out.println(ex);
	}
	  finally
	{
		con2.close();
		st2.close();
	}
 

  %>
		</div><!--end fragment-2-->
			
		</div>

	</div>
	<!-- end content -->
	<!-- start rightbar -->
	
	<!-- end rightbar -->
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end page -->
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="footer">
	

  <p align="right"><font color="#FFFFFF" size="2"><strong>Online Social Network</strong></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/icon3.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/icon1.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/icon4.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/icon5.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/Icon7.png" width="30" height="30"></p>
</div>

</body>
</html>
