<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rezervasyonlar.aspx.cs" Inherits="rossven_library.rezervasyonlar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-image:url(web/welcomebackground.jpg);background-size: cover;">
    <form id="form1" runat="server">
        	
	<div style="background-color: darkorange;padding-top: 10px;padding-bottom: 10px;margin-top: 5px;width: 100%;height: 25px;">
		<p>
			<asp:LinkButton ID="anaSayfabttn" runat="server" Text="Ana Sayfa" style="color: black;margin-left: 30px;margin-top: 9px;font-size: 18px;" OnClick="anaSayfabttn_Click" />
			<asp:LinkButton ID="contactbttn" runat="server" Text="İletişim" style="color: black;margin-left: 30px;margin-top: 9px;font-size: 18px;" OnClick="contactbttn_Click" />	
		</p>
	</div>

		<center>
		<div
			style="padding-top: 30px;padding-bottom: 50px;margin-top: 180px ;border-radius: 10px; height: 260px; width: 40%; background-color: white; opacity: 0.8;">
			<p style="color: black;font-size: 28px;margin-top: 20px;">Kitap Rezervasyonu Sorgulama</p>
				<asp:TextBox ID="reznogirtxt" runat="server" PlaceHolder="Lütfen Buraya Rezervasyon Numaranızı Giriniz" style="border-radius: 5px; width: 80%;height: 40px;"></asp:TextBox>
				<br><br>
				<asp:Button ID="sorgubttn" runat="server" Text="SORGULA" style="border-radius: 10px;background-color: darkorange;font-size: 20px;" Width="129px" OnClick="sorgubttn_Click" />
				<br /><br /><br />
			 <asp:Label ID="Label3" runat="server" Text="Kitap Adı:  "></asp:Label>
				
		    <asp:Label ID="kitapAdilbl" runat="server"></asp:Label>
		    
			<br />
				<asp:Label ID="Label1" runat="server" Text="Rezervasyon bitiş tarihi:  "></asp:Label>
				
				<asp:Label ID="tarihlbl" runat="server"></asp:Label>
			<br />
				
		</div>
	</center>
        
    </form>
</body>
</html>
