<%--ʹ��JDBC-ODBC�Ž����������Ѿ���������JDK��--%>
<%--�����ٻ�ȡJDBC������������ODBC����Դ--%>

<%-- ����Java��SQL�����ʹ��Java����ʹ��SQL�����ݿ���в��� --%>
<%@ page import="java.sql.*"%>

<%--ʹ��Class.forName�����ݿ��������������������Ǽ�JDBC����������--%>
<%--ʹ��DriverManager���getConnection()��������Connection���ݿ����Ӷ���--%>
<%--ʹ��Connection�����createStatement()����ִ��SQL������������Statement��ָ��������Ĺ��������ԣ����Խ��и��²���--%>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c=DriverManager.getConnection("jdbc:odbc:xsjbxx");
Statement s=c.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);%>

