<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="Procurement.Page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
    <div class="col-md-9">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label>Account</label>
                   <%-- @*@Html.DropDownList("ACNT_Code", ViewBag.Account as SelectList,new { @class="form-control"})*@
                    <select class="form-control" asp-for="AccountNo" onchange="loadDiscription()">
                        @foreach(var v in ViewBag.Account)
                        {
                            <option value="@v.ACNT_Code">@v.ACNT_Code</option>
                        }
                    </select>--%>
                    <asp:DropDownList runat="server" CssClass="form-control" id="account">

                    </asp:DropDownList>

                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>Account Description</label>
                    <input asp-for="DESCRIPT" disabled class="form-control" />
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>Account Category</label>
                    <input type="text" class="form-control" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label>location/sublocation</label>
                    <select class="form-control"></select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>loc/sub-loc Description</label>
                    <input type="text" class="form-control" />
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>Account Currency</label>
                    <input asp-for="Curr_Code" disabled class="form-control" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <input type="checkbox" class="form-check-inline" />Include sub cost centers
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Fiscal year</label>
                 <asp:DropDownList id="DropDownList1"  AutoPostBack = "true"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"  CssClass="form-control" runat="server" > 
  
</asp:DropDownList>  
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Previouse posted balance</label>
                    <input asp-for="previouseBalance" disabled class="form-control" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Current Posted balance</label>
                    <input asp-for="currentBalance" disabled class="form-control" />
                </div>
            </div>
        </div>

    </div>
</div>
 
<div class="row no-gutters">
    <%--<div class="col-md-6">
        <div class="card">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th colspan="3">2005</th>
                    </tr>
                    <tr>
                        <th>Period</th>
                        <th>Balance</th>
                        <th>Activity</th>
                      
                    </tr>
                </thead>
                <tbody  id="t1">
                   
                   
                 
                </tbody>
            </table>
        </div>
    </div>
    <div class="col-md-6">
        <table class="table table-bordered">
            <thead id="h1">
                <tr>
                  
                    <th colspan="3" id="h1">2004</th>
                </tr>
                <tr>
                    
                    <th>Previouse Period</th>
                    <th>Previouse balance</th>
                    <th>Previouse activity</th>
                </tr>
            </thead>
            <tbody id="t2">
             
            </tbody>
        </table>
    </div>--%>
    <h1>Table 1</h1>
    <asp:GridView ID="gridService" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="false" ShowFooter="true">  
                    <Columns>  
                        <asp:TemplateField ItemStyle-Width="630px" HeaderText="Period">  
                            <ItemTemplate>  
                                <asp:Label ID="Period" runat="server"  
                                  Text='<%#Eval("perioddesc")%>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Balance">  
                            <ItemTemplate>  
                                <asp:Label ID="lblBalance" runat="server" Text='<%#Eval("balance")%>'></asp:Label>  
                            </ItemTemplate>  
                               
                             
                        </asp:TemplateField>  
                          <asp:TemplateField ItemStyle-Width="600px" HeaderText="Activity">  
                            <ItemTemplate>  
                                <asp:Label ID="lblBalance" runat="server" Text='<%#Eval("activity")%>'></asp:Label>  
                            </ItemTemplate>  
                               
                             
                        </asp:TemplateField>  
                         
                    </Columns>  
                </asp:GridView>  
    <br />
    <br />
    <h1>Table 2</h1>
      <asp:GridView ID="GridView1" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="false" ShowFooter="true">  
                    <Columns>  
                    

                          <asp:TemplateField ItemStyle-Width="600px" HeaderText="Previous year period">  
                            <ItemTemplate>  
                                <asp:Label ID="lblBalance" runat="server" Text='<%#Eval("perviousyeardesc")%>'></asp:Label>  
                            </ItemTemplate>  
                               
                             
                        </asp:TemplateField>  
                          <asp:TemplateField ItemStyle-Width="600px" HeaderText="Previous Year Balance">  
                            <ItemTemplate>  
                                <asp:Label ID="lblBalance" runat="server" Text='<%#Eval("previouseyearbalance")%>'></asp:Label>  
                            </ItemTemplate>  
                               
                             
                        </asp:TemplateField>  
                          <asp:TemplateField ItemStyle-Width="600px" HeaderText="Previous year activity">  
                            <ItemTemplate>  
                                <asp:Label ID="lblBalance" runat="server" Text='<%#Eval("previouseyearactivity")%>'></asp:Label>  
                            </ItemTemplate>  
                               
                             
                        </asp:TemplateField>  
                          <asp:TemplateField ItemStyle-Width="600px" HeaderText="Balance Year">  
                            <ItemTemplate>  
                                <asp:Label ID="lblBalance" runat="server" Text='<%#Eval("balancyear")%>'></asp:Label>  
                            </ItemTemplate>  
                               
                             
                        </asp:TemplateField>  
                       
                    
                           
                          
                      
                     
                    </Columns>  
                </asp:GridView>  


</div>

<%--<script>
    $(document).ready(function () {
        loadDiscription();
        loadBalance();
});
function loadDiscription() {
    var AccountNo = $("#AccountNo").find(":selected").val();
    $.get("/Page1/LoadData", { AccountNo: AccountNo }, function (res) {
        document.getElementById("DESCRIPT").value = res.descript;
        document.getElementById("Curr_Code").value = res.curR_Code
;
    })
   
    }
    function loadBalance() {
        document.getElementById("currentBalance").value = 0;
        document.getElementById("previouseBalance").value = 0;
         var year = $("#FiscalYear").find(":selected").val();
         $.get("/Page1/LoadBalance", { year: year }, function (res) {
             document.getElementById("currentBalance").value = res.currentbalance;
             document.getElementById("previouseBalance").value = res.previousBalance;
         })
        loadTableData();
    }
    function loadTableData() {
        $("#t1").empty();
        var total1 = 0;
        var year = $("#FiscalYear").find(":selected").val();
        $.get("Page1/LoadTableData", { year: year }, function (res) {


           
            res.forEach(function (dt) {
                total1 += dt.activity;
                $("#t1").append("<tr>" +
                    "<td>" + dt.perioddesc + "</td>" +
                    "<td>" + dt.balance + "</td>" +
                    "<td>" + dt.activity + "</td>"
                    + "</tr>")
            })
             $("#t1").append("<tr>" +
                "<td colspan='2'>" + "</td>" + "<td>" + total1 + "</td>");
        });
          $("#t2").empty();

        var year = $("#FiscalYear").find(":selected").val();
        $.get("Page1/LoadSecondTableData", { year: year }, function (res) {
            
            var total = 0;
            console.log(res);
            res.forEach(function (dt) {
                total += dt.previouseyearactivity;
                $("#t2").append("<tr>" +
                    "<td>" + dt.perviousyeardesc + "</td>" +
                    "<td>" + dt.previouseyearbalance + "</td>" +
                    "<td>" + dt.previouseyearactivity + "</td>"
                    + "</tr>")
            })
            $("#t2").append("<tr>" +
                "<td colspan='2'>" + "</td>" + "<td>" + total + "</td>");
        })
    }
</script>--%>
    <script>
      
        $(document).ready(function () {
            debugger
            $.get("WebService1.asmx/LoadTableData?year=2004", function (data, status) {
                console.log(data);

                debugger


                console.log(data);


            });
        })
    
    </script>
    

</asp:Content>
