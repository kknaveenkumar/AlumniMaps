<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Alumni Sign Up</title>
<link rel='stylesheet' href='commonstyle.css' type='text/css' />
</head>
<body>

	<h1 align="center">
		<b>Alumni Sign Up</b>
	</h1>
	<form name="alumreg"  method="post" action="insertalum.jsp" accept-charset="utf-8" class="form-horizontal" >

<ul>
	<li>	<div class="control-group">
			<label class="control-label">First Name</label>
			
				<input type="text" name="firstname" maxlength="12" required></input>
			
		</div></li>


<li>		<div class="control-group">
			<label class="control-label" for="inputLastname">Last Name </label>
			
				<input type="text" name="lastname" required></input>
			
		</div></li>
		
<li>		<div class="control-group">
			<label class="control-label" for="inputUsername">User Name </label>
			
				<input type="text" name="username" required></input>
			
		</div></li>

<li>	<div class="control-group">
			<label class="control-label" for="inputPassword">Password
			</label>
			
				<input type="password" name="password" required></input>
			
		</div></li>
		
<li>		<div class="control-group">
			<label class="control-label" for="inputMobile">Mobile</label>
			
				<input type="text" name="mobile" required></input>

			
		</div></li>



<li>		<div class="control-group">
			<label class="control-label" for="inputEmail">E-mail</label>
			
				<input type="text" name="email" required></input>
			
		</div></li>




<li>	<div class="control-group">
			<label class="control-label" for="gender">Gender</label>
			<div class="controls">
				<input type="radio" name="optionsRadios" id="optionsRadios1"
					value="Male"/><span>Male</span><input type="radio"
					name="optionsRadios" id="optionsRadios2" value="Female"/><span>Female</span>
	</div>
		</div></li>



<li>		<div class="control-group">
			<label class="control-label" for="location">Location </label>
	
				<input type="text" name="location"  id="location" required></input>
	
		</div></li>



<li>		<div class="control-group">
			<label class="control-label" for="College">College </label>
	
			<select name="college">
			<option value=""></option>
			<option value="gvpe"> GVP College of Engineering </option>
			<option value="gvpw"> GVP College of Engineering for Women </option>
			<option value="gvpt"> GVP Technical Campus </option>
			<option value="sgvp"> SITAM GVP </option>
			 </select>
				
	
		</div></li>


<li>		<div class="control-group">
			<label class="control-label" for="gradyear">Graduated Year </label>
			<select name="gradyear">
			<option value=""></option>
			<option value="1999"> 1999 </option>
			<option value="2000"> 2000 </option>
			<option value="2001"> 2001 </option>
			<option value="2002"> 2002 </option>
			<option value="2003"> 2003 </option>
			<option value="2004"> 2004 </option>
			<option value="2005"> 2005 </option>
			<option value="2006"> 2006 </option>
			<option value="2007"> 2007 </option>
			<option value="2008"> 2008 </option>
			<option value="2009"> 2009 </option>
			<option value="2010"> 2010 </option>
			<option value="2011"> 2011 </option>
			<option value="2012"> 2012 </option>
			<option value="2013"> 2013 </option>
			<option value="2014"> 2014 </option></select>
			
			
		</div></li>

<li><div class="control-group">
			<div class="controls">
				<input type="submit" value="Sign Up" class="btn" required/> </div>
			</div></li>
</ul>
</form>
</body>
</html>