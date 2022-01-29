<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anaSayfa.aspx.cs" Inherits="rossven_library.anaSayfa" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		*{
			margin:0;
			padding: 0;
		}
		a:link {
			text-decoration: none;
		}
	    .auto-style1 {
            margin-bottom: 0;
        }
		
	</style>
</head>
<body style="background-image:url(web/homepage.jpg);background-size: cover;padding: 0;">
	<form id="form1" runat="server">

	<div style="background-color: black; opacity: 0.7; padding-top: 20px;padding-bottom: 20px;margin-top: 15px;width: 100%;height: 40px;">
		<p style="color: white;font-size: 20px; margin-left: 30px;margin-top: 10px;">Kütüphane Rezervasyon Sistemi</p>
	</div>
	
	<div style="background-color: darkorange;opacity: 0.7;padding-top: 10px;padding-bottom: 10px;margin-top: 5px;width: 100%;height: 25px;">
		<p>
			<asp:LinkButton ID="anaSayfabttn" runat="server" Text="Ana Sayfa" style="color: black;margin-left: 30px;margin-top: 9px;font-size: 18px;" OnClick="anaSayfabttn_Click" />
			<asp:LinkButton ID="rezbttn" runat="server" Text="Kitaplarınız" style="color: black;margin-left: 30px;margin-top: 9px;font-size: 18px;" OnClick="rezbttn_Click" />
			<asp:LinkButton ID="contactbttn" runat="server" Text="İletişim" style="color: black;margin-left: 30px;margin-top: 9px;font-size: 18px;" OnClick="contactbttn_Click" />	
		</p>
	</div>
	
		<div>
			<p style="font-size: 60px;font-family: arial;color: white;margin-top: 180px;margin-left: 100px;">İstediğiniz Kitabı Kolayca<br>Rezerve edebilirsiniz</p>
		</div>
		
	
		
		<div style="background-color: black; margin-bottom: 100px; padding-top: 40px;padding-bottom: 20px;margin-top: -200px;margin-left: 850px;width: 35%;height: 439px; opacity: 0.8;">
		
			<p style="color: white;opacity: 0.9;font-size: 25px;margin-top: -20px;margin-left: 15px;">Kitap Adı</p>
		<asp:DropDownList ID="bookList" runat="server" style="border-radius: 5px;width: 40%;height: 40px;background-color: white;opacity: 0.8;font-size: 20px; margin-left: 15px;margin-top: 5px;color: black;">
            <asp:ListItem disabled="disabled" Selected="True">Kitap adı</asp:ListItem>
            <asp:ListItem>Tehlikeli Oyunlar</asp:ListItem>
            <asp:ListItem>Tutunamayanlar</asp:ListItem>
            <asp:ListItem>Santranç</asp:ListItem>
            <asp:ListItem>Fareler ve Insanlar</asp:ListItem>
            <asp:ListItem>Simyaci</asp:ListItem>
            <asp:ListItem>1984</asp:ListItem>
        </asp:DropDownList>

		<p style="color: white;opacity: 0.9;font-size: 25px;margin-top: 15px;margin-left: 15px;">Hangi tarihe kadar rezerve edeceksiniz.</p>

		<asp:Calendar ID="date" runat="server" style="border-radius: 5px;width: 40%;height: 40px;background-color: white;opacity: 0.8;font-size: 20px; margin-left: 15px;margin-top: 5px;color: black;" OnSelectionChanged="date_SelectionChanged"></asp:Calendar>

		<br />
		<br />

		<asp:Label ID="Label1" runat="server" Text="Kitap Adeti:" ForeColor="White" style="margin-left: 15px"></asp:Label>

		<asp:Label ID="Label2" runat="server" ForeColor="White" style="margin-left: 15px"></asp:Label>
		<br />
		<asp:Label ID="Label3" runat="server" ForeColor="White" style="margin-left: 15px"></asp:Label>


		<center><asp:Button ID="kitapRezBtn" runat="server" Text="Kitabı Rezerve et" style="border-radius: 5px;width: 40%;height: 40px;background-color: orange;opacity: 0.8;font-size: 20px; margin-top: 25px;color: black;" OnClick="kitapRezBtn_Click" /></center>
	</div>
    </form>
</body>
</html>


