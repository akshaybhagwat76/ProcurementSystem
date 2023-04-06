<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MultiplePayment.aspx.cs" Inherits="Procurement.MultiplePayment" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
@{
    ViewData["Title"] = "Index";
}

    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <div class="card-title">
                    <h3 class="card-header text-center" style="font-size:22px">Payment Jouranl Information</h3>
                </div>
                <div class="card-body">
                    <fieldset class="border p-2">
                        <legend class="w-auto" style="font-size:18px"><input type="radio" />Create a new journal payment</legend>
                        <form>
                            <div class="form-group">
                                <label>Enter the description of the new journal</label>
                                <input type="text" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label>Select the journal groupfor the new payment journal</label>
                                <div class="row">
                                    <div class="col-md-4">
                                        <select class="form-control"></select>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                            </div>
                        </form>
                    </fieldset>
                    <fieldset class="border p-2">
                        <legend class="w-auto" style="font-size:18px"><input type="radio" /> Enter these payment as an existing payment journal</legend>
                        <form>
                            
                            <div class="form-group">
                                <label>Select the payment journal in which you would like these payments to be created</label>
                                <div class="row">
                                    <div class="col-md-4">
                                        <select class="form-control"></select>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                            </div>
                        </form>
                    </fieldset>

                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-title">
                    <h3 class="card-header" style="font-size:22px">Payment Information Payment-Method</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Select the method of payment from list of payment methods associated with the chosen bank account</label>
                   <div class="row">
                       <div class="col-md-4">
                           <select class="form-control"></select>
                       </div>
                       <div class="col-md-8">
                           <input type="text" class="form-control" />
                       </div>
                   </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <select class="form-control"></select>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-12">
                            <input type="text" class="form-control" />
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="row">
                        <div class="form-group">
                            <label>The balance account for this bank account is</label>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Bank Currency</label>
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label><b>Balance</b></label>
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-title">
                    <h3 class="card-header text-center">Document criteria-payment terms</h3>
                </div>
                <div class="card-body">
                    <p>Select the payment terms that you want to the documents to contain. 
                    All payment terms are listed in left panel to exclude a payment term move it 
                    to the right panel</p>
                    <div class="row">
                       
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="row">
                                    <div class="dual-list list-left col-md-5">
                                        <div class="well text-right">
                                            <div class="row">
                                                <div class="col-md-10">
                                                    <div class="input-group">
                                                        <span class="input-group-addon glyphicon glyphicon-search"></span>
                                                        <input type="text" name="SearchDualList" class="form-control" placeholder="search" />
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="btn-group">
                                                        <a class="btn btn-default selector" title="select all"><i class="glyphicon glyphicon-unchecked"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <ul class="list-group">
                                                <li class="list-group-item">bootstrap-duallist <a href="https://github.com/bbilginn/bootstrap-duallist" target="_blank">github</a></li>
                                                <li class="list-group-item">Dapibus ac facilisis in</li>
                                                <li class="list-group-item">Morbi leo risus</li>
                                                <li class="list-group-item">Porta ac consectetur ac</li>
                                                <li class="list-group-item">Vestibulum at eros</li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="list-arrows col-md-1 text-center">
                                        <button class="btn btn-default btn-sm move-left">
                                            <span class="glyphicon glyphicon-chevron-left"></span>
                                        </button>

                                        <button class="btn btn-default btn-sm move-right">
                                            <span class="glyphicon glyphicon-chevron-right"></span>
                                        </button>
                                    </div>

                                    <div class="dual-list list-right col-md-5">
                                        <div class="well">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <div class="btn-group">
                                                        <a class="btn btn-default selector" title="select all"><i class="glyphicon glyphicon-unchecked"></i></a>
                                                    </div>
                                                </div>
                                                <div class="col-md-10">
                                                    <div class="input-group">
                                                        <input type="text" name="SearchDualList" class="form-control" placeholder="search" />
                                                        <span class="input-group-addon glyphicon glyphicon-search"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <ul class="list-group">
                                                <li class="list-group-item">Cras justo odio</li>
                                                <li class="list-group-item">Dapibus ac facilisis in</li>
                                                <li class="list-group-item">Morbi leo risus</li>
                                                <li class="list-group-item">Porta ac consectetur ac</li>
                                                <li class="list-group-item">Vestibulum at eros</li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="~/js/dualListbox.js"></script>
</asp:Content>
