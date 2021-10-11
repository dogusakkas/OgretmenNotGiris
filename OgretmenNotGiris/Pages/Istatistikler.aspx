<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Istatistikler.aspx.cs" Inherits="OgretmenNotGiris.Pages.Istatistikler" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="Txt_Ogrenci_Sayisi" runat="server" Text="Toplam Öğrenci Sayısı"></asp:Label>
                <asp:TextBox ID="Txt_Ogrenci_Sayisi" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Ogretmen_Sayisi" runat="server" Text="Toplam Öğretmen Sayısı"></asp:Label>
                <asp:TextBox ID="Txt_Ogretmen_Sayisi" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Ders_Sayisi" runat="server" Text="Toplam Ders Sayısı"></asp:Label>
                <asp:TextBox ID="Txt_Ders_Sayisi" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_En_Basarili_Ders" runat="server" Text="En Başarılı Ders"></asp:Label>
                <asp:TextBox ID="Txt_En_Basarili_Ders" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Toplam_Atilan_Mesaj" runat="server" Text="Toplam Atılan Mesaj"></asp:Label>
                <asp:TextBox ID="Txt_Toplam_Atilan_Mesaj" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Sistemdeki_Duyuru_Sayisi" runat="server" Text="Sistemdeki Duyuru Sayısı"></asp:Label>
                <asp:TextBox ID="Txt_Sistemdeki_Duyuru_Sayisi" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Lisans_Dersindeki_En_Iyi_Ogrenci" runat="server" Text="Lisans Dersindeki En İyi Öğrenci"></asp:Label>
                <asp:TextBox ID="Txt_Lisans_Dersindeki_En_Iyi_Ogrenci" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Txt_Lisans_Ortalama" runat="server" Text="Lisans Bitirme Tezi Ortalaması"></asp:Label>
                <asp:TextBox ID="Txt_Lisans_Ortalama" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
           


            </div>


    </form>




</asp:Content>
