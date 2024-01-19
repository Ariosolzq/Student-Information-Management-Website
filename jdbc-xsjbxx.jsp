<%--使用JDBC-ODBC桥接驱动程序，已经被包含在JDK中--%>
<%--无需再获取JDBC驱动程序，设置ODBC数据源--%>

<%-- 引入Java的SQL类包，使得Java可以使用SQL对数据库进行操作 --%>
<%@ page import="java.sql.*"%>

<%--使用Class.forName（数据库驱动程序类名）方法登记JDBC的驱动程序--%>
<%--使用DriverManager类的getConnection()方法创建Connection数据库连接对象--%>
<%--使用Connection对象的createStatement()创建执行SQL语句的容器对象Statement，指定结果集的滚动敏感性，可以进行更新操作--%>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c=DriverManager.getConnection("jdbc:odbc:xsjbxx");
Statement s=c.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);%>

