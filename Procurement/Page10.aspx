﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page10.aspx.cs" Inherits="Procurement.Page10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <form class="bg-dark" style="color:white">
        <br />
        <div class="row">
            <div class="col-md-7">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Bank</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Payment Type</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Date</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control">
                    </div>
                </div>



            </div>
            <div class="col-md-5">
                <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Include Terms</label>
                    <div class="col-sm-9">
                        <select class="form-control"></select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Document Alias</label>
                    <div class="col-sm-9">
                        <select class="form-control"></select>
                    </div>
                </div>
            </div>
        </div>
        <table class="table table-bordered" style=" color:white">
            <thead>
                <tr>
                    <th>&nbsp;</th>
                    <th>Doc No</th>
                    <th>Cusomter No</th>
                    <th>Cus PO #</th>
                    <th>Cus Date</th>
                    <th>Check Total</th>
                    <th>Piad Amt</th>
                    <th>Doc Amt</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="5"></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </form>

</asp:Content>
