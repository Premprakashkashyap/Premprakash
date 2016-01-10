<%@ page  language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
   String name = null,userid=null,id=null,pname=null;
try{


   Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();

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
<div style="position:absolute; left:299px; top:270px"><img src="images/img09.GIF" width="2" height="350"></div>
<div style="position:absolute; left:400px; top:300px"><img src="images/diss.JPG" width="400" height=""></div>

<div class='cssmenu'>
<ul>
   <li class='active'><a href="userpage.jsp"><span>Access</span></a></li>
   <li><a href="my_own.jsp"><span>Owned</span></a></li>
   <li><a href="disseminator.jsp"><span>Disseminator</span></a></li>
   <li><a href="index.html"><span>Back</span></a></li>
  
</ul>
</div>
<div id="page">
<h2>Welcome!&nbsp; 
       <font color="#FFFFCC"><font size="5"> <%=name%></font></font>
        </h2>
		<div><img src="viewimage.jsp?id=<%=id%>" alt="" width="150" height="120" /></div>
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
				<h2>Disseminator</h2>
				<ul>
					
          <li><a href="holder.jsp"><font size="3">View Friends</font></a></li>
					
          <li><a href="#"><font size="3">Share FriendsImage</font></a></li>
					
					
				</ul>
			</li>
			
			
			</ul>
		
	</div>
			
	
	</div>

<br><br>
	<div id="content" align="right">
		<div id="fragment-1" class="ui-tabs-panel">
		
		</div>

	</div>
	<!-- end content -->
	<!-- start rightbar -->
	
	<!-- end rightbar -->
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end page -->

</body>
</html>
