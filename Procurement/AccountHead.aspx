<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AccountHead.aspx.cs" Inherits="Procurement.AccountHead" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
@{
    ViewData["Title"] = "Index";
}

<div class="row">
    <div class="col-md-6">
        <div class="card" style="background-color:gray">
            <div class="card-body">
                <form method="post">
                    <div class="form-group">
                        <label>Account Code</label>
                        <select class="form-control">
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Account Description</label>
                        <input class="form-control">

                    </div>
                    <div class="form-group">
                        <label>Parent account code</label>
                        <select class="form-control">
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Parent Account description</label>
                        <input class="form-control" disabled>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <fieldset class="border p-2">
                                <legend class="w-auto">Posting level</legend>
                                <input type="radio" />Genenral
                                <input type="radio" />Details
                            </fieldset>

                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Account Category</label>
                                <input type="text" class="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Account Type</label>
                                <select class="form-control">
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Last Check number</label>
                                <input type="text" class="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Cash flow activity</label>
                                <input type="text" class="form-control" />
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
 
    <div class="col-md-6">
        <div class="card " style="background-color:gray">
            <div class="card-body">
                <form style="margin-top:-20px">
                    <fieldset class="border p-2">
                        <legend class="w-auto">Opening balance</legend>
                        <div class="row" style="margin-top:-22px">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Date</label>
                                    <input type="date" class="form-control" />
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label>Amount-base currency</label>
                                    <input type="text" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <fieldset class="border p-2">
                            <legend class="w-auto">Posted balance</legend>
                            <div class="row" style="margin-top:-22px">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Date</label>
                                        <input type="date" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label>Amount-base currency</label>
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset class="border p-2">
                            <legend class="w-auto">UnPosted Amount</legend>
                            <div class="row" style="margin-top:-22px">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Date</label>
                                        <input type="date" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label>Amount-base currency</label>
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset class="border p-2">
                            <legend class="w-auto">Current balance</legend>
                            <div class="row" style="margin-top:-22px">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Date</label>
                                        <input type="date" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label>Amount-base currency</label>
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset class="border p-2" style="height:25%">
                            <legend class="w-auto">Reconcilation Details</legend>
                            <div class="row" style="margin-top:-22px">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Reconciled On</label>
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Reconciled As Of</label>
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Amount-base currency</label>
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            
                        </fieldset>



                    </fieldset>
                </form>
            </div>
        </div>
      
    </div>
</div>
<div class="row">
    <div class="col-md-8 offset-2" style="background-color:gray">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label>Currency Code</label>
                    <select class="form-control">
                    </select>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>&nbsp;</label>
                    <input type="text" class="form-control">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8 offset-0">
                <input type="checkbox" class="form-check-inline" /> Re-measurement required
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label>Last re-measured rate</label>
                    <input type="number"  class="form-control"/>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Last re-measured Date</label>
                    <input type="date" class="form-control" />
                </div>
            </div>
        </div>
    </div>
</div>



</asp:Content>
