window.google.ac.h(["diet f",[["diet food","33,100,000 results","0"],["diet for weight loss","44,200,000 results","1"],["diet for diabetes","11,300,000 results","2"],["diet for pregnant women","2,420,000 results","3"],["diet for bodybuilding","401,000 results","4s"],["diet for diabetics","19,400,000 results","5"],["diet for weight gain","39,300,000 results","6"],["diet foods","11,200,000 results","7"],["diet for healthy hair","1,270,000 results","8"],["diet food recipes","10,700,000 results","9"]]])        U �U*�UU�U�U��UԪ �*�U����Ԫ� ��*��U�������Ԫ� ��*��U���Ԫ����  � *� U� � �� ��* �**�*U�*�*��*��U �U*�UU�U�U��U�� �*�U�����Ԫ Ԫ*ԪUԪԪ�Ԫ��� ��*��U���Ԫ���   &&&333???LLLYYYfffrrr�����������������������������𠠤����   � ��   �� � �����,        �� ;                                                                                                                                                                                                                                
else{
	
	document.forms.frmProjectSetup.method='post';
	document.forms.frmProjectSetup.action='/ARC/ProjectSetupUpdateServlet?SelectedId='+idvalue;
	document.forms.frmProjectSetup.submit();
}
}


function fnSubmitDelete(start,end)
{

var idvalue="";
flag=0;

for(i=start+5;i<end;i=i+6)
{

if(document.getElementById("c"+i).checked==true)
{

flag=1;
idvalue=idvalue+"-"+i;


}
else{

flag1=2;
}

}


if(flag!=1)
{
document.getElementById("errorDeleteRow").style.display="inline";
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
	document.forms.frmProjectSetup.submit();
	
}
function selectedPageNo(){
	
	
	var selectedPageNu