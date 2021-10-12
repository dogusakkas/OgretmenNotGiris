<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciNotu.aspx.cs" Inherits="OgretmenNotGiris.Pages.OgrenciNotu" %>

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

                    </tr>

                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>


</asp:Content>
