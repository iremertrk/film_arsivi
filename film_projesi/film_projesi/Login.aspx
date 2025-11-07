<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="film_projesi.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style>
        
        .login-container {
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
    </style>

    <div class="login-container">
        <form id="formLogin" runat="server">
            <div class="form-container">
                <h2>Giriş Yap</h2>
                <table>
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
                        <asp:Button ID="btnGiris" runat="server" Text="GİRİŞ" CssClass="btn" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
                <p>Hesabınız yok mu? <a href="registration.aspx">Kaydol</a></p>
            </div>
        </form>
    </div>

</asp:Content>
