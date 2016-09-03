

function fnLogin(){
	document.getElementById("errorUserDiv").style.display ="none";
	document.getElementById("errorPasswordDiv").style.display ="none";
	userName = document.loginForm.user.value;
	pWord = document.loginForm.password.value;
	
	if(userName == '' || userName.length == 0){
		
		//alert("Please enter User Name");
		
		document.getElementById("errorUserDiv").style.display ="inline";
		document.loginForm.user.focus();
		//document.getElementById("errorMessage1").style.display ="none";
	}else if(pWord == '' ||pWord.length == 0){
		//alert("Please enter Password");
		document.getElementById("errorPasswordDiv").style.display ="inline";
		document.loginForm.password.focus();
		//document.getElementById("errorMessage1").style.display ="none";
	}else{
		
		document.loginForm.submit();
	}
	
}
