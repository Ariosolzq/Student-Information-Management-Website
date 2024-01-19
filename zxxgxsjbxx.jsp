<%-- 网页编码采用简体中文--%>
<%@ page contentType="text/html;charset=GB2312"%>
<%-- 包含连接数据库的文件--%>
<%@ include file="jdbc-xsjbxx.jsp"%>


<%
//代码的模块化和重用，提高可维护性和可扩展性
//设置中文编码方式,保证中文字符能够正确传输和解析
request.setCharacterEncoding("gb2312");
 

//取得提交的姓名学号性别出生日期邮箱血型和备注信息
String xingming=request.getParameter("xingming");
String xuehao=request.getParameter("xuehao");
String xingbie=request.getParameter("xingbie");
String chushengriqi=request.getParameter("chushengriqi");
String youxiang=request.getParameter("youxiang");
String xuexing=request.getParameter("xuexing");
String beizhu=request.getParameter("beizhu");
 
//取得提交的兴趣爱好信息,先保存在数组中,然后转换为用","连接的字符串
String aihao[] =request.getParameterValues("aihao");
String aihao2="";
if(aihao != null ){
    for(int i=0;i<aihao.length;i++){
            aihao2=aihao2+aihao[i]+",";
            }
    }

//取得提交的喜欢的体育运动信息,先保存在数组中,然后转换为用","连接的字符串

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

out.print ("<script language='javascript'>alert('学号"+xuehao+"的基本信息已成功修改!');window.location.href='index.htm';</script>");
%>


