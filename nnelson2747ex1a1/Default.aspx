<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="nnelson2747ex1a1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="padding: 12px">
        <h2>nnelson2747ex1a</h2>
        <p>COMC2747 Exercise 1A: WebForms app using bound controls</p>
    </div>

    <div class="row">
        <div class="col-md-8">
            <h2>Regions/Countries</h2>
            <div class="form-group">
                <label for="RegionsDropDownList">Region:</label>
                <asp:DropDownList 
                    ID="RegionsDropDownList" 
                    runat="server" 
                    DataSourceID="RegionsSqlDataSource" 
                    DataTextField="Region" 
                    DataValueField="Region" 
                    CssClass="form-control"></asp:DropDownList>
                </div>
            <div class="form-group">
                <label for="CountriesDropDownList">Country:</label>
                <asp:DropDownList 
                    ID="CountriesDropDownList" 
                    runat="server" 
                    DataSourceID="CountriesSqlDataSource" 
                    DataTextField="CountryName" 
                    DataValueField="CountryID" 
                    CssClass="form-control"></asp:DropDownList>
                </div>
            <div class="form-group">
                <label for="StatesGridView">States:</label>
                <asp:GridView ID="StatesGridView" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered" DataKeyNames="StateProvinceID" DataSourceID="StatesSqlDataSource">
                    <Columns>
                        <asp:BoundField DataField="StateProvinceID" HeaderText="StateProvinceID" ReadOnly="True" SortExpression="StateProvinceID" Visible="False" />
                        <asp:BoundField DataField="SalesTerritory" HeaderText="Sales Territory" SortExpression="SalesTerritory" />
                        <asp:BoundField DataField="StateProvinceCode" HeaderText="Code" SortExpression="StateProvinceCode" />
                        <asp:BoundField DataField="StateProvinceName" HeaderText="State" SortExpression="StateProvinceName" />
                        <asp:BoundField DataField="CountryID" HeaderText="CountryID" SortExpression="CountryID" Visible="False" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="StatesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WideWorldConnectionString %>" SelectCommand="SELECT StateProvinceID, StateProvinceCode, StateProvinceName, CountryID, SalesTerritory FROM Application.StateProvinces WHERE (CountryID = 230) ORDER BY SalesTerritory, StateProvinceName"></asp:SqlDataSource>
            <asp:SqlDataSource 
                ID="RegionsSqlDataSource" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:WideWorldConnectionString %>" 
                SelectCommand="SELECT DISTINCT Region FROM Application.Countries ORDER BY Region"></asp:SqlDataSource>
            <asp:SqlDataSource ID="CountriesSqlDataSource" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:WideWorldConnectionString %>" 
                SelectCommand="SELECT CountryID, CountryName, Region FROM Application.Countries WHERE (Region = N'Europe') ORDER BY CountryName"></asp:SqlDataSource>
        </div>
            </div>
        <div class="col-md-4">
            <h2>Exercise 1A Features:</h2>
            <ul>
                <li>ASP.NET WebForms</li>
                <li>Bound controls</li>
                <li>&quot;World Wide Importers&quot; sample database</li>
            </ul>
        </div>
    </div>

</asp:Content>
