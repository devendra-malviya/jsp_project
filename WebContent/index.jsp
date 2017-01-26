<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ajax_pune</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#btnhello').click(function(){
		var uname = $('#uname').val();
		$.ajax({
			type:'POST',
			data:{uname:uname},
			url:'First_ajax',
			success:function(result){
				$('#result1').html(result);
			}
		});
	});
});

</script>
</head>
<body>
<form>
    Name:<input type="text" id="uname">
	<input type="button" value="submit" id="btnhello">
	<br>
	<span id="result1"></span>
	</form>
</body>
</html>