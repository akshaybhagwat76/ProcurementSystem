﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GeneralJournal.aspx.cs" Inherits="Procurement.GeneralJournal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
 
<form style="background-color:grey">
    <fieldset class="border p-2">
        <legend class="w-auto">Journals</legend>
        <div class="row" style="margin-top:-20px;">
            <div class="col-md-2">
                <div class="form-group">
                    <label>Journal #</label>
                    <select class="form-control">
                        <option>select</option>
                    </select>
                </div>
            </div>
            <div class="col-md-1">
                <div class="form-group">
                    <label>Fiscal Year</label>
                    <select class="form-control">
                        <option>select</option>
                    </select>
                </div>
            </div>
            <div class="col-md-1">
                <div class="form-group">
                    <label>Period</label>
                    <select class="form-control">
                        <option>select</option>
                    </select>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label>Journal Group</label>
                    <select class="form-control">
                        <option>select</option>
                    </select>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Description</label>
                    <input type="text" class="form-control">    
                </div>
            </div>
        </div>
    </fieldset>
    <fieldset class="border p-2">
        <legend class="w-auto">Transaction</legend>
        <div class="row" style="margin-top:-20px">
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
                    <label>Source</label>
                    <select class="form-control"></select>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label>&nbsp;</label>
                    <input type="text" disabled class="form-control" />
                </div>
            </div>
        </div>
        <div class="row" style="margin-top:-20px">
            <div class="col-md-3">
                <div class="form-group">
                    <label>Reference #</label>
                    <input type="text" class="form-control" />
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label>Reference Date</label>
                    <select class="form-control"></select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>Source</label>
                    <input type="text" class="form-control" />

                </div>
            </div>
            <div class="col-md-1">
                <div class="form-group">
                    <br />

                    <button class="btn btn-dark mt-2">Details</button>
                </div>
            </div>

        </div>
    </fieldset>
    <fieldset class="border p-2">
        <legend class="w-auto">Transaction Entries</legend>
        <div class="row">
            <div class="col-md-4 offset-md-8">
                <b>Short/Over</b>
                <input type="text" disabled />
            </div>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Account</th>
                    <th>Description</th>
                    <th>Loc/Sub Loc</th>
                    <th>Notes</th>
                    <th>Job Code</th>
                    <th>Allocate</th>
                    <th>% Allocation</th>
                    <th>Debit</th>
                    <th>Credit</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><select class="form-control" style="width:100%;padding:10px"></select></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><input type="checkbox" class="form-control" /></td>
                </tr>
                <tr>
                    <td colspan="7"></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </fieldset>

</form>
<div class="row">


</div>

</asp:Content>
