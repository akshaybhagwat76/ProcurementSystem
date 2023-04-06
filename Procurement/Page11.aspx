<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page11.aspx.cs" Inherits="Procurement.Page11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form >
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <label>General Ledger Account</label>
                <select class="form-control"></select>
            </div>
           
        </div>
        <div class="col-md-8">
            <div class="form-group">
                <label>Description</label>
                <input type="text" class="form-control" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2">
            <div class="form-group">
                <label>Account Currency</label>
                <input type="text" class="form-control" />
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <label>Account Category</label>
                <input type="text" class="form-control" />
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <label>Account Type</label>
                <input type="text" class="form-control" />
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <label>Posted Balance (Base Currency)</label>
                <input type="text" class="form-control" />
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <label>Posted Balance (Account Currency)</label>
                <input type="text" class="form-control" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2">
            <div class="form-group">
                <label>Dates</label>
                <select type="text" class="form-control"></select>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <label>From</label>
                <select type="text" class="form-control"></select>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <label>To</label>
                <select type="text" class="form-control"></select>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Journal Type</h3>
        </div>
        <div class="card-body">
            <table class="table table-bordered">
                <tr>
                    <th>Journa #</th>
                    <th>Journal</th>
                    <th>Period</th>
                    <th>Period Date</th>
                    <th>Description</th>
                    <th>Fiscal year</th>
                    <th>Debit</th>
                    <th>Credit</th>
                </tr>
            </table>
        </div>
    </div>
</form>

</asp:Content>
