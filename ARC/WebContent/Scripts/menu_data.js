fixMozillaZIndex=true; //Fixes Z-Index problem  with Mozilla browsers but causes odd scrolling problem, toggle to see if it helps
_menuCloseDelay=500;
_menuOpenDelay=150;
_subOffsetTop=2;
_subOffsetLeft=-2;




with(menuStyle=new mm_style()){
bordercolor="#EE0000";
borderstyle="solid";
borderwidth=0;
fontfamily="Verdana, Tahoma, Arial";
fontsize="75%";
fontstyle="normal";
headerbgcolor="#E6E6FF";
headercolor="#E6E6FF";
offbgcolor="#E6E6FF";
offcolor="black";
onbgcolor="#336699";
oncolor="#E6E6FF";
outfilter="randomdissolve(duration=0.3)";
overfilter="Fade(duration=0.2);Alpha(opacity=500);Shadow(color=#777777', Direction=135, Strength=3)";
padding=7;
pagebgcolor="#E6E6FF";
pagecolor="#EE0000";
separatorcolor="gray";
separatorsize=1;
subimage="../Images/arrow.gif";
subimageposition="right";
subimagepadding=8;
}

with(menuStyle1=new mm_style()){
bordercolor="#EE0000";
borderstyle="solid";
borderwidth=0;
fontfamily="Verdana, Tahoma, Arial";
fontsize="75%";
fontstyle="normal";
headerbgcolor="#E6E6FF";
headercolor="#E6E6FF";
offbgcolor="#E6E6FF";
offcolor="black";
onbgcolor="#336699";
oncolor="#E6E6FF";
outfilter="randomdissolve(duration=0.3)";
overfilter="Fade(duration=0.2);Alpha(opacity=500);Shadow(color=#777777', Direction=135, Strength=3)";
padding=7;
pagebgcolor="#E6E6FF";
pagecolor="#EE0000";
separatorcolor="gray";
separatorsize=1;
subimage="../Images/arrow1.gif";
subimageposition="right";
subimagepadding=8;
}

with(milonic=new menuname("Main Menu")){
alwaysvisible=1;
orientation="horizontal";
style=menuStyle;
aI("text=Home;url=Home.jsp;");
aI("showmenu=projm;text=&nbsp;&nbsp;&nbsp;Business Update");
aI("text=&nbsp;Revenue Projection&nbsp;;url=jsp/RevenueProjection.jsp;");
aI("text=&nbsp;Resource Data&nbsp;;url=ResourceData.jsp;");
aI("text=&nbsp;Project Maintenance&nbsp;;url=jsp/ProjectSetup1.jsp;");
aI("text=&nbsp;Financial Data&nbsp;;url=FinancialData.jsp;");
aI("showmenu=effort;text=&nbsp;&nbsp;&nbsp;&nbsp;Unbilled Effort&nbsp;");
aI("text=&nbsp;Generate Reports&nbsp;;url=Reports.jsp;");

}


with(milonic=new menuname("projm")){
style=menuStyle1;
aI("text=Opportunity;url=opportunity.jsp;");
aI("text=Extended Opportunity;url=extopp.jsp;");
}

with(milonic=new menuname("effort")){
style=menuStyle1;
aI("text=&nbsp;Set Working Days&nbsp;&nbsp;;url=WorkingDayssetup.jsp;");
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;Unbilled Effort&nbsp;;url=UnbilledEffort.jsp;");
}

with(milonic=new menuname("taskm")){
style=menuStyle1;
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbspAdd Task&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;url=AddTask.jsp;");
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Update Task&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;url=MODIFYTASK.jsp;");
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Delete Task&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;url=MODIFYTASKPRE.jsp;");
}


with(milonic=new menuname("userm")){
style=menuStyle1;
aI("showmenu=memberm;text=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;Member&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
aI("showmenu=anchorm;text=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Anchor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
}


with(milonic=new menuname("memberm")){
style=menuStyle1;
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Member&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;url=addjoinee.jsp;");
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;Update Member&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;url=modify_Joinee.jsp;");
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;Delete Member&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;url=DeleteJoinee.jsp;");
}

with(milonic=new menuname("anchorm")){
style=menuStyle1;
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Anchor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;url=AddAnchor.jsp;");
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Update Anchor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;url=modify_anchor.jsp;");
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Delete Anchor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;url=DeleteAnchor.jsp;");
}


with(milonic=new menuname("Reports")){
style=menuStyle1;
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Project&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;url=AddProject.jsp;");
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Project Setup&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;url=ProjectSetup.jsp;");

}


drawMenus();

