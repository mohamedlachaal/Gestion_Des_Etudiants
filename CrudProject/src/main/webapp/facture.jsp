<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="beans.Client"%>
    
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<link href="~/css/facture.css" rel="stylesheet">
<link href="~/css/profile.css" rel="stylesheet">
<link href="~/css/sb-admin-2.css" rel="stylesheet">
</head>
<body>
<% 
	Client client =(Client) request.getAttribute("client");
%>

<div class="page-content container">
    <div class="page-header text-blue-d2">
        <div class="sidebar-brand-text mx-3">LOGO</div>

        <div class="page-tools">
            <div class="action-buttons">
                <a class="btn bg-white btn-light mx-1px text-95" href="#" data-title="Print">
                    <i class="mr-1 fa fa-print text-primary-m1 text-120 w-2"></i>
                    Print
                </a>
                <a class="btn bg-white btn-light mx-1px text-95" href="#" data-title="PDF">
                    <i class="mr-1 fa fa-file-pdf-o text-danger-m1 text-120 w-2"></i>
                    Export
                </a>
            </div>
        </div>
    </div>

    <div class="container px-0">
        <div class="row mt-4">
            <div class="col-12 col-lg-12">
                <div class="row">
                    <div class="col-12">
                        <div class="text-center text-150">
                            <span class="text-default-d3">Reçu pour le client </span>
                        </div>
                    </div>
                </div>
                <!-- .row -->

                <hr class="row brc-default-l1 mx-n1 mb-4" />

                <div class="row">
                    <div class="col-sm-6">
                        <div>
                            <span class="text-sm text-grey-m2 align-middle">Nom :</span>
                            <span class="text-600 text-110 text align-middle"><</span>
                        </div>
                        <div>
                            <span class="text-sm text-grey-m2 align-middle">Prenom :</span>
                            <span class="text-600 text-110 text align-middle">@Model.Prenom</span>
                        </div>
                        <div>
                            <span class="text-sm text-grey-m2 align-middle">Montant payé :</span>
                            <span class="text-600 text-110 text-blue align-middle">@Model.paiement.montant_paye MAD</span>
                        </div>
                        <div>
                            <span class="text-sm text-grey-m2 align-middle">Email :</span>
                            <span class="text-600 text-110 text align-middle">@Model.email</span>
                        </div>
                        <div>
                            <span class="text-sm text-grey-m2 align-middle">N° Téléphone:</span>
                            <span class="text-600 text-110 text align-middle">@Model.phone</span>
                        </div>
                       

                    </div>
                    <!-- /.col -->

        
                    <!-- /.col -->
                </div>

                <div class="mt-4">
                    <div class="row text-600 text-white bgc-default-tp1 py-25">
                        <div class="d-none d-sm-block col-1">#</div>
                        <div class="col-9 col-sm-5">Date de Paiement</div>
                        <div class="d-none d-sm-block col-4 col-sm-2">Tarif </div>
                        <div class="d-none d-sm-block col-sm-2">Montant payé</div>
                        <div class="col-2">Total Restant</div>
                    </div>

                    <div class="text-95 text-secondary-d3">
                        <div class="row mb-2 mb-sm-0 py-25  bgc-default-l4">
                            <div class="d-none d-sm-block col-1">1</div>
                            <div class="col-9 col-sm-5">@Model.paiement.date</div>
                            <div class="d-none d-sm-block col-2">@Model.paiement.tarif MAD</div>
                                <div class="d-none d-sm-block col-2 text-95">@Model.paiement.montant_paye MAD</div>
                            <div class="col-2 text-secondary-d2">@Model.paiement.reste MAD </div>
                        </div>

                    </div>

                    <div class="row border-b-2 brc-default-l2"></div>

                    <!-- or use a table instead -->
                    <!--
                    <div class="table-responsive">
                        <table class="table table-striped table-borderless border-0 border-b-2 brc-default-l1">
                            <thead class="bg-none bgc-default-tp1">
                                <tr class="text-white">
                                    <th class="opacity-2">#</th>
                                    <th>Description</th>
                                    <th>Qty</th>
                                    <th>Unit Price</th>
                                    <th width="140">Amount</th>
                                </tr>
                            </thead>

                            <tbody class="text-95 text-secondary-d3">
                                <tr></tr>
                                <tr>
                                    <td>1</td>
                                    <td>Domain registration</td>
                                    <td>2</td>
                                    <td class="text-95">$10</td>
                                    <td class="text-secondary-d2">$20</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    -->

                   

                    <hr />

                    <div>
                        

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>