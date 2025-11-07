<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Listele.aspx.cs" Inherits="film_projesi.Listele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
       <h2 class="my-4" style="margin-top: 50px;">Film Listesi</h2>

        <div class="table-responsive">
            <table class="table table-striped table-hover" style="margin-top: -100px;"> <%--table-stripped çizgili deseni ekler, table-hover satır üzerinde renk değişikliği yapmayı sağlar--%>
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Adı</th>
                        <th>Türü</th>
                        <th>Yönetmen</th>
                        <th>Yılı</th>
                        <th>Fotoğraf</th>
                        <th>Açıklama</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:DataList ID="DataList1" runat="server" RepeatLayout="Flow">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("film_id") %></td>
                                <td><%# Eval("film_ad") %></td>
                                <td><%# Eval("film_tur") %></td>
                                <td><%# Eval("film_yonetmen") %></td>
                                <td><%# Eval("film_yil") %></td>
                                  <td>
                                    <img src='<%# Eval("film_foto") %>' class="img-thumbnail" style="width: 100%; height: auto; object-fit: cover;">
                                </td>
                                <td><%# Eval("film_aciklama") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:DataList>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>