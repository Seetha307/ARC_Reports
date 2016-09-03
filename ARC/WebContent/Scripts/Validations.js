
function fnSubmitLogin(){

	document.body.onkeypress = enterkey ;
}
function enterkey(evt) { 
  var evt = (evt) ? evt : event 
  var charCode = (evt.which) ? evt.which : evt.keyCode 
  if (charCode == 13) { 
    fnLogin();
  } 
} 
function fnLogin(){
	document.getElementById("errorUserDiv").style.display ="none";
	document.getElementById("errorPasswordDiv").style.display ="none";
	userName = document.loginForm.user.value;
	pWord = document.loginForm.password.value;
	
	if(userName == '' || userName.length == 0){
		
		//alert("Please enter User Name");
			document.getElementById("errorMessage1").style.display ="none";
			document.getElementById("errorAuthMessage").style.display="none";
		document.getElementById("errorUserDiv").style.display ="inline";
		
		document.loginForm.user.focus();
		//document.getElementById("errorMessage1").style.display ="none";
	}else if(pWord == '' ||pWord.length == 0){
		//alert("Please enter Password");
			document.getElementById("errorMessage1").style.display ="none";
			document.getElementById("errorAuthMessage").style.display="none";
		document.getElementById("errorPasswordDiv").style.display ="inline";
		document.loginForm.password.focus();
		//document.getElementById("errorMessage1").style.display ="none";
	}else{
		
		document.loginForm.submit();
	}
	
}
function fnAddProject(){
	document.getElementById("errorProjectcodeDiv").style.display ="none";
	document.getElementById("errorDescriptionDiv").style.display ="none";
	Cmm=document.AddProjectfrm.cmm.value;
	Description=document.AddProjectfrm.txtprojcodeDescription.value;
	Projectcode=document.AddProjectfrm.txtprojcode.value;
	Type=document.AddProjectfrm.type.value;
	Cmm=document.AddProjectfrm.cmm.value;
	Locations=document.AddProjectfrm.Locations.value;
	Month=document.AddProjectfrm.Month.value;
	if(Projectcode==''||Projectcode.length==0)
	{	
		document.getElementById("errorAddMsg").style.display ="none";
		document.getElementById("errorAddMsg1").style.display ="none";
		document.getElementById("errorProjectcodeDiv").style.display ="inline";
		document.AddProjectfrm.txtprojcode.focus();
	}else if(Description==''||Description.length==0)
	{
		document.getElementById("errorAddMsg").style.display ="none";
		document.getElementById("errorAddMsg1").style.display ="none";
		document.getElementById("errorDescriptionDiv").style.display ="inline";
		document.AddProjectfrm.txtprojcodeDescription.focus();
	}
	 
	else{
		document.AddProjectfrm.submit();
	}
		
}
	