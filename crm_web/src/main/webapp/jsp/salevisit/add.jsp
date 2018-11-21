<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 日期插件，使用jquery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery-1.4.2.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/jquery/jquery.datepick.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery.datepick.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery.datepick-zh-CN.js"></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>添加联系人</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css
	rel=stylesheet>

	<%--使用日期控件javascriipt代码--%>
	<script type="text/javascript">
        $(document).ready(function(){
            //使用class属性处理  'yy-mm-dd' 设置格式"yyyy/mm/dd"
            $('#visit_time').datepick({dateFormat: 'yy-mm-dd'});
            $('#visit_nexttime').datepick({dateFormat: 'yy-mm-dd'});
        });
	</script>

<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	<s:form id="form1" name="form1"  action="saleVisit_save"
			namespace="/" method="POST" theme="simple">

		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_019.jpg"
						border=0></TD>
					<TD width="100%" background="${pageContext.request.contextPath }/images/new_020.jpg"
						 height=20></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_021.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15 background=${pageContext.request.contextPath }/images/new_022.jpg><IMG
						src="${pageContext.request.contextPath }/images/new_022.jpg" border=0></TD>
					<TD vAlign=top width="100%" bgColor=#ffffff>
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：客户拜访管路 &gt; 添加拜访记录</TD>
							</TR>
							<TR>
								<TD height=2></TD>
							</TR>
						</TABLE>
						<TABLE cellSpacing=0 cellPadding=5  border=0>
							<tr>
								<td>业务员名称：</td>
								<td>
									<s:select list="users" name="user.user_id" headerKey="" headerValue="-请选择-"
									listKey="user_id" listValue="user_name">
									</s:select>
								</td>
								<td>客户名称：</td>
								<td>
									<s:select list="customers" name="customer.cust_id" headerKey="" headerValue="-请选择-"
											  listKey="cust_id" listValue="cust_name">
									</s:select>
								</td>
							</tr>
							<TR>
								<td>拜访时间：</td>
								<td>
									<s:textfield name="visit_time" readonly="true" id="visit_time" cssClass="textbox" cssStyle="WIDTH: 180px"/>
								</td>
								<td>拜访地点：</td>
								<td>
									<s:textfield name="visit_addr"  id="sChannel2" cssClass="textbox" cssStyle="WIDTH: 180px" />
								</td>
							</TR>
							<TR>
								<td>拜访详情 ：</td>
								<td>
									<s:textarea name="visit_detail" rows="3" cols="20" cssStyle="WIDTH: 180px"/>
								</td>
								<td>下次拜访时间 ：</td>
								<td>
									<s:textfield id="visit_nexttime" readonly="true" cssClass="textbox" name="visit_nexttime" cssStyle="WIDTH: 180px"></s:textfield>
								</td>
							</TR>

							<tr>
								<td rowspan=2>
								<INPUT class=button id=sButton2 type=submit
														value="保存 " name=sButton2>
								</td>
							</tr>
						</TABLE>
						
						
					</TD>
					<TD width=15 background="${pageContext.request.contextPath }/images/new_023.jpg">
					<IMG src="${pageContext.request.contextPath }/images/new_023.jpg" border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_024.jpg"
						border=0></TD>
					<TD align=middle width="100%"
						background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
	</s:form>
</BODY>
</HTML>
