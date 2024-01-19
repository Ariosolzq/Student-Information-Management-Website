<%-- 网页编码采用简体中文--%>
<%@ page contentType="text/html;charset=GB2312"%>
<%-- 包含连接数据库的文件--%>
<%@ include file="jdbc-xsjbxx.jsp"%>

<%
//设置中文编码方式
request.setCharacterEncoding("gb2312");

//取得提交的姓名、学号、性别等
String xingming=request.getParameter("xingming");
String xuehao=request.getParameter("xuehao");
String xingbie=request.getParameter("xingbie");
String chushengriqi=request.getParameter("chushengriqi");
String youxiang=request.getParameter("youxiang");
String xuexing=request.getParameter("xuexing");
String beizhu=request.getParameter("beizhu");

 

//取得提交的兴趣爱好数组信息,先保存在数组中,然后转换为用","连接的字符串
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
if(tiyu != null ){
    for(int i=0;i<tiyu.length;i++){
            tiyu2=tiyu2+tiyu[i]+",";
            }
    }

 

//判断要增加的学号是否已经存在
String sql="select * from xsjbxx where xuehao ='"+xuehao+"'";
ResultSet rs=s.executeQuery(sql);
String id=null;
// 遍历结果集，将学号的数据赋值给变量id
while (rs.next())
	id=rs.getString("xuehao");
rs.close();


//如果已经存在,则给出相应的提示
if(id != null){
	out.print("<script language='javascript'>alert('学号"+xuehao+"的信息已存在,请输入其他学号!');onclick=history.back();</script>");
}
else{//如果不存在,进行增加操作
String sql1="insert into xsjbxx(xingming,xuehao,xingbie,chushengriqi,youxiang,xuexing,aihao,tiyuyundong,beizhu)";
sql1=sql1+"values('"+xingming+"','"+xuehao+"','"+xingbie+"','"+chushengriqi+"','";
sql1=sql1+youxiang+"','"+xuexing+"','"+aihao2+"','"+tiyu2+"','"+beizhu+"')";
s.executeUpdate(sql1);
s.close();
c.close();
//给出成功提示，并跳转到主页
out.print("<script language='javascript'>alert('学号"+xuehao+"的基本信息已成功增加！');window.location.href='index.htm';</script>"); 
}
%>

<%
// 首先，设置中文编码方式，以便正确处理中文字符
// 然后，从请求中获取表单提交的数据，包括姓名、学号、性别等
// 接着，将兴趣爱好和体育运动的多选数据转换为用逗号分隔的字符串
// 然后，查询数据库中是否已经存在相同学号的记录，如果存在，就给出提示并返回上一页
// 如果不存在，就构造插入语句，将表单数据插入到数据库中
// 最后，给出成功提示，并跳转到主页
%>