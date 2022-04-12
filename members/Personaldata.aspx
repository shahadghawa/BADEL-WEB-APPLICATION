<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Personaldata.aspx.cs" Inherits="members_Personaldata" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <script type="text/javascript">
      function uploadStarted() {
          $get("ContentPlaceHolder1_imgDisplay").style.display = "none";
      }
      function uploadComplete(sender, args) {
          var imgDisplay = $get("ContentPlaceHolder1_imgDisplay");
          imgDisplay.src = "images/loader.gif";
          imgDisplay.style.cssText = "";
          var img = new Image();
          img.onload = function () {
              imgDisplay.style.cssText = "height:300px; width: 80%";
              imgDisplay.src = img.src;
          };
          img.src = "<%=ResolveUrl(UploadFolderPath) %>" + args.get_fileName(); ;
      }
     

  </script>
    <style type="text/css">
        .imgsize
        {
            width: 80%;
            height: 200px;
        }
        
        .Calendar
        {
            background-color: White;
            color: red;
            font-family: Courier New;
            font-size: 17px;
            font-weight: bold;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class='left col6 toright '>
      <h2 style="direction:rtl ; font-family:Arial" class='blocktitle'> personal picture </h2> 
        
      <div style="width:80%; float:right">
                    <img id="imgDisplay" runat="server" style="width:300px"   class="imgsize" alt="" src="" />
                    <br />
                    <asp:AsyncFileUpload OnClientUploadComplete="uploadComplete" runat="server" ID="AsyncFileUpload1"
                        Width="80%" UploaderStyle="Modern" CompleteBackColor="White" UploadingBackColor="#CCFFFF"
                        ThrobberID="imgLoader" OnUploadedComplete="FileUploadComplete" OnClientUploadStarted="uploadStarted" />
           
            </div>
           
            </section>

           
    <section class='main col6 toleft'>
                <h2 style="font-family:Arial" class='blocktitle'> personal data 
    </h2>      

                 

                <div class='inputrow tworows _100'>
                    <label> full name :</label> <asp:TextBox ID="personname" Font-Size="16pt"   runat="server"></asp:TextBox>
                    
                </div>

               
                <div class='inputrow _25'>
                    <label>  fax </label><asp:TextBox ID="fax" Font-Size="16pt"   runat="server"></asp:TextBox> 
                </div>   

                 <div class='inputrow _25'>
                    <label>mobile 1</label><asp:TextBox ID="mob2" Font-Size="16pt"   runat="server"></asp:TextBox>
                </div>
                 <div class='inputrow _25'>
                    <label> mobile 2</label><asp:TextBox ID="mob1" Font-Size="16pt"   runat="server"></asp:TextBox>
                </div>

                <div class='inputrow _25'>
                    <label> phone</label><asp:TextBox ID="phone" Font-Size="16pt"   runat="server"></asp:TextBox>
                </div>


                  <div class='inputrow tworows _100'>
                    <label> email :</label> <asp:TextBox ID="mail" Font-Size="16pt"   runat="server"></asp:TextBox>
                    
                </div>

                    <div class='inputrow tworows _100'>
                    <label> address :</label> <asp:TextBox ID="addrex" Font-Size="16pt"   runat="server"></asp:TextBox>
                    
                </div>

                 <div class='inputrow tworows _100'>
                    <label> Department</label>
                
                     <asp:DropDownList ID="DropDownList5" Width="100%" Font-Size="16pt" runat="server">
                   
                    </asp:DropDownList> 
                </div>


                 <div class='inputrow tworows _100'>
                    <label> jop</label>
                
                     <asp:DropDownList ID="DropDownList1" Width="100%" Font-Size="16pt" runat="server">
                   
                    </asp:DropDownList> 
                </div>


                



           

                <div class='inputrow _50 '>
                    <label> Age</label><asp:TextBox ID="age" Font-Size="16pt"   runat="server"></asp:TextBox>
                  
                </div>

                  <div class='inputrow _50 '>
                    <label>اSocial status</label><asp:TextBox ID="socialstate" Font-Size="16pt"   runat="server"></asp:TextBox>
                </div>


                <div class='inputrow tworows'>
                    <label>About me  </label>
                     <asp:TextBox ID="desc" TextMode="MultiLine" runat="server"></asp:TextBox>
                </div>  
                
                
<asp:Panel ID="Panel1" runat="server">

                     <div class='inputrow _50'>
                    <label>  user name  </label><asp:TextBox ID="Theuser_name" Enabled="false" Font-Size="16pt"   runat="server"></asp:TextBox> 
                </div>   

                <div class='inputrow _25'>
                    <label> nationalid</label><asp:TextBox ID="Identity_num" Font-Size="16pt" Enabled="false"  runat="server"></asp:TextBox>
                </div>
                <div class='inputrow _25'>
                    <label>    member </label><asp:TextBox ID="userkind" Font-Size="16pt" Enabled="false"  runat="server"></asp:TextBox>
                </div>
                </asp:Panel>
                
                
                
                 

                

                <div class='line'></div>
                <asp:Panel ID="Panel2" runat="server">

                  <label>
                                           <asp:Button ID="Button1" runat="server" Text="حفظ البيانات " OnClick="Button1_Click1" />
            
                    <asp:Button ID="Button2" runat="server" Text="الغـــاء" PostBackUrl="~/Member/membermanager.aspx" />
                    
                    
                    
                    
                    </label>
                    <asp:Label ID="Label1" runat="server"  ForeColor="Red" Text="Label"></asp:Label>
                    </asp:Panel>

             <%--   <button  class='submit'> submit</button>
                <button class='reset' > resset</button>
                <button   > button</button>--%>
                <div class='clearfix'> </div>

    </section>

      <div class='clearfix'>
    </div>



      <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>



</asp:Content>

