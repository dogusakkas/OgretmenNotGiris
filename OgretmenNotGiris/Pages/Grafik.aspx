<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Grafik.aspx.cs" Inherits="OgretmenNotGiris.Pages.Grafik" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="form1" runat="server">
        <asp:Chart ID="Chart_Ders_Kisi" runat="server" Width="800px">
            <Series>
                <asp:Series Name="Dersler">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:Chart ID="Chart_Cinsiyet" runat="server" Width="800px">
            <Series>
                <asp:Series Name="Cinsiyet" ChartType="Pie" YValuesPerPoint="2">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
    </form>




</asp:Content>
