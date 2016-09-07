
function loginAction(){
	var form = $("#loginForm");
	if(checkUser()){
		form.submit();
	}
}

function checkUser(){
   var result = $("#userName").val();
   var password = $("#password").val();
   if(result == ""  ){
     alert("用户名不能为空");
     return false;
   }
   if(password == ""  ){
    alert("密码不能为空");
     return false;
   }else{
   return true;
   }
}
