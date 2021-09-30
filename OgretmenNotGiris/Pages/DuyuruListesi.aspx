<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="OgretmenNotGiris.Pages.DuyuruListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <table class="table table-bordered table-striped table-hover">
    <tr>
      <th scope="col">Duyuru ID </th>
      <th scope="col">Duyurunun Başlığı</th>
      <th scope="col">Duyuru İçeriği</th>
      <th scope="col">Duyuruyu Yapan Öğretmen</th>
      <th scope="colgroup">İşlemler</th>
    </tr>
  <tbody>

      <asp:Repeater ID="Repeater_Duyurular" runat="server">
          <ItemTemplate>

              <tr>
                  <td><%# Eval("DuyuruID") %></td>
                  <td><%# Eval("DuyuruBaslik") %></td>
                  <td><%# Eval("DuyuruIcerik") %></td>
                  <td><%# Eval("DuyuruYapanOgretmen") %></td>
                  <td>
                      <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "DuyuruSil.aspx?DuyuruID="+ Eval("DuyuruID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                      <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "DuyuruGuncelle.aspx?DuyuruID="+ Eval("DuyuruID") %>' CssClass="btn btn-primary">Güncelle</asp:HyperLink>
                  </td>
              </tr>

          </ItemTemplate>
      </asp:Repeater>

  </tbody>
</table>


</asp:Content>
