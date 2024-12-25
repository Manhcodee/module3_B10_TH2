<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: manh
  Date: 12/25/2024
  Time: 9:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
  Map<String, String> dic = new HashMap<>();
%>
<%
  dic.put("hello", "Xin chào");
  dic.put("how", "Thế nào");
  dic.put("book", "Quyển vở");
  dic.put("computer", "Máy tính");

  String search = request.getParameter("search");
  if (search != null && !search.trim().isEmpty()) {
    String result = dic.get(search);
    out.println("<h2>Search Result</h2>");
    if (result != null) {
      out.println("<p>Word: <b>" + search + "</b></p>");
      out.println("<p>Result: <b>" + result + "</b></p>");
    } else {
      out.println("<p>Word: <b>" + search + "</b></p>");
      out.println("<p>Result: <b>Not found</b></p>");
    }
  } else {
    out.println("<h2>Please enter a word to search</h2>");
  }
%>
</body>
</html>
