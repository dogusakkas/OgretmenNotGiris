<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGelenMesajlar.aspx.cs" Inherits="OgretmenNotGiris.Pages.OgrenciGelenMesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


                <table class="table table-bordered table-striped table-hover">
        <tr>
            <th scope="col">Gönderen</th>
            <th scope="col">Başlığı</th>
            <th scope="col">İçerik</th>
            <th scope="col">Tarih</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater_Ogrenci_Gelen_Mesajlar" runat="server">
                 <ItemTemplate>

              <tr>
                  <td><%# Eval("Gönderen") %></td>
                  <td><%# Eval("Baslik") %></td>
                  <td><%# Eval("Icerik") %></td>
                  <td><%# Eval("Tarih") %></td>
                  
              </tr>

          </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>



</asp:Content>
