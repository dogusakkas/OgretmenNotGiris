<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="OgretmenNotGiris.Pages.DuyuruEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

         <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="DDL_Ogretmenler" runat="server" Text="Duyuruyu Yapan Öğretmen"></asp:Label>
                <asp:DropDownList ID="DDL_Ogretmenler" runat="server" CssClass="form-control"></asp:DropDownList>
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

        <asp:Button ID="Btn_Olustur" runat="server" Text="Oluştur" CssClass="btn btn-info" OnClick="Btn_Olustur_Click"  />

    </form>


</asp:Content>
