<html>
<head>
<style>
a{
    text-decoration:none;
    color:black;
}
button{
    border-radius:10px;
    background:#578df2;
}
body{
    background:black;
    color:white;
}
input{
    border-radius:10px;
}
</style>
</head>
<body>
<form action="mess.jsp" target="f1">
<b>Message:</b><input type="text" name="t" size="90" required=""><sub>
<input type="image" src="s.jpg" width="28" height="21" onClick="refresh()"></sub>
</form>
<script>
function refresh(){
    window.location.reload();
} 
</script>
</body>
</html>