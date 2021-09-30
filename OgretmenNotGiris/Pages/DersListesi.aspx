<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="OgretmenNotGiris.Pages.DersListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

         <table class="table table-bordered table-striped table-hover">
    <tr>
      <th scope="col">Ders ID </th>
      <th scope="col">Ders Adı</th>
      <th scope="colgroup">İşlemler</th>
    </tr>
  <tbody>

      <asp:Repeater ID="Repeater_Dersler" runat="server">
          <ItemTemplate>

              <tr>
                  <td><%# Eval("DersID") %></td>
                  <td><%# Eval("DersAdi") %></td>
                  <td>
                      <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "DersSil.aspx?DersID="+ Eval("DersID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                  </td>
              </tr>

          </ItemTemplate>
      </asp:Repeater>

      

  </tbody>
</table>

    <asp:HyperLink ID="HyperLink3" NavigateUrl="~/Sayfalar/DersEkle.aspx" runat="server" CssClass="btn btn-primary">Ders Ekle</asp:HyperLink>


</asp:Content>
