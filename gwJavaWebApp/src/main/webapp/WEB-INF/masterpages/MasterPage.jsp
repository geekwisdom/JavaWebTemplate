<%@page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/tlds/MasterPage.tld" prefix="mp"%>
<!DOCTYPE html>
<!-- GeekWisdom.org - Themeable Site / W3C Compliant - Brad Detchevery -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<!-- TAG LINE -->
<html lang="en">
<head><title>TITLE Template</title>
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-112001731-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-112001731-1');
</script>


<link rel="alternate" type="application/rss+xml" title="" href="" />
<!--[if lt IE 9]-->
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
</script>
<!--[endif]-->
<link id="MainStyle" rel="stylesheet" type="text/css" href="./themes/gw-theme.css" />

<!--  ClickJack /Javascript Helper -->
<style id="noJavascriptStyle">
    #noJavascript {display:none !important;}
</style>
<script src="./scripts/org/geekwisdom/logging/gwLogger.js"></script>
<script src="./scripts/org/geekwisdom/settings/gwSettings.js"></script>
<!-- Standard Meta data -->
<meta name="Author" CONTENT="">
<meta name="Publisher" CONTENT="">
<meta name="Content-Language" CONTENT="">
<meta name="description" content="">


<!-- Open Graph metadata -->
<meta property="og:type" content="" />
<meta property="og:site_name" content="" />
<meta property="og:title" content="" />
<meta property="og:url" content="" />
<meta property="og:description" content="" />
<meta property="og:image" content="" />

<!-- Twitter metadata -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="">
<meta name="twitter:title" content="">
<meta name="twitter:description" content="">
</head>
<body>
<jsp:directive.include file = "oldbrowser.inc" />
<div id="noJavascript">
<mp:contentplaceholder id="header" runat="server">
<header>
<div class="HeaderDiv">
<h3  class="HeaderTitle"><span id="AppName" lang="en">&nbsp;</span></h3>
<h4 class="HeaderSubTitle"><span id="DeptName" lang="en">&nbsp;</span></h4>
</div>
</header>
</mp:contentplaceholder>
<div>
<mp:contentplaceholder id="nav" runat="server">
 <jsp:directive.include file = "nav.inc" />    
</mp:contentplaceholder>
<mp:contentplaceholder id="aside" runat="server">
<jsp:directive.include file = "aside.inc" />    
</mp:contentplaceholder>

<mp:contentplaceholder id="main" runat="server">
Main content goes here
</mp:contentplaceholder>
<jsp:directive.include file = "footer.inc" />
 </div>
</div>
<script>
function showMyPage()
{
    if (self === top) {
        var removeold = document.getElementById("noJavascriptDIV");
        removeold.parentNode.removeChild(removeold);
        var antiClickjack = document.getElementById("noJavascriptStyle");
        antiClickjack.parentNode.removeChild(antiClickjack);

    } else {
        top.location = self.location;
    }
}

document.onload = new function ()
{
mySettings = new gwSetting();
var theStyle=mySettings.GetArgument("theme");
if (theStyle == null || theStyle == "" || theStyle == "null") theStyle=mySettings.GetSetting("theme");
if (theStyle == null || theStyle == "" || theStyle == "null") 
 {
 var today = new Date();
 var hour = today.getHours();
 theStyle="gw_day-theme";
 if (hour > 19 || hour < 4) theStyle="gw-theme";
 }
if (theStyle != "") 
 {
 if (theStyle == "null") theStyle="gw-theme";

 mySettings.WriteSetting("theme",theStyle);
 var removeold = document.getElementById("MainStyle");
     removeold.parentNode.removeChild(removeold);

var newstyle = document.createElement("link"); // Create a new link Tag
   newstyle.setAttribute("rel", "stylesheet");
   newstyle.setAttribute("type", "text/css");
   newstyle.setAttribute("href", "./themes/" + theStyle + ".css"); // Your .css File
   document.getElementsByTagName("head")[0].appendChild(newstyle);
 }
showMyPage();

}
</script>
</body>
</html> 
