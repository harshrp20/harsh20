<?php
error_reporting(0);
if(isset($_POST['submit']))
{
$fname=$_POST['fname'];
$mnumber=$_POST['mobilenumber'];
$email=$_POST['email'];
$password=md5($_POST['password']);
$sql="INSERT INTO  tblusers(FullName,MobileNumber,EmailId,Password) VALUES(:fname,:mnumber,:email,:password)";
$query = $dbh->prepare($sql);
$query->bindParam(':fname',$fname,PDO::PARAM_STR);
$query->bindParam(':mnumber',$mnumber,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->bindParam(':password',$password,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$_SESSION['msg']="You are Scuccessfully registered. Now you can login ";
header('location:thankyou.php');
}
else 
{
$_SESSION['msg']="Something went wrong. Please try again.";
header('location:thankyou.php');
}
}
?>
<!--Javascript for check email availabilty-->
<script>
function checkmail()
{
	var EmailId=document.getElementById("email");
	var atpos = EmailId.value.indexOf("@");
    var dotpos = EmailId.value.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=EmailId.value.length) 
	{
        var show = document.getElementById("eid");
        show.style.display = "block";
		show.innerHTML="Enter valid email-ID!";
		EmailId.focus();
        return false;
   	}
   	else
   	{
   		document.getElementById("eid").style.display = "none";
   	}
	
	return true;
}
</script>

<!--Javascript for check mobile availabilty-->
<script>
function checkmob()
{
	var mob=document.getElementById("mob");
	if((mob.value.length!= 10) || isNaN(mob.value))
	{
		var show = document.getElementById("mobile");
		show.style.display = "block";
		show.innerHTML="Enter valid mobile number!";
		mob.focus();
		return false;
	}
	else
	{
		document.getElementById("mobile").style.display = "none";
	}
	return true;
}
</script>


<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
							<section>
								<div class="modal-body modal-spa">
									<div class="login-grids">
										<div class="login">
											<div class="login-left">
												<ul>
													<li><a class="fb" href="#"><i></i>Facebook</a></li>
													<li><a class="goog" href="#"><i></i>Google</a></li>
													
												</ul>
											</div>
											<div class="login-right">
												<form name="signup" method="post">
												<h3>Create your account </h3>
					

				<input type="text" value="" placeholder="Full Name" name="fname" autocomplete="off" required="">
				<input type="text"  value="" placeholder="Mobile number" maxlength="10" name="mobilenumber" id="mob" onblur="return checkmob();" required><span id="mobile"></span>
                <input type="text" value="" placeholder="Email id" name="email" id="email" onBlur="return checkmail();" required><span id="eid"></span>
	            
				<input type="password" value="" placeholder="Password" name="password" required="">	
													<input type="submit" name="submit" id="submit" value="CREATE ACCOUNT">
												</form>
											</div>
												<div class="clearfix"></div>								
										</div>
											<p>By logging in you agree to our <a href="page.php?type=terms">Terms and Conditions</a> and <a href="page.php?type=privacy">Privacy Policy</a></p>
									</div>
								</div>
							</section>
					</div>
				</div>
			</div>