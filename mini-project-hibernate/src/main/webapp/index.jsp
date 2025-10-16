<html>
<head>
<title>Home Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.0/css/all.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}
	h2 {
		font-family: cursive;
		font-weight: bold;
		letter-spacing: 10px;
		font-size: 35px;
		border-radius: 20px 20px 0 0;
		padding: 10px;
		animation: bg-color 20s linear infinite;
	}
	@keyframes bg-color {
		0% { background-color: black; color: yellow; box-shadow: 0 0 15px blue; }
		25% { background-color: darkred; color: white; box-shadow: 0 0 15px white; }
		50% { background-color: blueviolet; color: bisque; box-shadow: 0 0 15px deeppink; }
		75% { background-color: teal; color: red; box-shadow: 0 0 15px yellow; }
		100% { background-color: black; color: yellow; box-shadow: 0 0 15px blue; }
	}
	.bg-info {
		background: linear-gradient(45deg, teal, pink, darkslategray);
	}
	input:hover, select:hover {
		box-shadow: 0px 0px 15px darkslategray;
		border: 3px solid blue;
	}
</style>
</head>
<body class="m-2">
	<div class="col-12">
		<h2 class="text-center ms-0"><marquee>Welcome to GQT</marquee></h2>
	</div>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 bg-info animate__animated animate__backInRight" style="box-shadow:0px 0px 15px black;">
				<p class="display-6 fw-bold text-center mb-0" style="font-family: Dancing Script,serif;">Student Registration</p>
				<hr>
				
				<form action="/mini-project-hibernate/SaveRecord" method="post">
					<div class="form-floating mb-3">
						<input type="number" name="sid" placeholder="Student Id" id="sid" class="form-control" required>
						<label for="sid">Student ID</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" name="fn" placeholder="Student Name" id="fn" class="form-control" required>
						<label for="fn">Student Name</label>
					</div>
					<div class="mb-3">
						<select name="gender" class="form-select" required>
							<option value="">--Select Gender--</option>
							<option value="Male">Male</option>
							<option value="Female">Female</option>
						</select>
					</div>
					<div class="mb-3">
						<select name="city" class="form-select" required>
							<option value="">--Select City--</option>
							<option value="Hyderabad">Hyderabad</option>
							<option value="Banglore">Banglore</option>
							<option value="Pune">Pune</option>
							<option value="Maharastra">Maharastra</option>
						</select>
					</div>
					<div class="mb-3">
						<select name="course" class="form-select" id="course" required>
							<option value="">--Select Course--</option>
							<option value="Java FullStack">Java FullStack</option>
							<option value="Python">Python</option>
							<option value="Testing">Testing</option>
							<option value="Front End Technologies">Front End Technologies</option>
						</select>
					</div>
					<div class="form-floating mb-3">
						<input type="text" name="duration" id="duration" class="form-control" placeholder="Course duration" readonly>
						<label for="duration">Course Duration</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" name="amount" id="amount" class="form-control" placeholder="Amount to be paid" readonly>
						<label for="amount">Amount to be paid</label>
					</div>
					<div class="mt-4 d-grid gap-2 mb-3">
						<input type="submit" value="Register" class="btn btn-outline-dark fst-italic fs-5 fw-bold" style="letter-spacing: 4px;">
					</div>
				</form>
			</div>

			<div class="col-md-8">
				<img src="images/building.jpg" alt="Image not available" height="540px" width="100%">
			</div>
		</div>
	</div>

	<script>
		let amountToBePaid = () => {
			let amountBox = document.querySelector("#amount");
			let durationBox = document.querySelector("#duration");
			if(courseBox.value === "Java FullStack"){
				amountBox.value=35000;
				durationBox.value = "2 Months";
			}
			else if(courseBox.value === "Python"){
				amountBox.value=32000;
				durationBox.value = "2 Months";
			}
			else if(courseBox.value === "Testing"){
				amountBox.value=17000;
				durationBox.value = "1 Month";
			}
			else if(courseBox.value === "Front End Technologies"){
				amountBox.value=22000;
				durationBox.value = "2 Months";
			}
		}
		let courseBox = document.querySelector("#course");
		courseBox.addEventListener("change", amountToBePaid);
	</script>
</body>
</html>