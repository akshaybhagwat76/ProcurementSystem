<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PurchaseJournal.aspx.cs" Inherits="Procurement.PurchaseJournal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form style="background-color:darkgray">
    <fieldset class="border p-2">
        <legend class="w-auto">Journal</legend>
        <div class="row" style="margin-top:-10px">
            <div class="col-md-2">
                <div class="form-group">
                    <label>Journal #</label>
                    <select class="form-control"></select>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label>Fiscal Year</label>
                    <select class="form-control"></select>
                </div>
            </div>
            <div class="col-md-1">
                <div class="form-group">
                    <label>Period</label>
                    <select class="form-control"></select>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label>Journal Group</label>
                    <select class="form-control"></select>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label>Description</label>
                    <input type="text" class="form-control" />
                </div>
            </div>
        </div>
    </fieldset>
    <fieldset class="border p-2">
        <legend class="w-auto">Transactions</legend>
        <div class="row" style="margin-top:-10px">
            <div class="col-md-2">
                <div class="form-group">
                    <label>Transaction #</label>
                    <select class="form-control"></select>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label>Date</label>
                    <select class="form-control"></select>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label>Created By</label>
                    <select class="form-control"></select>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label>Vendor</label>
                    <select class="form-control"></select>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label>On Credit hold</label>
                    <input type="text" class="form-control" />
                </div>
            </div>
        </div>
        <div class="row" style="margin-top:-10px">
            <div class="col-md-2">
                <div class="form-group">
                    <label>Source #</label>
                    <select class="form-control"></select>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label>&nbsp;</label>
                    <select class="form-control"></select>
                </div>
            </div>

            <div class="col-md-4 border" style="height:150px">
                Aphelion Agency
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label>Credit Limit</label>
                    <input type="text" class="form-control" />
                </div>
            </div>
            <div class="col-md-3" style="margin-top:-70px">
                <div class="form-group">
                    <label>Currency</label>
                    <input type="text" class="form-control" />
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group" style="margin-top:-70px">
                    <label>Exchange Rate</label>
                    <input type="text" class="form-control" />
                </div>
            </div>
        </div>
        <div class="border-right border-left border-top">
            <div class="row">
                <div class="col-md-4 border-right">
                    <div class="form-group">
                        <label>Document Alias</label>
                        <select class="form-control"></select>
                    </div>
                </div>
                <div class="col-md-4 border-right">
                    <div class="form-group">
                        <label>Vendor Invoice #</label>
                        <select class="form-control"></select>
                    </div>
                </div>
                <div class="col-md-4 border-right">
                    <div class="form-group">
                        <label>Terms</label>
                        <select class="form-control"></select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 border-right">
                    <div class="form-group">
                        <label>Document #</label>
                        <select class="form-control"></select>
                    </div>
                </div>
                <div class="col-md-4 border-right">
                    <div class="form-group">
                        <label>Vendor Invoice Date</label>
                        <select class="form-control"></select>
                    </div>
                </div>
                <div class="col-md-4 border-right">
                    <div class="form-group">
                        <label>Due Date</label>
                        <select class="form-control"></select>
                    </div>
                </div>
            </div>
        </div>
    </fieldset>
    <fieldset class="border p-2">
        <legend class="w-auto">Transaction Entries</legend>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Account</th>
                    <th>Text Code</th>
                    <th>Notes</th>
                    <th>Debit</th>
                    <th>Credit</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </fieldset>

</form>
</asp:Content>
