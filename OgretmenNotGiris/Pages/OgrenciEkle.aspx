<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="OgretmenNotGiris.Pages.OgrenciEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="Txt_Ogrenci_Adi" runat="server" Text="Öğrenci Adı"></asp:Label>
                <asp:TextBox ID="Txt_Ogrenci_Adi" runat="server" placeholder="Test" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Ogrenci_Soyadi" runat="server" Text="Öğrenci Soyadı"></asp:Label>
                <asp:TextBox ID="Txt_Ogrenci_Soyadi" runat="server" placeholder="Test" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Ogrenci_Telefon" runat="server" Text="Öğrenci Telefonu"></asp:Label>
                <asp:TextBox ID="Txt_Ogrenci_Telefon" runat="server" placeholder="Test" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Ogrenci_Mail" runat="server" Text="Öğrenci Maili"></asp:Label>
                <asp:TextBox ID="Txt_Ogrenci_Mail" runat="server" placeholder="Test" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div class="file">

                <input type="file" />

            </div>


            <div>
                <asp:Label for="Txt_Ogrenci_Fotografi" runat="server" Text="Öğrenci Fotoğrafı"></asp:Label>
                <asp:TextBox ID="Txt_Ogrenci_Fotografi" runat="server" placeholder="Test" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="Button1_Click" />

    </form>


</asp:Content>
