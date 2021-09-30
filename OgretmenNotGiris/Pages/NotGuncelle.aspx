<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="OgretmenNotGiris.Pages.NotGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <form id="Form1" runat="server">

        <div class="form-group">

            <div>
                <asp:Label for="Txt_Ders_Adı" runat="server" Text="Ders Adı"></asp:Label>
                <asp:TextBox ID="Txt_Ders_Adı" runat="server" placeholder="Test" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Ogrenci_ID" runat="server" Text="Öğrenci Numarası"></asp:Label>
                <asp:TextBox ID="Txt_Ogrenci_ID" runat="server" placeholder="Test" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Ogrenci_Adi_Soyadi" runat="server" Text="Öğrenci Ad Soyad"></asp:Label>
                <asp:TextBox ID="Txt_Ogrenci_Adi_Soyadi" runat="server" placeholder="Test" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Ogrenci_Vize" runat="server" Text="Vize"></asp:Label>
                <asp:TextBox ID="Txt_Ogrenci_Vize" runat="server" placeholder="Test" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Ogrenci_Final" runat="server" Text="Final"></asp:Label>
                <asp:TextBox ID="Txt_Ogrenci_Final" runat="server" placeholder="Test" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
             <div>
                <asp:Label for="Txt_Ogrenci_Ortalama" runat="server" Text="Ortalama"></asp:Label>
                <asp:TextBox ID="Txt_Ogrenci_Ortalama" runat="server" placeholder="Test" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Ogrenci_Durum" runat="server" Text="Durum"></asp:Label>
                <asp:TextBox ID="Txt_Ogrenci_Durum" runat="server" placeholder="Test" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

        </div>
        <asp:Button ID="Btn_Güncelle" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Btn_Güncelle_Click" />

        </form>


</asp:Content>
