<%-- 网页编码采用简体中文--%>
<%@ page contentType="text/html;charset=GB2312"%>
<%-- 包含连接数据库的文件--%>
<%@ include file="jdbc-xsjbxx.jsp"%>

<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>修改学生基本信息</title>
<!--引入信息检验文件-->
<script src="xsjbxx.js" language="javascript"></script>
<!--引入样式文件-->
<link rel =stylesheet href="xsjbxx.css" type=text/css>
</head>

<%String xuehao=request.getParameter("xuehao");%>

<%
// 根据学号查询学生基本信息
String sql="select * from xsjbxx where xuehao='"+xuehao+"'";
ResultSet rs=s.executeQuery(sql);

// 定义变量存储查询结果
String xingming="";
String xingbie="";
String chushengriqi="";
String youxiang="";
String xuexing="";
String aihao="";
String tiyuyundong="";
String beizhu="";

// 遍历结果集，将数据赋值给变量
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

// 关闭结果集，语句和连接对象
rs.close ();
s.close ();
c.close ();
%>


<body>
<!--点击提交按钮时，表单数据会被发送到zxxgxsjbxx.jsp-->
<form name=form1 onsubmit="return checkform()" method="POST" action="zxxgxsjbxx.jsp">
	<div align="center">
		<table border="1" width="69%" cellspacing="1" cellpadding="3" height="484" bordercolor="#000000" id="table">
			<tr>
				<td colspan="2">
				<a href="index.htm">主页</a>-&gt;<a href="cxxsjbxx.jsp">查询学生基本信息</a>->修改学生基本信息</td>
			</tr>
			<tr>
				<td colspan="2">
				<p align="center" id=s1>请输入学生基本信息</td>
			</tr>
			<tr>
				<td colspan="2">
				<p align="center"><font id=s3></font>（带**号为必填项目）</font></td>
			</tr>
			<tr>
				<td width="22%" id=s2>姓名</td>
				<td width="72%"><input type="text" name="xingming" size="20" value="<%= xingming %>"><font id=s3>**不多于4个汉字</font></td>
			</tr>
			<tr>
				<td width="22%" id=s2>学号</td>
				<td width="72%"><input type="text" name="xuehao" size="20" value="<%= xuehao %>" readonly><font id=s3>**学号不可修改</font></td>
			</tr>
			<tr>
				<td width="22%" id=s2>性别</td>
				<td width="72%">
				<! --这里使用了条件表达式,其语法格式为:(条件 )? 字符串中没有找到指定的子字符串。结果 1:结果 2,首先计算条件,返回值为true 时,表达式的值为结果1,为 false时,表达式的值为结果2&-- >
				<input type="radio" value="男" name="xingbie"<%= xingbie.indexOf("男")!=-1?"checked":"" %>>男
				<input type="radio" value="女" name="xingbie"<%= xingbie.indexOf("女")!=-1?"checked":"" %>>女</td>
				</td>
			</tr>
			<tr>
				<td width="22%" id=s2>出生日期</td>
				<td width="72%">
				<input type="text" name="chushengriqi" size="20"  value="<%= chushengriqi %>"><font id=s3>**必须是有效日期，并符合“YYYY-MM-DD”格式</font></td>
			</tr>
			<tr>
				<td width="22%" id=s2 >电子邮箱</td>
				<td width="72%"><input type="text" name="youxiang" size="20" value="<%= youxiang %>"><font id=s3>**不多于30个字符，字符中必须包含“@”和“.”符号，并且“@”符号既不能是电子邮箱的第一个字符，也不能是最后一个字符</font></td>
			</tr>
			<tr>
				<td width="22%" id=s2>血型</td>
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
				<td width="22%" id=s2>兴趣爱好</td>
				<td width="70%">
					<input type="checkbox" name="aihao" value="阅读"<%= aihao.indexOf("阅读")!=-1?"checked":"" %>>阅读
					<input type="checkbox" name="aihao" value="音乐"<%= aihao.indexOf("音乐")!=-1?"checked":"" %>>音乐
					<input type="checkbox" name="aihao" value="美食"<%= aihao.indexOf("美食")!=-1?"checked":"" %>>美食
					<input type="checkbox" name="aihao" value="运动"<%= aihao.indexOf("运动")!=-1?"checked":"" %>>音乐
					<input type="checkbox" name="aihao" value="旅游"<%= aihao.indexOf("旅游")!=-1?"checked":"" %>>旅游
				</td>
			</tr>
			<tr>
				<td width="22%"  style="font-weight:bold;color:black;font-size:18;text-align:right;letter-spacing:0.5em">
				喜欢的体育运动</td>
				<td width="72%">
				<select size="4" name="tiyuyundong" multiple>
					<option value="篮球"<%= tiyuyundong.indexOf("篮球")!=-1?"selected":"" %>>篮球</option>										
					<option value="足球"<%= tiyuyundong.indexOf("足球")!=-1?"selected":"" %>>足球</option>	
					<option value="羽毛球"<%= tiyuyundong.indexOf("羽毛球")!=-1?"selected":"" %>>羽毛球</option>
					<option value="乒乓球"<%= tiyuyundong.indexOf("乒乓球")!=-1?"selected":"" %>>乒乓球</option>	
					<option value="轮滑"<%= tiyuyundong.indexOf("轮滑")!=-1?"selected":"" %>>轮滑</option>
					<option value="长跑"<%= tiyuyundong.indexOf("长跑")!=-1?"selected":"" %>>长跑</option>
				</select><font id=s3>按住Ctrl可多选</font>
				</td>
			</tr>
			<tr>
				<td width="22%" id=s2>备注</td>
				<td width="72%"><textarea rows="8" name="beizhu" cols="40"><%= beizhu%></textarea><font id=s3>不多于20个汉字</font></td>
			</tr>
			<tr>
				<td colspan="2">
				<p align="center"><input type="submit" value="提交" name="B1">&nbsp;
				<input type="reset" value="重置" name="B2"></td>
			</tr>
		</table>
	</div>
	<p>　</p>
</form>

</body>

</html>
