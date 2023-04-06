﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page8.aspx.cs" Inherits="Procurement.Page8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <form style="background-color:darkgray">
        <br />
        <div class="row">
            <div class="col-md-8">
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
            <div class="col-md-4">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Include Terms</label>
                    <div class="col-sm-10">
                        <select class="form-control"></select>
                    </div>
                </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Document Alias</label>
                        <div class="col-sm-10">
                            <select class="form-control"></select>
                        </div>
                    </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-row">
                    <div class="col-md-3">
                        <label>Starting Balance</label>
                    </div>
                    <div class="col-8">
                        <input type="text" class="form-control" />
                    </div>

                </div>
            </div>
            <div class="col-md-4">
                <div class="form-row">
                    <div class="col-md-3">
                        <label>Payment Balance</label>
                    </div>
                    <div class="col-8">
                        <input type="text" class="form-control" />
                    </div>

                </div>
            </div>
            <div class="col-md-4">
                <div class="form-row">
                    <div class="col-md-3">
                        <label>Ending Balance</label>
                    </div>
                    <div class="col-6">
                        <input type="text" class="form-control" />
                    </div>

                </div>
            </div>
        </div>
      <table class="table table-bordered">
          <thead>
              <tr>
                  <th>&nbsp;</th>
                  <th>Doc No</th>
                  <th>Vendor Code</th>
                  <th>Vendor Inv</th>
                  <th>Vendor Date</th>
                  <th>Due Date</th>
                  <th>Check Total</th>
                  <th>Paid Amount</th>
                  <th>Doc Amount</th>
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
                  <td></td>
              </tr>
              <tr>
                  <td colspan="7"></td>
                  <td></td>
                  <td></td>
              </tr>
          </tbody>
      </table>
    </form>

</asp:Content>
