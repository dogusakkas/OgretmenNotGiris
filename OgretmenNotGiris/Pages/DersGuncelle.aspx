<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersGuncelle.aspx.cs" Inherits="OgretmenNotGiris.Pages.DersGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

             <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="Txt_Ders_ID" runat="server" Text="Ders ID"></asp:Label>
                <asp:TextBox ID="Txt_Ders_ID" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Ders_Ad" runat="server" Text="Ders Adı"></asp:Label>
                <asp:TextBox ID="Txt_Ders_Ad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            

            
        </div>

        <asp:Button ID="Btn_Olustur" runat="server" Text="Güncelle" CssClass="btn btn-info" OnClick="Btn_Olustur_Click"  />

    </form>


</asp:Content>
