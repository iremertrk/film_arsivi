<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici.Master" AutoEventWireup="true" CodeBehind="Guncelle.aspx.cs" Inherits="film_projesi.Guncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html lang="tr">
    <head runat="server">
        <meta charset="utf-8" />
        <title>Film Güncelle</title>
        <style>
            .guncelle-container {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 20px;
                text-align: center;
            }

            .form-container {
                max-width: 500px;
                margin: auto;
                background: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            }

            table {
                width: 100%;
                border-collapse: collapse;
            }

            td {
                padding: 10px;
                text-align: left;
            }

            input, select, textarea {
                width: 100%;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            textarea {
                resize: vertical;
            }

            .btn-container {
                text-align: center;
                margin-top: 10px;
            }

            .btn {
                background-color: #ffc107;
                color: white;
                padding: 10px 15px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
                margin-right: 5px;
            }

            .btn-gor {
                background-color: red;
            }

            .btn:hover {
                opacity: 0.8;
            }

            .success-msg {
                color: green;
                font-weight: bold;
                display: block;
                margin-top: 10px;
            }
        </style>
    </head>
    <body>
      <div class="guncelle-container">
        <form id="form1" runat="server">
            <div class="form-container">
                <h2>Film Güncelle</h2>
                <table>
                    <tr>
                        <td>Film Adı</td>
                        <td>
                            <asp:TextBox ID="txtFilmAdi" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Kategori</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>Yönetmen</td>
                        <td>
                            <asp:TextBox ID="txtYonetmen" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Yayın Yılı</td>
                        <td>
                            <asp:TextBox ID="txtYil" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Fotoğraf Linki</td>
                        <td>
                            <asp:TextBox ID="txtLink" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Açıklama</td>
                        <td>
                            <asp:TextBox ID="txtAciklama" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="btn-container">
                            <asp:Button ID="btnGuncelle" runat="server" CssClass="btn" Text="Güncelle" OnClick="btnGuncelle_Click" />
                        </td>
                    </tr>
                </table>

                <asp:Label ID="lblGuncellendi" runat="server" CssClass="success-msg" Visible="false" Text="GÜNCELLENDİ !"></asp:Label>
                <br />
                <asp:Button ID="btnFilmleriGor" runat="server" CssClass="btn btn-gor" Text="Filmleri Gör" OnClick="btnFilmleriGor_Click" />
            </div>
        </form>
    </body>
    </html>
    </div>
</asp:Content>
