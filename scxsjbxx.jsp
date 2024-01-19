<%-- 网页编码采用简体中文--%>
<%@ page contentType="text/html;charset=GB2312"%>
<%-- 包含连接数据库的文件--%>
<%@ include file="jdbc-xsjbxx.jsp"%>


<%-- 获得浏览器提交的指定参数"学号"的值 --%>
<%
String xuehao=request.getParameter("xuehao");
String sql="delete from xsjbxx where xuehao ='"+xuehao+"'";

s.executeUpdate(sql);
s.close();
c.close();

out.print("<script language='javascript'>alert('学号 "+xuehao+"的基本信息已成功删除!');window.location.href='index.htm';</script>");
%>
