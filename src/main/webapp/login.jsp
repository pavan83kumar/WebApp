<html>

<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="bootstrap-overridden.css" />

</head>
<body>

	<div class="container container-small">
		<div class="alert alert-warning">
		<h1 style="color:blue;">Login here!</h1>
			<strong>*</strong> Indicates required fields
		</div>
		<form class="form-horizontal" name="myForm" action=#>
			<div class="form-group">
				<label class="control-label col-sm-4">User Name:<span  style="color:red">*</span> </label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="uname"
						placeholder="Enter username" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">Password:<span  style="color:red">*</span></label>
				<div class="col-sm-8">
					<input type="password" class="form-control" id="pwd"
						placeholder="Enter password" required>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-8">
					<div class="col-sm-4">
						<button type="submit" class="btn btn-primary" onclick="validate()">Login</button>
					</div>
					<div class="col-sm-4">
						<button type="reset" class="btn btn-default"
							>Reset Form</button>
					</div>
				</div>
			</div>
			
		</form>
	</div>
	
	
</body>
</html>