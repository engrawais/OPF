﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ReportingEngine.Master" AutoEventWireup="true" CodeBehind="Graphs.aspx.cs" Inherits="WMS.Reports.Graphs.Graphs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
.selected {
    background-color:black;
    color:white;
    font-weight:bold;
}
</style>
     <div ng-controller="DashboardController" ng-Init="InitFunction()" class="jumbotron">
<div class="row">
<div class="col-md-4">
    <form name="myForm">
    <label for="repeatSelect"> Criteria: </label>
    <select name="repeatSelect" id="repeatSelect" ng-model="Criteria.repeatSelect" placeholder="Criteria...">
      <option ng-repeat="option in Criteria.availableOptions" value="{{option.id}}">{{option.name}}</option>
    </select>
  </form>
</div>
<div class="col-md-4">
<form name="myForm">
    <label for="ValueSelect"> Value: </label>
    <select name="ValueSelect" id="ValueSelect" ng-model="Value.repeatSelect">
      <option ng-repeat="option in Value.availableOptions" value="{{option.id}}">{{option.name}}</option>
    </select>
  </form>
</div>

                            <div class="col-md-4">
                                Select All:<input type="checkbox" ng-model="color.notAnOption">
                                Date : <input id="dateFrom" ng-model="DateFrom"  class="input-sm"  type="date" />
<asp:button ng-click="RenderGraph()" OnClientClick="false" CssClass="btn">Fetch Summary</asp:button>
                            </div>
</div>
    <div class="row">
<div class="col-md-2">
<div class="row">
<table class="table table-bordered"> 
 <tr>Daily Summaries</tr>
  <tr ng-repeat="x in names" ng-class="{'selected':$index == selectedRow}" ng-click="setClickedRow($index)">
    <td>{{ x }}</td>
   
  </tr>
</table>
</div>
    <div class="row">
<table class="table table-bordered"> 
 <tr>From/To Summaries</tr>
  <tr ng-repeat="x in names" ng-class="{'selected':$index == selectedRowForToFrom}" ng-click="setClickedRowForToFrom($index)">
    <td>{{ x }}</td>
   
  </tr>
</table>
    </div>
<div class="row"><asp:button ng-click="GetBestCriteria()" OnClientClick="false">Evaluation for the past 20 days</asp:button></div>

</div>
      <div class="col-md-10"> <highchart id="chart1" config="highchartsNG"></highchart>
</div>

    </div>
    </div>
</asp:Content>
