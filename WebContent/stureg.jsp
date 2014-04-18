<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Sign Up</title>
<link rel='stylesheet' href='js-form-validation.css' type='text/css' /> 
<link rel='stylesheet' href='commonstyle.css' type='text/css' /> 
</head>
<body>

	<h1 align="center">
		<b>Student Sign Up</b>
	</h1>
	<form name="stud" method="post" action="insertstud.jsp" accept-charset="utf-8" class="form-horizontal">

<ul>
	<li>	<div class="control-group">
			<label class="control-label" for="inputFirstname">First Name
			</label>
			
				<input type="text" name="firstname" placeholder="firstname" required></input>
			
		</div></li>


<li>		<div class="control-group">
			<label class="control-label" for="inputLastname">Last Name </label>
			
				<input type="text" name="lastname" placeholder="lastname" required></input>
			
		</div></li>

<li>	<div class="control-group">
			<label class="control-label" for="inputPassword">Password
			</label>
			
				<input type="password" name="password" placeholder="password" required></input>
			
		</div></li>
		
<li>		<div class="control-group">
			<label class="control-label" for="inputroll">Roll Number</label>
			
				<input type="text" name="rollno" placeholder="Ex:**131A****" required></input>
			
		</div></li>

<li>		<div class="control-group">
			<label class="control-label" for="inputEmail">E-mail</label>
			
				<input type="text" name="email" placeholder="name@gmail.com" required></input>
			
		</div></li>

<li>	<div class="control-group">
		<li>	<label class="control-label" for="gender">Gender</label></li>
			<div class="controls">
				<li><input type="radio" name="optionsRadios" id="optionsRadios1"
					value="Male" checked/><span>Male</span> </li><li><input type="radio"
					name="optionsRadios" id="optionsRadios2" value="Female"/><span>Female</span></li>
	</div>
		</div></li>

<li>		<div class="control-group">
			<label class="control-label" for="College">College </label>
	
			<select name="college">
			<option value="select"> Select </option>
			<option value="gvpe"> GVP College of Engineering </option>
			<option value="gvpw"> GVP College of Engineering for Women </option>
			<option value="gvpt"> GVP Technical Campus </option>
			<option value="sgvp"> SITAM GVP </option>
			 </select>
	
		</div></li>



<li><div class="control-group">
			<div class="controls">
				<input type="submit" value="Sign Up" class="btn" required /> 
			</div>
		</div></li>
</ul>
</form>
</body>
</html>
