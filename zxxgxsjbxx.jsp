<%-- ��ҳ������ü�������--%>
<%@ page contentType="text/html;charset=GB2312"%>
<%-- �����������ݿ���ļ�--%>
<%@ include file="jdbc-xsjbxx.jsp"%>


<%
//�����ģ�黯�����ã���߿�ά���ԺͿ���չ��
//�������ı��뷽ʽ,��֤�����ַ��ܹ���ȷ����ͽ���
request.setCharacterEncoding("gb2312");
 

//ȡ���ύ������ѧ���Ա������������Ѫ�ͺͱ�ע��Ϣ
String xingming=request.getParameter("xingming");
String xuehao=request.getParameter("xuehao");
String xingbie=request.getParameter("xingbie");
String chushengriqi=request.getParameter("chushengriqi");
String youxiang=request.getParameter("youxiang");
String xuexing=request.getParameter("xuexing");
String beizhu=request.getParameter("beizhu");
 
//ȡ���ύ����Ȥ������Ϣ,�ȱ�����������,Ȼ��ת��Ϊ��","���ӵ��ַ���
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

if(tiyu !=null ){

    for(int i=0;i<tiyu.length;i++){
            tiyu2=tiyu2+tiyu[i]+",";
            }
    }
    
String sql="update xsjbxx set xingming='"+xingming+"',xingbie='"+xingbie;
sql=sql+"',chushengriqi='"+chushengriqi+"',youxiang='"+youxiang+"',xuexing='"+xuexing;
sql=sql+"',aihao='"+aihao2+"',tiyuyundong='"+tiyu2+"',beizhu='"+beizhu+"'";
sql=sql+"where xuehao='"+xuehao+"'";

s.executeUpdate(sql);
s.close();
c.close();

out.print ("<script language='javascript'>alert('ѧ��"+xuehao+"�Ļ�����Ϣ�ѳɹ��޸�!');window.location.href='index.htm';</script>");
%>


