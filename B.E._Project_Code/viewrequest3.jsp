<%@ page  language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
try{

   String name = null,userid=null,id=null;
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
  
  session.setAttribute("rid",id);
   
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

		<form name="f1" ENCTYPE="multipart/form-data" action="viewrequest4.jsp" method="post">
		<div style="position:absolute; left:360px; top:325px; width: 358px; height: 166px;">
		
		<fieldset>
      
    <legend><font color="#FFFFFF"><strong><font size="4">View Request</font></strong></font></legend>
		<table align="center" height="150">
			<tr><td><%=(String)session.getAttribute("fname")%>:Accept to a</td></tr>
			<tr></tr>
			<tr></tr>
			<tr><td>
				<select name="relationship">
					<option value="select">------Relationship------</option>
					<option value="Friends">Friends</option>
					<option value="Family">Family</option>
				</select>
				</td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr><td><%=(String)session.getAttribute("fname")%>:Add to group</td></tr>
			<tr></tr>
			<tr></tr>
			<tr><td>
				<select name="fgroup">
					<option value="select">-----------Group----------</option>
					<option value="Friends">Friends</option>
					<option value="Family">Family</option>
				</select>
				</td>
			</tr>
			<tr></tr>
			<tr></tr>
			
			<tr><td><input name="submit" type="submit" class="button2" value="Update settings"/></td></tr>

		</table>

		</fieldset>
</div>
		</form>

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
