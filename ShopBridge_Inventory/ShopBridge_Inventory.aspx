<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShopBridge_Inventory.aspx.cs" Inherits="ShopBridge_Inventory.ShopBridge_Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--CSS--%>
    <link href="CSS/MyStyleSheet.css" rel="stylesheet" />
   <%-- css bootstrap--%>
    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
    <%--css datatables--%>
    <link href="Datatable/CSS/jquery.dataTables.min.css" rel="stylesheet" />
    <%--css fontawesome--%>
    <link href="Fontawesome/css/all.css" rel="stylesheet" />
    <%--j query--%>
    <script src="Bootstrap/JS/jquery-3.3.1.slim.min.js"></script>
    <%--popper js--%>
    <script src="Bootstrap/JS/popper.min.js"></script>
    <%--bootstrap js--%>
    <script src="Bootstrap/JS/bootstrap.min.js"></script>

    <title></title>
</head>
<body>
    <h1 class="heading">Inventory</h1>
    <hr />

    <form id="form1" runat="server">
      
      <div class="container">
  <div class="row">
    <div class="col-6">
      Product ID
    </div>
    <div class="col-3">

        <asp:DropDownList ID="drpProductID" runat="server"></asp:DropDownList>
             
    </div>
    <div class="col-3">

      <asp:Button ID="btnGO" class="btn-primary " runat="server" Text="GO" Width="50%" OnClick="btnGO_Click" /> 
             
    </div>

  </div>

          <br />    

  <div class="row" id="ProductNameValidator">
    <div class="col">
   Product Name
    </div>
    <div class="col-6">
        <asp:TextBox ID="txtProductName" runat="server" placeholder="Product Name" Width="75%" ValidationGroup="G1"></asp:TextBox>
    </div>
    <div class="col">
      
     

    </div>
  </div>

          <br />    

   <div class="row">
    <div class="col">
   Suffix
    </div>
    <div class="col-6">
        <asp:TextBox ID="txtSuffix" runat="server" placeholder="Suffix" Width="75%"></asp:TextBox>
    </div>
    <div class="col">
      
    </div>
  </div>

          <br />

          <div class="row">
    <div class="col">
   Manufacturer
    </div>
    <div class="col-6">
        <asp:TextBox ID="txtManufacturer" runat="server" placeholder="Manufacturer" Width="75%"></asp:TextBox>
    </div>
    <div class="col">
      
    </div>
  </div>

          <br />

          <div class="row">
    <div class="col">
        Model Number
    </div>
    <div class="col-6">
        <asp:TextBox ID="txtMDLN" runat="server" placeholder="ModelNumber" Width="75%"></asp:TextBox>
    </div>
    <div class="col">
      
    </div>
  </div>

          <br />
    
          <div class="row">
    <div class="col">
        Mfg Date
    </div>
    <div class="col-6">
        <asp:TextBox ID="txtMFGD" runat="server" placeholder="Manufacture Date" Width="75%"></asp:TextBox>
    </div>
    <div class="col">
      
    </div>
  </div>

          <br />  

          <div class="row">
    <div class="col">
        Category
    </div>
    <div class="col-6">
        <asp:TextBox ID="txtCategory" runat="server" placeholder="Product Category" Width="75%"></asp:TextBox>
    </div>
    <div class="col">
      
    </div>
  </div>

          <br />

          <div class="row">
    <div class="col">
        Model Name
    </div>
    <div class="col-6">
        <asp:TextBox ID="txtMDLName" runat="server" placeholder="Model Name" Width="75%"></asp:TextBox>
    </div>
    <div class="col">
      
    </div>
  </div>

          <br />

          <div class="row">
    <div class="col">
        Product Cost
    </div>
    <div class="col-6">
        <asp:TextBox ID="txtProductCost" runat="server" placeholder="Cost Per Unit" Width="75%"></asp:TextBox>
    </div>
    <div class="col">
      
    </div>
  </div>

          <br />

             <div class="row">
    <div class="col">
        Product Quantity
    </div>
    <div class="col-6">
        <asp:TextBox ID="txtQuanity" runat="server" placeholder="Quantity" Width="75%"></asp:TextBox>
    </div>
    <div class="col">
      
    </div>
  </div>

          <br />

          
             <div class="row">
    <div class="col">
        Product Description
    </div>
    <div class="col-6">
         <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Width="75%"></asp:TextBox>
    </div>
   <div class="col">
       
    </div>
                
  </div>

          <br />

 

</div>
        <hr />
        <div class="container mx-auto">
  <div class="row">
    <div class="col">
 <asp:Button ID="btnAdd" class="btn-primary " runat="server" Text="Add" OnClick="btnAdd_Click" Width="75%"/>

    </div>
    <div class="col">
      <asp:Button ID="btnUpdate" class="btn-primary " runat="server" Text="Update" Width="75%" OnClick="btnUpdate_Click" /> 
    </div>
    <div class="col">
         <asp:Button ID="btnDelete" class="btn-primary " runat="server" Text="Delete" Width="75%" OnClick="btnDelete_Click" /> 

    </div>
  </div>
</div>

      
       
    </form>
     <footer class="my-5 pt-5 text-muted text-center text-small">

    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Home</a></li>
      <li class="list-inline-item"><a href="GridView.aspx">Next Page >></a></li>

    <p class="mb-1">&copy;2021 Durgaprasad Mohite</p>
   
     
      
    </ul>
  </footer>
</body>
</html>
