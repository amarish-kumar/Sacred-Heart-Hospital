﻿<%--*****************************************************************
    * Visits.aspx                                        v1.0 11/2014
    * Sacred Heart Hospital                             Robert Willis
    *
    * Webform showing grid view of all visits in hospital database.
    * Searchable using user input.
    *****************************************************************--%>
<%@ Page Title="Patient Visits" Language="C#" 
    MasterPageFile="~/WDAssignment2.Master" AutoEventWireup="true" 
    CodeBehind="Visits.aspx.cs" Inherits="WDAssignment2.Visits" %>

<%-- Content Placeholder --%>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <%-- Page Heading --%>
    <h1>Patient Visits</h1>
    
    <p>
        <%-- Search textbox --%>
        <label for="Search">Search:</label>
        <asp:TextBox runat="server" ID="Search" ClientIDMode="Static" />
        <%-- Type of search radio list --%>
        <asp:RadioButtonList ID="radiolist1" runat="server">
            <asp:ListItem Selected="True">Name</asp:ListItem>
            <asp:ListItem>Date of Visit</asp:ListItem>
            <asp:ListItem>Date of Discharge</asp:ListItem>
        </asp:RadioButtonList>
        <%-- Vaidate input given --%>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="#B6121B" Width="100"
                                        ErrorMessage="Search Query Required" ControlToValidate="Search" />
    </p>

    <p>
        <%-- No Results Error Message --%>
        <asp:Literal runat="server" ID="ErrorMessage" Text="No Results Found. </br>" Visible="false"/>
    </p> 
    
    <%-- Submit button --%>
    <asp:Button runat="server" ID="SubmitButton" OnClick="SearchClick" Text="Search" />

    <%-- Grid View --%>
    <asp:GridView id="GridView1" runat="server" />

<%-- End Content --%>
</asp:Content>