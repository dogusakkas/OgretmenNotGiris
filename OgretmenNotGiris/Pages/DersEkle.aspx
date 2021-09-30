<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="OgretmenNotGiris.Pages.DersEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <form id="Form1" runat="server">

        <div class="form-group">
           
            <div>
                <asp:Label for="Txt_Ders" runat="server" Text="Ders Adı"></asp:Label>
                <asp:TextBox ID="Txt_Ders" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            
            

            
        </div>

        <asp:Button ID="Btn_Olustur" runat="server" Text="Ekle" CssClass="btn btn-info" OnClick="Btn_Olustur_Click"  />

    </form>


</asp:Content>
