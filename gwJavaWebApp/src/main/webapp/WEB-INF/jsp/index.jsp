<%@page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/tlds/MasterPage.tld" prefix="mp"%>
<mp:use masterpagefile="MasterPage.jsp">
    <mp:content contentplaceholderid="main">
        <h2>${PageName}</h2>
<p>Congratulations! If you are seeing this page you have correctly build and deployed the sample <a href="https://geekwisdom.org">GeekWisdom</a> jboss template file!</p>
<p>The Welcome Message is ${WelcomeMessage}</p>
    </mp:content>
</mp:use>