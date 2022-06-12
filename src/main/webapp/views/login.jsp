<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Singh Enterprises</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">


<script>
function validateForm() {
 
  let x = document.forms["myForm"]["vcode"].value;
  let y = document.forms["myForm"]["pnumber"].value;
  let z = document.forms["myForm"]["password"].value;
  
  if (x == "" || y=="" ) {
	    alert("Mandatory fields must be filled out");
		  return false;
	}
  else if (z=="")
	  {
	  alert("Mandatory fields must be filled out");
	  return false;
	  }
  else if(x!="0010001123" || y!="CXUPR5930F"){
	  document.getElementById("error").innerHTML = "Incorrect credentials";  
	  return false;
   }
  else if(z!="Tarun@18"){
	  document.getElementById("error").innerHTML = "Incorrect credentials";  
	  return false;
   }
}
</script>

</head>
<body style="background-image:url(https://www.jsw.in/sites/default/files/assets/downloads/steel/IR/Financial%20Performance/Annual%20Reports%20Steel/jsw-steel-20-21/images/strategic-top-img5.png);width:100%;">


<form style="margin-top:55px; ">
<div class="jumbotron">
  <h1>Login to access Portal</h1>
 
</div>
</form>

<div style="width:30%; ">
<form action ="/details" method="get" onsubmit="return validateForm()" name="myForm" style="text-align: center;background-color: #ffffe6; ">

  <div class="form-group">
    <label for="vendorcode" >Vendor Code <span Style="color:red;">*</span></label>
    <input type="text" name="vcode" class="form-control" id="vendorcode" placeholder="abc123">
  
  </div>
  <div class="form-group">
    <label for="pannumber">Pan Number <span Style="color:red;">*</span></label>
    <input type="text" name="pnumber" class="form-control" id="pannumber" placeholder="PAN">
  </div>
 
  <div class="form-group">
    <label for="password">Password <span Style="color:red;">*</span></label>
    <input type="password" name="password" class="form-control" id="password" placeholder="Password">
  </div>
  
  <div style="margin-top: 20px; ">	
  <p id="error" style="color:red;"></p>	
  <button type="submit"  class="btn btn-primary">Login</button>
  </div>
  
 
   <div style="margin-top: 20px; ">		
  <button type="button" class="btn btn-secondary">Queries</button>
  
  <button type="button" class="btn btn-secondary">feedback</button>
  </div>
  <small  class="form-text text-muted">You can reach us for any queries - singhenterprises0023@gmail.com</small>
   </form>
</div>

</body>
</html>