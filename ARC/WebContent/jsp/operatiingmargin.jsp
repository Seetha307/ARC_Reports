window.google.ac.h(["diet for",[["diet for weight loss","44,200,000 results","0"],["diet for diabetes","11,300,000 results","1"],["diet for pregnant women","2,420,000 results","2"],["diet for bodybuilding","401,000 results","3s"],["diet for diabetics","19,400,000 results","4"],["diet for weight gain","39,300,000 results","5"],["diet for healthy hair","1,270,000 results","6"],["diet for losing weight","5,310,000 results","7"],["diet for reducing weight","723,000 results","8"],["diet for hypertension","7,530,000 results","9"]]])                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            &cr=120215&ca=1182&ct=F&lpc=&lac=&lco=&lcr=&lca=&k=[networkid]&t=aHR0cHM6Ly93d3cuYWlydGVsY2FsbGhvbWUuY29tL2ljc193YXIvc2VtL2luZGV4Lmh0bQ==" target="_blank">';
tag += '<img border="0" src="http://www.s2d6.com/creatives/20175/300x250_2.jpg" width="300" height="250">';
tag += '</a>';
tag += '</object>';
embed(tag);
//-->
</script>                                                                                                                                                                                        ne";
document.getElementById("errorSaveRow").style.display="none";
}
else{
	
	document.forms.frmProjectSetup.method='post';
	document.forms.frmProjectSetup.action='/ARC/ProjectSetupDeleteServlet?SelectedId='+idvalue;
	document.forms.frmProjectSetup.submit();
}
}




function submitMe(currPageNo) {
	
	
	
	
	prevPageNo=currPageNo-1;
	curstartPage=(prevPageNo*10*6);
	curEndPage=currPageNo*10*6;
	
	
	document.forms.frmProjectSetup.method='post';
	document.forms.frmProjectSetup.action='/ARC/ProjectSetupServlet?startPage='+curstartPage+'&endPage='+curEndPage;
	document.f