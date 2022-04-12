<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mainusermanager.aspx.cs" Inherits="Admin_mainusermanager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="../css/GatesSheet.css" rel="stylesheet" type="text/css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <br />
  




<div  style="border: 1px solid black; width:98%; margin:auto; text-align: left">
        <div style="background-color: #009595; height: 25px;">
            <span style="color:White" class="news_date1">Just for admin</span>
            <br />
        </div>
        <br />
        <span class="news_date2">Working with permission </span>
        <br />
      



      
    <section class='main'>

 
                <div class='line'></div>  

                <ul class='gatbtns'>

                                    <li class='btn'><a id="A6" href="ShowAllUsers.aspx"> users</a> </li>
 
                                    <li class='btn'><a id="A7" href="ShowAllRoles.aspx">permission</a> </li>

                                    <li class='btn'><a id="A5" href="Adddata.aspx">     Add category </a></li>

                                     <li class='btn'> <a id="A8" href="ADDNEWEMPLOYEEANDSTUDENT.aspx">Univeristy member</a></li>


                                   
                </ul> 


                <div class='clearfix'></div>  


            </section>


 



    
    </div>


</asp:Content>

