<%-- ��ҳ������ü�������--%>
<%@ page contentType="text/html;charset=GB2312"%>
<%-- �����������ݿ���ļ�--%>
<%@ include file="jdbc-xsjbxx.jsp"%>

<%
//�������ı��뷽ʽ
request.setCharacterEncoding("gb2312");

//ȡ���ύ��������ѧ�š��Ա��
String xingming=request.getParameter("xingming");
String xuehao=request.getParameter("xuehao");
String xingbie=request.getParameter("xingbie");
String chushengriqi=request.getParameter("chushengriqi");
String youxiang=request.getParameter("youxiang");
String xuexing=request.getParameter("xuexing");
String beizhu=request.getParameter("beizhu");

 

//ȡ���ύ����Ȥ����������Ϣ,�ȱ�����������,Ȼ��ת��Ϊ��","���ӵ��ַ���
String aihao[] =request.getParameterValues("aihao");
String aihao2="";
if(aihao != null ){ 
    for(int i=0;i<aihao.length;i++){
            aihao2=aihao2+aihao[i]+",";
            }
    }

 

//ȡ���ύ��ϲ���������˶���Ϣ,�ȱ�����������,Ȼ��ת��Ϊ��","���ӵ��ַ���
String tiyu[]=request.getParameterValues("tiyuyundong");
String tiyu2="";
if(tiyu != null ){
    for(int i=0;i<tiyu.length;i++){
            tiyu2=tiyu2+tiyu[i]+",";
            }
    }

 

//�ж�Ҫ���ӵ�ѧ���Ƿ��Ѿ�����
String sql="select * from xsjbxx where xuehao ='"+xuehao+"'";
ResultSet rs=s.executeQuery(sql);
String id=null;
// �������������ѧ�ŵ����ݸ�ֵ������id
while (rs.next())
	id=rs.getString("xuehao");
rs.close();


//����Ѿ�����,�������Ӧ����ʾ
if(id != null){
	out.print("<script language='javascript'>alert('ѧ��"+xuehao+"����Ϣ�Ѵ���,����������ѧ��!');onclick=history.back();</script>");
}
else{//���������,�������Ӳ���
String sql1="insert into xsjbxx(xingming,xuehao,xingbie,chushengriqi,youxiang,xuexing,aihao,tiyuyundong,beizhu)";
sql1=sql1+"values('"+xingming+"','"+xuehao+"','"+xingbie+"','"+chushengriqi+"','";
sql1=sql1+youxiang+"','"+xuexing+"','"+aihao2+"','"+tiyu2+"','"+beizhu+"')";
s.executeUpdate(sql1);
s.close();
c.close();
//�����ɹ���ʾ������ת����ҳ
out.print("<script language='javascript'>alert('ѧ��"+xuehao+"�Ļ�����Ϣ�ѳɹ����ӣ�');window.location.href='index.htm';</script>"); 
}
%>

<%
// ���ȣ��������ı��뷽ʽ���Ա���ȷ���������ַ�
// Ȼ�󣬴������л�ȡ���ύ�����ݣ�����������ѧ�š��Ա��
// ���ţ�����Ȥ���ú������˶��Ķ�ѡ����ת��Ϊ�ö��ŷָ����ַ���
// Ȼ�󣬲�ѯ���ݿ����Ƿ��Ѿ�������ͬѧ�ŵļ�¼��������ڣ��͸�����ʾ��������һҳ
// ��������ڣ��͹��������䣬�������ݲ��뵽���ݿ���
// ��󣬸����ɹ���ʾ������ת����ҳ
%>