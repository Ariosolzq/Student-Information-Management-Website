//��д��֤ѧ��������Ϣ��Ч�Եĺ���
function checkform()
{
	var xingming=document.form1.xingming
	var xuehao=document.form1.xuehao
	var chushengriqi=document.form1.chushengriqi
	var youxiang=document.form1.youxiang
	var beizhu=document.form1.beizhu
	
		//����isempty���������ж����������Ƿ�Ϊ��
		if(isempty (xingming))
		{alert ("��������Ϊ��,����������!")
		document.form1.xingming.focus()
		return false
		}
		
		//���� checkLength() �����ж����������Ƿ񲻶���4������
		if(checkLength(xingming,4))
		{alert ("�������Ȳ�����4������,����������!")
		document.form1.xingming.focus()
		return false
		}
		
		//���� isChinese () �����ж����������Ƿ�Ϊ����
		if(isChinese(xingming))
		{alert ("��������Ϊ����,����������!")
		document.form1.xingming.focus()
		return false
		}

		//���� isempty () �����ж�ѧ�������Ƿ�Ϊ��
		if(isempty(xuehao))
		{alert ("ѧ�Ų���Ϊ��,������ѧ��!")
		document.form1.xuehao.focus()
		return false
		}
		
		//���� checkNumber() �����ж�ѧ�������Ƿ�Ϊ8λ
		if(checkNumber(xuehao,8))
		{alert ("ѧ�ű���Ϊ8λ,����������!")
		document.form1.xuehao.focus()
		return false
		}
		
		//���� isposintger() �����ж�ѧ�������Ƿ�Ϊ����
		if(isposintger(xuehao)==false)
		{alert ("ѧ�ű���Ϊ����,����������!")
		document.form1.xuehao.focus()
		return false
		}
		
		//���� isempty () �����жϳ������������Ƿ�Ϊ��
		if(isempty(chushengriqi))
		{alert ("�������ڲ���Ϊ��,�������������!")
		document.form1.chushengriqi.focus()
		return false
		}
		
		//���� isdate () �����жϳ������ڸ�ʽ�Ƿ���ȷ
		if(isdate(chushengriqi)!=true )
		{alert(isdate(chushengriqi))
		document.form1.chushengriqi.focus()
		return false
		}
		
		//���� isempty () �����жϵ������������Ƿ�Ϊ��
		if(isempty(youxiang))
		{alert("�������䲻��Ϊ��,�������������!")
		document.form1.youxiang.focus()
		return false
		}
		
		//���� isMail () �����жϵ��������ʽ�Ƿ���ȷ
		if(isMail(youxiang)!=true)
		{alert(isMail(youxiang))
		document.form1.youxiang.focus()
		return false
		}

		//���� checkLength() �����жϵ������䳤���Ƿ񲻶���30������
		if(checkLength(youxiang,30))
		{alert("�������䳤�Ȳ�����30���ַ�,����������!")
		document.form1.youxiang.focus()
		return false
		}		
		
		if(beizhu.value!="" )
		{//����isChinese () �����жϱ�ע�����Ƿ�Ϊ����
		if(isChinese(beizhu ))
			{alert ("��ע����Ϊ����,����������!")
			form1.beizhu.focus()
			return false
			}
		//���� checkLength() �����жϱ�ע�����Ƿ񲻶���20������
		if(checkLength(beizhu ,20))
			{alert ("��ע���Ȳ��ܶ���20���ַ�,����������!")
			document.form1.beizhu.focus()
			return false
			}
		}
}

//�ж϶���ֵ�Ƿ�Ϊ��
function isempty(object)
{
	var str = object.value
	if (str == null || str =="")
		return true
	else
		return false
	}
	
	
//��������Ƿ�Ϊ����
function isChinese(object)
{
	var i
		for( i = 0;i< object.value.length;i++)
		{
		if( object.value.charCodeAt(i)>= 32 && object.value.charCodeAt(i) <= 128)
		return true
		}
return false
}

//��������Ƿ�Ϊ����
function isposintger(object)
{
	var inputstr = object.value.toString( )
	var length = inputstr.length
	if (length>0)
	{
		for (var i = 0; i < inputstr.length; i++)
		{
		var onechar = inputstr.charAt(i)
		if( onechar<"0" || onechar>"9" )
		{
		return false
		}
	}
	return true
	}
	else
		return false
	}//��������ĵ��������Ƿ���Ч
