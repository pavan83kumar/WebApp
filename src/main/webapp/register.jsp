<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="bootstrap-overridden.css" />

</head>
<body>
	
	

	<div class="container container-small">
		<div class="alert alert-warning">
		<h1 style="color:blue;">New User Register here!</h1>
			<strong>*</strong> Indicates required fields
		</div>
		<form class="form-horizontal" name="myForm" action="register.jsp">
			<div class="form-group">
			
				<label class="control-label col-sm-4">User Name:<span
					style="color: red">*</span>  </label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="uname"
						placeholder="Enter username" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">Password:<span
					style="color: red"><strong>*</strong></span></label>
				<div class="col-sm-8">
					<input type="password" class="form-control" id="pwd"
						placeholder="Enter password" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">Confirm Password:<span
					style="color: red"><strong>*</strong></span></label>
				<div class="col-sm-8">
					<input type="password" class="form-control" id="cpwd"
						placeholder="Enter password" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">First Name:<span
					style="color: red"><strong>*</strong></span></label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="fname"
						placeholder="Enter firstname" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">Last Name:<span
					style="color: red"><strong>*</strong></span></label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="lname"
						placeholder="Enter lastname" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">Full Name:<span
					style="color: red">*</span></label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="fullName"
						placeholder="Enter fullname" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">Email Address:<span
					style="color: red">*</span></label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="email"
						placeholder="Enter email address">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-8">
					<div class="col-sm-4">
						<button type="submit" class="btn btn-primary" onclick="validate()">Register</button>
					</div>
					<div class="col-sm-4">
						<button class="btn btn-default"
							onclick="window.location.href='login.jsp'">Cancel</button>

					</div>
					<div class="col-sm-4">
						<button type="reset" class="btn btn-default">Reset Form</button>
					</div>
				</div>
			</div>
		</form>
		
		 <a href="login.jsp"> <strong>Click here to login</strong></a>
	</div>

	<script>
		function validate() {
			var message = "";
			var re = "";
			if (document.getElementById("uname").value == "") {
				message = message + "User Name cannot be empty!\n";
			}

			if (document.getElementById("pwd").value == "") {

				message = message + " Password cannot be empty!\n";
			}

			if (document.getElementById("pwd").value.length < 10) {
				message = message
						+ " Password must contain at least ten characters!\n";
				myForm.pwd.focus();
			}

			if (document.getElementById("pwd").value == document
					.getElementById("uname").value) {
				message = message
						+ " Password must be different from Username!\n";
				myForm.pwd.focus();
			}
			re = /[0-9]/;
			if (!re.test(document.getElementById("pwd").value)) {
				message = message
						+ " password must contain at least one number (0-9)!\n";
				myForm.pwd.focus();
			}
			re = /[a-z]/;
			if (!re.test(document.getElementById("pwd").value)) {
				message = message
						+ " password must contain at least one lowercase letter (a-z)!\n";
				myForm.pwd.focus();
			}
			re = /[A-Z]/;
			if (!re.test(document.getElementById("pwd").value)) {
				message = message
						+ " password must contain at least one uppercase letter (A-Z)!\n";
				myForm.pwd.focus();
			}
// 			re = "!`@#$%^&*()+=-[]\\\';,./{}|\":<>?~_";
// 			if (!re.test(document.getElementById("pwd").value)) {
// 				message = message
// 						+ " password must contain at least one special character!\n";
// 				myForm.pwd.focus();
// 			}
			if (document.getElementById("cpwd").value == "") {

				message = message + " Confirm Password cannot be empty!\n";
			}
			if (document.getElementById("pwd").value != document
					.getElementById("cpwd").value) {
				message = message
						+ " Password and Confirm Password must match!\n";

			}

			if (document.getElementById("fname").value == "") {
				message = message + " First Name cannot be empty!\n";
			}
			if (document.getElementById("fname").value.length < 8) {
				message = message
						+ " First Name should contain atleast 8 characters!\n";
			}
			if (document.getElementById("lname").value == "") {
				message = message + "Last Name cannot be empty!\n";
			}

			re = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			if (!re.test(document.getElementById("email").value)) {
				message = message + " Please enter valid email Address!\n"
			}
			if (message !== "") {
				alert(message);
			}
		}

		
	</script>

</body>
</html>

