<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hosgeldiniz.aspx.cs" Inherits="rossven_library.hosgeldiniz" %>

<!DOCTYPE html>
<html>
<head>
	
	<title></title>
</head>
<body style="background-image:url(web/welcomebackground.jpg);background-size: cover;">
    <form id="form1" runat="server">
   	  <center>
        <div style="background-color: black;width: 35%;height: 439px; opacity: 0.7;">
        <p style="color: white; padding-top: 100px;font-size: 30px;text-align: center;">Kütüphane Rezervasyon Sistemine Hoşgeldiniz</p>
   	    <center><asp:Button ID="girisbttn" runat="server" Text="Giriş Yap" style="font-size: 24px;text-align: center;color: blue;position: static;" OnClick="girisbttn_Click" /></center><br><br><br>
   	    <center><asp:Button ID="uyebttn" runat="server" Text="Üye Ol" style="font-size: 24px;text-align: center;color: blue;position: static;" OnClick="uyebttn_Click" /></center><br><br><br>
   </center>
        </div>
     </form>
</body>
</html>

