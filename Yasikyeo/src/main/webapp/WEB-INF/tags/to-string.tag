<%@ tag language="java" pageEncoding="UTF-8"%>
<%-- 
    Can turn a CLOB to String for Oracle schema
--%>
<%@ tag body-content="empty" %>
<%@ attribute name="var" required="true" type="java.lang.String" %>
<%@ attribute name="value" required="true" type="java.lang.Object" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ tag import="java.sql.*" %>
<%@ tag import="javax.servlet.jsp.*" %>
<%
    String strValue = null; 
    if (value == null) {
        strValue = ""; // NB: oracle empty string is null
    } else if (value instanceof Clob) {
        Clob clob = (Clob)value;
        long size = clob.length();
        strValue = clob.getSubString(1, (int)size);
    } else {
        strValue = value.toString();
    }
    jspContext.setAttribute(var, strValue, PageContext.REQUEST_SCOPE);
%>