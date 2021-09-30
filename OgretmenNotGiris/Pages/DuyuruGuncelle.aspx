<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="OgretmenNotGiris.Pages.DuyuruGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

         <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="Txt_Duyuru_ID" runat="server" Text="Duyuruyu ID"></asp:Label>
                <asp:TextBox ID="Txt_Duyuru_ID" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Duyuru_Baslik" runat="server" Text="Duyuru Başlık"></asp:Label>
                <asp:TextBox ID="Txt_Duyuru_Baslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtAr_Duyuru_Icerik" runat="server" Text="Duyuru İçerik"></asp:Label>
                <textarea id="TxtAr_Duyuru_Icerik" cols="20" rows="10" class="form-control" runat="server"></textarea>
            </div>
            <br />
            

            
        </div>

        <asp:Button ID="Btn_Olustur" runat="server" Text="Güncelle" CssClass="btn btn-info" OnClick="Btn_Olustur_Click" />

    </form>


</asp:Content>
