<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="film_projesi.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .register-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 80px);
        }

        .form-container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
        }

        .form-container table {
            width: 100%;
            margin: auto;
        }

        td {
            padding: 10px;
            text-align: left;
        }

        input, button {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }

        .message {
            color: green;
            font-weight: bold;
            margin-top: 10px;
        }
    </style>

    <div class="register-container">
        <form id="form1" runat="server">
            <div class="form-container">
                <h2>Kayıt Ol</h2>
                <table>
                    <tr>
                        <td>İsim:</td>
                        <td><asp:TextBox ID="txtisim" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Soyisim:</td>
                        <td><asp:TextBox ID="txtsoyisim" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>E-posta Adresi:</td>
                        <td><asp:TextBox ID="txteposta" runat="server" TextMode="Email"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Şifre:</td>
                        <td><asp:TextBox ID="txtsifre" runat="server" TextMode="Password"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center;">
                            <asp:Button ID="Button1" runat="server" Text="KAYDOL" CssClass="btn" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
                <asp:Label ID="lblKayit" runat="server" CssClass="message" Visible="false" Text="KAYIT OLUNDU !"></asp:Label>
                <p>Zaten bir hesabınız var mı? <a href="Login.aspx">Giriş Yap</a></p>
            </div>
        </form>
    </div>
</asp:Content>
