<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogretmen.Master" AutoEventWireup="true" CodeBehind="MesajYaz.aspx.cs" Inherits="OgretmenNotGiris.Pages.MesajYaz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


             <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="Txt_Gonderen" runat="server" Text="Gönderen"></asp:Label>
                <asp:TextBox ID="Txt_Gonderen" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Alici" runat="server" Text="Alıcı"></asp:Label>
                <asp:TextBox ID="Txt_Alici" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Baslik" runat="server" Text="Başlık"></asp:Label>
                <asp:TextBox ID="Txt_Baslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Icerik" runat="server" Text="İçerik"></asp:Label>
                <textarea id="Txt_Icerik" runat="server" cols="20" rows="6" class="form-control" ></textarea>
            </div>
            <br />

            

            
        </div>

        <asp:Button ID="Btn_Gonder" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info" OnClick="Btn_Gonder_Click"  />

    </form>



</asp:Content>
