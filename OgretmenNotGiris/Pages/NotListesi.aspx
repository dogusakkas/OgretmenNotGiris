<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotListesi.aspx.cs" Inherits="OgretmenNotGiris.Pages.NotListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <table class="table table-bordered table-striped table-hover">
        <tr>
            <th scope="col">Öğrenci Numarası</th>
            <th scope="col">Ad Soyad</th>
            <th scope="col">Ders Adı</th>
            <th scope="col">Vize</th>
            <th scope="col">Final</th>
            <th scope="col">Ortalama</th>
            <th scope="col">Durum</th>
            <th scope="colgroup">İşlemler</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater_Notlar" runat="server">
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("OgrenciNotID") %></td>
                        <td><%# Eval("AdıSoyadı") %></td>
                        <td><%# Eval("DersAdi") %></td>
                        <td><%# Eval("Vize") %></td>
                        <td><%# Eval("Final") %></td>
                        <td><%# Eval("Ortalama") %></td>
                        <td><%# Eval("Durum") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "NotSil.aspx?NotID="+ Eval("NotID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "NotGuncelle.aspx?NotID="+ Eval("NotID") %>' CssClass="btn btn-primary">Güncelle</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>


</asp:Content>
