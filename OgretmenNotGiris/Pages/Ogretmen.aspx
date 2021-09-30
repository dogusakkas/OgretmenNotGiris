<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Ogretmen.aspx.cs" Inherits="OgretmenNotGiris.Page.Ogretmen.Ogretmen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    
    

    <table class="table table-bordered table-striped table-hover">
    <tr>
      <th scope="col">Öğrenci Numarası</th>
      <th scope="col">Ad</th>
      <th scope="col">Soyad</th>
      <th scope="col">Telefon</th>
      <th scope="col">Mail</th>
      <th scope="colgroup">İşlemler</th>
    </tr>
  <tbody>

      <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate>

              <tr>
                  <td><%# Eval("OgrenciID") %></td>
                  <td><%# Eval("OgrenciAd") %></td>
                  <td><%# Eval("OgrenciSoyad") %></td>
                  <td><%# Eval("OgrenciTelefon") %></td>
                  <td><%# Eval("OgrenciMail") %></td>
                  <td>
                      <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/Sayfalar/OgrenciSil.aspx?OgrenciID="+ Eval("OgrenciID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                      <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/Sayfalar/OgrenciGuncelle.aspx?OgrenciID="+Eval("OgrenciID") %>' CssClass="btn btn-primary">Güncelle</asp:HyperLink>
                  </td>
              </tr>

          </ItemTemplate>
      </asp:Repeater>

  </tbody>
</table>


</asp:Content>
