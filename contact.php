<?php 
$con=mysqli_connect("localhost","root","","clinicdb");
if(isset($_POST['btnSubmit']))
{
	$name = $_POST['txtName'];
	$idc = $_POST['txtidc'];
	$contact = $_POST['txtPhone'];
	$message = $_POST['txtMsg'];

	$query="insert into contact(name,idc,contact,message) values('$name','$idc','$contact','$message');";
	$result = mysqli_query($con,$query);
	
	if($result)
    {
    	echo '<script type="text/javascript">'; 
		echo 'alert("Message sent successfully!");'; 
		echo 'window.location.href = "contact.html";';
		echo '</script>';
    }
}