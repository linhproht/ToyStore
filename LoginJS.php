<link rel="stylesheet" type="text/css" href="style.css"/>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/responsive.css">
<script src="js/jquery-3.2.0.min.js"/></script>
<script src="js/jquery.dataTables.min.js"/></script>
<script src="js/dataTables.bootstrap.min.js"/></script>
<!-- check login (user name and password) -->
<script>
	function check()
	{
		if(f.txtUsername.value=="")
		{
			alert("Enter username, please");
			return false;
		}
		if(f.txtUsername.value.length >30)
		{
			alert("Maximum of username is 30 chars");
			return false;
		}
		if(f.txtPass.value=="")
		{
			alert("Enter password, please");
			return false;
		}
		if(f.txtPass.value.length <		 6)
		{
			alert("Maximum of username is 6 chars");
			return false;
		}
		return true;
	}
</script>
<h1>Login</h1>
<form id="form1" name="f" method="POST" action="Loginprocess.php" Onsubmit="return check();">
<div class="row">
    <div class="form-group">				    
        <label for="txtUsername" class="col-sm-2 control-label">Username(*):  </label>
		<div class="col-sm-10">
		      <input type="text" name="txtUsername" id="txtUsername" class="form-control" placeholder="Username" value=""/>
		</div>
      </div>  
      
    <div class="form-group">
		<label for="txtPass" class="col-sm-2 control-label">Password(*):  </label>			
		<div class="col-sm-10">
		      	<input type="password" name="txtPass" id="txtPass" class="form-control" placeholder="Password" value=""/>
		</div>
	</div> 
	<div class="form-group"> 
        <div class="col-sm-2"></div>
        <div class="col-sm-10">
        	<input type="submit" name="btnLogin"  class="btn btn-primary" id="btnLogin" value="Login"/>
            <input type="submit" name="btnCancel"  class="btn btn-primary" id="btnLogin" value="Cancel"/>
		</div>  
	</div>
 </div>
    
</form>
   