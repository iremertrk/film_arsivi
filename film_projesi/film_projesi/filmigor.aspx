<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici.Master" AutoEventWireup="true" CodeBehind="filmigor.aspx.cs" Inherits="film_projesi.filmigor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div style="display: flex; justify-content: center; align-items: center; flex-direction: column; margin-top: 60px; width: 100%;">
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Vertical">
                <ItemTemplate>
                    <div style="width: 90%; max-width: 800px; border: 2px solid #ddd; padding: 20px; border-radius: 10px; background-color: #f5f5f5; text-align: center; margin-bottom: 30px; box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); display: flex; flex-direction: column; align-items: center;">

                        <!-- Film Fotoğrafı ve İçerik Alanı -->
                        <div style="display: flex; flex-direction: column; align-items: center; width: 100%; padding: 10px 20px; text-align: center;">
                            <!-- Film Fotoğrafı -->
                            <div style="width: 100%; max-width: 300px;">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("film_foto") %>'
                                    Style="width: 100%; height: auto; border-radius: 10px; box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.2);" />
                            </div>

                            <!-- İçerik Bilgileri -->
                            <div style="width: 100%; text-align: center; margin-top: 15px;">
                                <h2 style="color: #333; font-weight: bold; margin-bottom: 10px;">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("film_ad") %>'></asp:Label>
                                </h2>
                                <p style="font-size: 14px; color: #555; line-height: 1.5;">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("film_aciklama") %>'></asp:Label>
                                </p>

                                <p style="font-size: 16px; color: #444;"><strong>Türü:</strong> <asp:Label ID="Label4" runat="server" Text='<%# Eval("film_tur") %>'></asp:Label></p>
                                <p style="font-size: 16px; color: #444;"><strong>Yönetmen:</strong> <asp:Label ID="Label3" runat="server" Text='<%# Eval("film_yonetmen") %>'></asp:Label></p>
                                <p style="font-size: 16px; color: #777;"><strong>Yıl:</strong> <asp:Label ID="Label5" runat="server" Text='<%# Eval("film_yil") %>'></asp:Label></p>
                            </div>
                        </div>

                        <!-- Butonlar -->
                        <div style="margin-top: 15px; display: flex; flex-wrap: wrap; justify-content: center; gap: 10px;">
                            <a href="filmisil.aspx?id=<%# Eval("film_id") %>" style="background-color: #ff4d4d; color: white; padding: 10px 20px; border-radius: 5px; text-decoration: none; font-weight: bold;">Sil</a>
                            <a href="Guncelle.aspx?id=<%# Eval("film_id") %>" style="background-color: #FFA500; color: white; padding: 10px 20px; border-radius: 5px; text-decoration: none; font-weight: bold;">Güncelle</a>
                            <a href="filmionayla.aspx?id=<%# Eval("film_id") %>" style="background-color: #4CAF50; color: white; padding: 10px 20px; border-radius: 5px; text-decoration: none; font-weight: bold;">Onayla</a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</asp:Content>