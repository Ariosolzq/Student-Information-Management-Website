<%-- ��ҳ������ü�������--%>
<%@ page contentType="text/html;charset=GB2312"%>
<%-- �����������ݿ���ļ�--%>
<%@ include file="jdbc-xsjbxx.jsp"%>

<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�޸�ѧ��������Ϣ</title>
<!--������Ϣ�����ļ�-->
<script src="xsjbxx.js" language="javascript"></script>
<!--������ʽ�ļ�-->
<link rel =stylesheet href="xsjbxx.css" type=text/css>
</head>

<%String xuehao=request.getParameter("xuehao");%>

<%
// ����ѧ�Ų�ѯѧ��������Ϣ
String sql="select * from xsjbxx where xuehao='"+xuehao+"'";
ResultSet rs=s.executeQuery(sql);

// ��������洢��ѯ���
String xingming="";
String xingbie="";
String chushengriqi="";
String youxiang="";
String xuexing="";
String aihao="";
String tiyuyundong="";
String beizhu="";

// ����������������ݸ�ֵ������
while (rs.next ()){
	xingming=rs.getString(1);
	xuehao=rs.getString(2);
	xingbie=rs.getString(3);
	chushengriqi=rs.getString(4);
	youxiang=rs.getString(5);
	xuexing=rs.getString(6);
	aihao=rs.getString(7);
	tiyuyundong=rs.getString(8);
	beizhu=rs.getString(9);
}

// �رս�������������Ӷ���
rs.close ();
s.close ();
c.close ();
%>


<body>
<!--����ύ��ťʱ�������ݻᱻ���͵�zxxgxsjbxx.jsp-->
<form name=form1 onsubmit="return checkform()" method="POST" action="zxxgxsjbxx.jsp">
	<div align="center">
		<table border="1" width="69%" cellspacing="1" cellpadding="3" height="484" bordercolor="#000000" id="table">
			<tr>
				<td colspan="2">
				<a href="index.htm">��ҳ</a>-&gt;<a href="cxxsjbxx.jsp">��ѯѧ��������Ϣ</a>->�޸�ѧ��������Ϣ</td>
			</tr>
			<tr>
				<td colspan="2">
				<p align="center" id=s1>������ѧ��������Ϣ</td>
			</tr>
			<tr>
				<td colspan="2">
				<p align="center"><font id=s3></font>����**��Ϊ������Ŀ��</font></td>
			</tr>
			<tr>
				<td width="22%" id=s2>����</td>
				<td width="72%"><input type="text" name="xingming" size="20" value="<%= xingming %>"><font id=s3>**������4������</font></td>
			</tr>
			<tr>
				<td width="22%" id=s2>ѧ��</td>
				<td width="72%"><input type="text" name="xuehao" size="20" value="<%= xuehao %>" readonly><font id=s3>**ѧ�Ų����޸�</font></td>
			</tr>
			<tr>
				<td width="22%" id=s2>�Ա�</td>
				<td width="72%">
				<! --����ʹ�����������ʽ,���﷨��ʽΪ:(���� )? �ַ�����û���ҵ�ָ�������ַ�������� 1:��� 2,���ȼ�������,����ֵΪtrue ʱ,���ʽ��ֵΪ���1,Ϊ falseʱ,���ʽ��ֵΪ���2&-- >
				<input type="radio" value="��" name="xingbie"<%= xingbie.indexOf("��")!=-1?"checked":"" %>>��
				<input type="radio" value="Ů" name="xingbie"<%= xingbie.indexOf("Ů")!=-1?"checked":"" %>>Ů</td>
				</td>
			</tr>
			<tr>
				<td width="22%" id=s2>��������</td>
				<td width="72%">
				<input type="text" name="chushengriqi" size="20"  value="<%= chushengriqi %>"><font id=s3>**��������Ч���ڣ������ϡ�YYYY-MM-DD����ʽ</font></td>
			</tr>
			<tr>
				<td width="22%" id=s2 >��������</td>
				<td width="72%"><input type="text" name="youxiang" size="20" value="<%= youxiang %>"><font id=s3>**������30���ַ����ַ��б��������@���͡�.�����ţ����ҡ�@�����żȲ����ǵ�������ĵ�һ���ַ���Ҳ���������һ���ַ�</font></td>
			</tr>
			<tr>
				<td width="22%" id=s2>Ѫ��</td>
				<td width="72%">
					<select size="1"name="xuexing">
						<option value="A"<%= xuexing.indexOf("A")!= -1?"selected":"" %>> A</op-tion>
						<option value="B"<%= xuexing.indexOf("B")!= -1?"selected":"" %>> B</op-tion>
						<option value="AB"<%= xuexing.indexOf("AB")!= -1?"selected":"" %>> AB </option>
						<option value="O"<%= xuexing.indexOf("O")!= -1?"selected":"" %>> O</op-tion>
					</select>
				</td>
			</tr>
			<tr>
				<td width="22%" id=s2>��Ȥ����</td>
				<td width="70%">
					<input type="checkbox" name="aihao" value="�Ķ�"<%= aihao.indexOf("�Ķ�")!=-1?"checked":"" %>>�Ķ�
					<input type="checkbox" name="aihao" value="����"<%= aihao.indexOf("����")!=-1?"checked":"" %>>����
					<input type="checkbox" name="aihao" value="��ʳ"<%= aihao.indexOf("��ʳ")!=-1?"checked":"" %>>��ʳ
					<input type="checkbox" name="aihao" value="�˶�"<%= aihao.indexOf("�˶�")!=-1?"checked":"" %>>����
					<input type="checkbox" name="aihao" value="����"<%= aihao.indexOf("����")!=-1?"checked":"" %>>����
				</td>
			</tr>
			<tr>
				<td width="22%"  style="font-weight:bold;color:black;font-size:18;text-align:right;letter-spacing:0.5em">
				ϲ���������˶�</td>
				<td width="72%">
				<select size="4" name="tiyuyundong" multiple>
					<option value="����"<%= tiyuyundong.indexOf("����")!=-1?"selected":"" %>>����</option>										
					<option value="����"<%= tiyuyundong.indexOf("����")!=-1?"selected":"" %>>����</option>	
					<option value="��ë��"<%= tiyuyundong.indexOf("��ë��")!=-1?"selected":"" %>>��ë��</option>
					<option value="ƹ����"<%= tiyuyundong.indexOf("ƹ����")!=-1?"selected":"" %>>ƹ����</option>	
					<option value="�ֻ�"<%= tiyuyundong.indexOf("�ֻ�")!=-1?"selected":"" %>>�ֻ�</option>
					<option value="����"<%= tiyuyundong.indexOf("����")!=-1?"selected":"" %>>����</option>
				</select><font id=s3>��סCtrl�ɶ�ѡ</font>
				</td>
			</tr>
			<tr>
				<td width="22%" id=s2>��ע</td>
				<td width="72%"><textarea rows="8" name="beizhu" cols="40"><%= beizhu%></textarea><font id=s3>������20������</font></td>
			</tr>
			<tr>
				<td colspan="2">
				<p align="center"><input type="submit" value="�ύ" name="B1">&nbsp;
				<input type="reset" value="����" name="B2"></td>
			</tr>
		</table>
	</div>
	<p>��</p>
</form>

</body>

</html>