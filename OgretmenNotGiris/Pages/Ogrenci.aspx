<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogrenci.Master" AutoEventWireup="true" CodeBehind="Ogrenci.aspx.cs" Inherits="OgretmenNotGiris.Pages.Ogrenci" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="TxtNumara" runat="server" Text="Numara"></asp:Label>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtAdSoyad" runat="server" Text="Ad Soyad"></asp:Label>
                <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtMail" runat="server" Text="Mail"></asp:Label>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control" Enabled="false" ></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtTelefon" runat="server" Text="Telefon"></asp:Label>
                <asp:TextBox ID="TxtTelefon" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtSifre" runat="server" Text="Şifre"></asp:Label>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtFotograf" runat="server" Text="Fotoğraf"></asp:Label>
                <asp:TextBox ID="TxtFotograf" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />

            </div>

            <asp:Button ID="Btn_Olustur" runat="server" Text="Güncelle" CssClass="btn btn-info" OnClick="Btn_Olustur_Click"  />


    </form>


</asp:Content>
