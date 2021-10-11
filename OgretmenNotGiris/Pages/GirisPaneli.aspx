<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GirisPaneli.aspx.cs" Inherits="OgretmenNotGiris.Pages.GirisPaneli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Dosyalar/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 700px; margin: auto">
            <h1>Selçuk Üniversitesi Öğretmen Girişi</h1>
            <br />
            <div style="margin:auto; text-align: center; ">
                <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl="~/Dosyalar/Resimler/sulogo.png" />
            </div>
            <br />
            <br />
            <div>
                <asp:Label for="TxtNumara" runat="server" Text="Kullanıcı Adınız"></asp:Label>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control" Height="26px" Width="500px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtSifre" runat="server" Text="Şifreniz"></asp:Label>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" Height="26px" Width="500px" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div style="margin:auto; text-align:center">
            <asp:Button ID="BtnGirisYap" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" Width="200px" OnClick="BtnGirisYap_Click" /><br /><br />
             <asp:Button ID="BtnSifremiUnuttum" runat="server" Text="Şifremi Unuttum" CssClass="btn btn-warning" Width="200px" />
                </div>

        </div>
    </form>
</body>
</html>
