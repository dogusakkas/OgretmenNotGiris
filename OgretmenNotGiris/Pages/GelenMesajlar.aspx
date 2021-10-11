<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogretmen.Master" AutoEventWireup="true" CodeBehind="GelenMesajlar.aspx.cs" Inherits="OgretmenNotGiris.Pages.GelenMesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

            <table class="table table-bordered table-striped table-hover">
        <tr>
            <th scope="col">Mesaj ID </th>
            <th scope="col">Gönderen</th>
            <th scope="col">Başlığı</th>
            <th scope="col">İçerik</th>
            <th scope="colgroup">İşlemler</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater_Gelen_Mesajlar" runat="server">
                 <ItemTemplate>

              <tr>
                  <td><%# Eval("MesajID") %></td>
                  <td><%# Eval("Alici") %></td>
                  <td><%# Eval("Gonderen") %></td>
                  <td><%# Eval("Baslik") %></td>
                  <td><%# Eval("Icerik") %></td>
                  <td>
                      <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "MesajSil.aspx?MesajID="+ Eval("MesajID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                      <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "MesajGuncelle.aspx?MesajID="+ Eval("MesajID") %>' CssClass="btn btn-primary">Güncelle</asp:HyperLink>
                  </td>
              </tr>

          </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>


</asp:Content>
