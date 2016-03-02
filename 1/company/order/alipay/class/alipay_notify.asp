<%
' ������AlipayNotify
' ���ܣ�֧����֪ͨ������
' ��ϸ������֧�������ӿ�֪ͨ����
' �汾��3.3
' �޸����ڣ�2012-07-16
' ˵����
' ���´���ֻ��Ϊ�˷����̻����Զ��ṩ���������룬�̻����Ը����Լ���վ����Ҫ�����ռ����ĵ���д,����һ��Ҫʹ�øô��롣
' �ô������ѧϰ���о�֧�����ӿ�ʹ�ã�ֻ���ṩһ���ο���
 
' ////////////////////////ע��////////////////////////
' ����֪ͨ����ʱ���ɲ鿴���дlog��־��д��TXT������ݣ������֪ͨ�����Ƿ�����
' ////////////////////////////////////////////////////
%>

<!--#include file="alipay_config.asp"-->
<!--#include file="alipay_core.asp"-->

<%
dim HTTPS_VERIFY_URL
'֧������Ϣ��֤��ַ
HTTPS_VERIFY_URL = "https://mapi.alipay.com/gateway.do?service=notify_verify&"

Class AlipayNotify

	''
	' ���return_url��֤��Ϣ�Ƿ���֧���������ĺϷ���Ϣ
	' return ��֤�����true/false
	Public Function VerifyReturn()
		Dim mysign, sResponseTxt, url,sParaTemp
		'��ȡ֧����GET����֪ͨ��Ϣ�����ԡ�������=����ֵ������ʽ�������
		sParaTemp = GetRequestGet()
		
		'��֤�Ƿ������鴫��
		If IsArray(sParaTemp) Then
			'����ǩ�����
			mysign = GetSignVeryfy(sParaTemp)
			
			'��ȡ֧����Զ�̷�����ATN�������֤�Ƿ���֧������������Ϣ��
			sResponseTxt = "true"
			If Request.QueryString("notify_id") <> "" Then
				sResponseTxt = GetResponse(Request.QueryString("notify_id"))
			End If
			
			'д��־��¼����Ҫ���ԣ���ȡ����������ע�ͣ�
			'sWord = "responseTxt="& sResponseTxt &"\n return_url_log:sign="&request.QueryString("sign")&"&mysign="&mysign&"&"&CreateLinkstring(sParaTemp)
			'LogResult(sWord)
			
			'��֤
			'responsetTxt�Ľ������true����������������⡢����������ID��notify_idһ����ʧЧ�й�
			'mysign��sign���ȣ��밲ȫУ���롢����ʱ�Ĳ�����ʽ���磺���Զ�������ȣ��������ʽ�й�
			If mysign = Request.QueryString("sign") And sResponseTxt = "true" Then
				VerifyReturn = true
			Else
				VerifyReturn = false
			End If
		Else
			VerifyReturn = false
		End If
	End Function

	''
	' ���notify_url��֤��Ϣ�Ƿ���֧���������ĺϷ���Ϣ
	' return ��֤�����true/false
	Public Function VerifyNotify()
		Dim mysign, sResponseTxt, url
		'��ȡ֧����POST����֪ͨ��Ϣ�����ԡ�������=����ֵ������ʽ�������
		sParaTemp = GetRequestPost()
		
		'��֤�Ƿ������鴫��
		If IsArray(sParaTemp) Then
			'����ǩ�����
			mysign = GetSignVeryfy(sParaTemp)
			
			'��ȡ֧����Զ�̷�����ATN�������֤�Ƿ���֧������������Ϣ��
			sResponseTxt = "true"
			If Request.Form("notify_id") <> "" Then
				sResponseTxt = GetResponse(Request.Form("notify_id"))
			End If
			
			'д��־��¼����Ҫ���ԣ���ȡ����������ע�ͣ�
			sWord = "responseTxt="& sResponseTxt &"\n notify_url_log:sign="&request.Form("sign")&"&mysign="&mysign&"&"&CreateLinkstring(sParaTemp)
			LogResult(sWord)
			
			'��֤
			'responsetTxt�Ľ������true����������������⡢����������ID��notify_idһ����ʧЧ�й�
			'mysign��sign���ȣ��밲ȫУ���롢����ʱ�Ĳ�����ʽ���磺���Զ�������ȣ��������ʽ�й�
			If mysign = request.Form("sign") And sResponseTxt = "true" Then
				VerifyNotify = true
			Else
				VerifyNotify = false
			End If
		Else
			VerifyNotify = false
		End If
	End Function

	''
	'���ݷ�����������Ϣ������ǩ�����
	'param sParaTemp ֪ͨ�������Ĳ�������
	'return ���ɵ�ǩ�����
	Private Function GetSignVeryfy(sParaTemp)
		Dim mysign,sPara,sParaSort,prestr
		'����ǩ����������
		sPara = A_FilterPara(sParaTemp)
		
		'�����������������
		sParaSort = SortPara(sPara)
		
		'����������Ԫ�أ����ա�����=����ֵ����ģʽ�á�&���ַ�ƴ�ӳ��ַ���
		prestr = CreateLinkstring(sParaSort)
		
		'���ǩ�����
		 Select Case sign_type
		 	Case "MD5" GetSignVeryfy = Md5Sign(prestr, key, input_charset)
			Case Else GetSignVeryfy = ""
		 End Select
	End Function

	''
	' ��ȡԶ�̷�����ATN���
	' param notify_id ֪ͨУ��ID
	' return ������ATN����ַ���
	Private Function GetResponse(notify_id)
		Dim sUrl, objHttp, sResponseTxt

		sUrl = HTTPS_VERIFY_URL & "partner=" & partner & "&notify_id=" & notify_id
		
		Set objHttp = Server.CreateObject("Microsoft.XMLHTTP")
		'���Microsoft.XMLHTTP���У���ô���滻����������д��볢��
		'Set objHttp = Server.CreateObject("Msxml2.ServerXMLHTTP.3.0")
		'objHttp.setOption 2, 13056
		objHttp.open "GET", sUrl, False, "", ""
		objHttp.send()
		sResponseTxt = objHttp.ResponseText
		Set objHttp = Nothing

		GetResponse = sResponseTxt
	End Function

	''
	'��ȡ֧����GET����֪ͨ��Ϣ�����ԡ�������=����ֵ������ʽ�������
	'return request��������Ϣ��ɵ�����
	Private Function GetRequestGet()
		Dim sPara(), i,varItem
		i = 0
		For Each varItem in Request.QueryString
			Redim Preserve sPara(i)
			sPara(i) = varItem&"="&Request(varItem)
			i = i + 1
		Next 
		
		If i = 0 Then	'��֤�Ƿ������鴫��
			GetRequestGet = ""
		Else
			GetRequestGet = sPara
		End If
		
	End Function

	''
	'��ȡ֧����POST����֪ͨ��Ϣ�����ԡ�������=����ֵ������ʽ�������
	'return request��������Ϣ��ɵ�����
	Private Function GetRequestPost()
		Dim sPara(), i
		i = 0
		For Each varItem in Request.Form
			Redim Preserve sPara(i)
			sPara(i) = varItem&"="&Request(varItem) 
			i = i + 1
		Next 
		
		If i = 0 Then	'��֤�Ƿ������鴫��
			GetRequestPost = ""
		Else
			GetRequestPost = sPara
		End If
	End Function

End Class

%>