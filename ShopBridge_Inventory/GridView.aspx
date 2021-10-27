<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="ShopBridge_Inventory.GridView" %>

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
    <h1 class="heading">Inventory Details</h1>
    <hr />
        
    <form id="form1" runat="server">
      
        <asp:GridView ID="drdInventory" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

      
        <hr />
        

      
       
    </form>
     <footer class="my-5 pt-5 text-muted text-center text-small">

    <ul class="list-inline">
        <li class="list-inline-item"><a href="\ShopBridge_Inventory.aspx"><< Previouse Page</a></li>
      <li class="list-inline-item"><a href="#">Home</a></li>
      

    <p class="mb-1">&copy;2021 Durgaprasad Mohite</p>
   
     
      
    </ul>
  </footer>
</body>

</html>