function isMail(youxiang)
	{
	var youxiang=youxiang.value
	var i=youxiang.indexOf("@")//indexOf() ��������ֵ���ַ����е�һ�γ��ֵ�λ�á����δ�ҵ���ֵ���� indexOf() �������� -1
	var j=youxiang.lastIndexOf("@")
	var k=youxiang.indexOf(".")
	var message
	if(i==-1)//����ʼ���ַ��û���ַ�@��Ϊ��Ч
		{message="������������@���ţ����������룡"
		 return message}
	if(i==0)
		{message="����������@���Ų����ǵ�һ���ַ������������룡"
		 return message}
	if(j==youxiang.length-1)
		{message="����������@���Ų��������һ���ַ������������룡"
		return message}
	if(k== -1)//����ʼ���ַ��û���ַ�"."��Ϊ��Ч
		{message="������������.���ţ����������룡"
		return message}
	return true
	}
	
	
//�����ַ�������
function checkLength(object,n){
	if (object.value.length==0)
		return false
	if (object.value.length<=n)
		return false
	else
		return true
	}



	

//����ѧ�ų���
function checkNumber(object,n)
{
	if(object.value.length==n)
		return false
	else
		return true
}

//��֤���ڸ�ʽ�Ƿ���ȷ�������Ƿ���Ч//
function isdate(object){
	var date=object.value
	var char1 =date.charAt(4)//charAt() ���������ַ�����ָ���������±꣩�����ַ�
	var char2 =date.charAt(7)
	var day1 =date.substring(8,10) //substring() ������ͷ��β������������ȡ�ַ���
	var lenth =day1.length
	var message,flag
	flag=0
	
	  if (date.length != 10) { // ��������ַ����ĳ����Ƿ�Ϊ10
	    message="���������밴YYYY-MM-DD��ʽ�������֣�"
	    return message // ���ش�����Ϣ
	  }
	
	for(var j=0;j<4;j++){
		var cha3 =date.charAt(j)
		if (isNaN(cha3)){
			message="���������밴YYYY-MM-DD��ʽ�������֣�"
			return message}
		}
		
	for(var k=5;k<7;k++){
		var char4 =date.charAt(k)
		if (isNaN(char4)){
			message="���������밴YYYY-MM-PD��ʽ�������֣�"
			return message}
		}
			
	for(var l=8;l<10;l++){
		var char5 =date.charAt(l)
		if (isNaN(char5)){
			message="���������밴YYYY-MM-PD��ʽ�������֣�"
			return message}
		}
		
		
	if (char1 != "-" || char2 != "-" || lenth < "2")
		{
		message="���������밴YYYY-MM-DD��ʽ�������֣�"
		return message}
	else{
		var year=date.substring(0,4)
		var month=date.substring(5,7)
		var day=date.substring(8,10)
		var bj=0
		var message
		if (year<"1900"||year>"2023"){
			message="���Ӧ��1900-2023֮�䣬"
			bj=1
			}
		if (month<"01"||month>"12"){
			if (bj==1){
				message=message+"�·�Ӧ��01-12֮�䣬"}
			else{
				message="�·�Ӧ��01-12֮�䣬"
				bj=1}
			}
		if (day<"01"||day >"31"){
			if(bj==1){
				message=message+"����Ӧ��01-31֮��,"}
			else{
				message="����Ӧ��01-31֮�䣬"
				bj=1}
			}
		if(bj==1){
			message="����������"+message+"���������룡"
			return message
			}
		if((month=="04"||month=="06"||month=="09"|month=="11")&& day>"30"){
			message="����������"+month+"��С�£�����Ӧ��01-30֮�䣡"
			bj=1
			return message
			}
	 // �������2�·��Ƿ񳬹�28�죬������ж��������ܱ�4���������ܱ�100�����������ܱ�400���������������ж�1900��Ϊƽ��
    // ���ƽ��2�·��Ƿ񳬹�28�죬����ǰ��
	if (month == "02" && day > "28" && (year % 4 != 0 || year % 100 == 0) && year % 400 != 0) {
	  message = "����������ƽ��2�·ݲ�����28�죡";
	  bj = 1;
	  return message;
	}

	// �������2�·��Ƿ񳬹�29�죬���ں���
	if (month == "02" && day > "29" && ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)) {
	  message = "��������������2�·ݲ�����29�죡";
	  bj = 1;
	  return message;
	}


	if(bj==0)
	return true
	}
}