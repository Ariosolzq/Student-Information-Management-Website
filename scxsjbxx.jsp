<%-- ��ҳ������ü�������--%>
<%@ page contentType="text/html;charset=GB2312"%>
<%-- �����������ݿ���ļ�--%>
<%@ include file="jdbc-xsjbxx.jsp"%>


<%-- ���������ύ��ָ������"ѧ��"��ֵ --%>
<%
String xuehao=request.getParameter("xuehao");
String sql="delete from xsjbxx where xuehao ='"+xuehao+"'";

s.executeUpdate(sql);
s.close();
c.close();

out.print("<script language='javascript'>alert('ѧ�� "+xuehao+"�Ļ�����Ϣ�ѳɹ�ɾ��!');window.location.href='index.htm';</script>");
%>
