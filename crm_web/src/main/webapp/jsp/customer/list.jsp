﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <TITLE>客户列表</TITLE>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
    <LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css
          rel=stylesheet>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
    <SCRIPT language=javascript>
        function to_page(page) {
            if (page) {
                $("#page").val(page);
            }
            document.customerForm.submit();

        }
    </SCRIPT>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>

    <script>
        $(function(){
            // 页面加载函数就会执行：
            // 页面加载，异步查询字典数据：
            // 加载客户来源
            $.post("${pageContext.request.contextPath }/baseDict_findByTypeCode.action",function(data){
                // 遍历json的数据:
                console.log(data);
                $(data[0]).each(function(i,n){
                    $("#cust_level").append("<option value='"+n.dict_id+"'>"+n.dict_item_name+"</option>");
                    $("#cust_level option[value='${baseDictLevel.dict_id}'] ").prop("selected","selected");
                }); $(data[1]).each(function(i,n){
                    $("#cust_source").append("<option value='"+n.dict_id+"'>"+n.dict_item_name+"</option>");
                    $("#cust_source option[value='${baseDictSource.dict_id}'] ").prop("selected","selected");
                }); $(data[2]).each(function(i,n){
                    $("#cust_industry").append("<option value='"+n.dict_id+"'>"+n.dict_item_name+"</option>");
                    $("#cust_industry option[value='${baseDictIndustry.dict_id}']").prop("selected","selected");
                });
            },"json");


        });
    </script>
    <META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
<FORM id="customerForm" name="customerForm"
      action="${pageContext.request.contextPath }/customer_findAll.action"
      method=post>

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
                        <TD class=manageHead>当前位置：客户管理 &gt; 客户列表</TD>
                    </TR>
                    <TR>
                        <TD height=2></TD>
                    </TR>
                </TABLE>
                <TABLE borderColor=#cccccc cellSpacing=0 cellPadding=0
                       width="100%" align=center border=0>
                    <TBODY>
                    <TR>
                        <TD height=25>
                            <TABLE cellSpacing=0 cellPadding=2 border=0>
                                <TBODY>
                                <TR>
                                    <TD>客户名称：</TD>
                                    <TD><INPUT class=textbox id=sChannel2
                                               style="WIDTH: 80px" maxLength=50 name="cust_name" value="<s:property value="cust_name"></s:property> "></TD>
                                    <TD>客户来源：</TD>
                                    <TD>
                                        <select id="cust_source" name="baseDictSource.dict_id">
                                            <option value="">请选择</option>
                                        </select>
                                    </TD>
                                    <TD>客户行业：</TD>
                                    <TD>
                                        <select id="cust_industry" name="baseDictIndustry.dict_id">
                                            <option value="">请选择</option>
                                        </select>
                                    </TD>
                                    <TD>客户级别：</TD>
                                    <TD>
                                        <select id="cust_level" name="baseDictLevel.dict_id">
                                            <option value="">请选择</option>
                                        </select>
                                    </TD>

                                    <TD><INPUT class=button id=sButton2 type=submit
                                               value=" 筛选 " name=sButton2></TD>
                                </TR>
                                </TBODY>
                            </TABLE>
                        </TD>
                    </TR>

                    <TR>
                        <TD>
                            <TABLE id=grid
                                   style="BORDER-TOP-WIDTH: 0px; FONT-WEIGHT: normal; BORDER-LEFT-WIDTH: 0px; BORDER-LEFT-COLOR: #cccccc; BORDER-BOTTOM-WIDTH: 0px; BORDER-BOTTOM-COLOR: #cccccc; WIDTH: 100%; BORDER-TOP-COLOR: #cccccc; FONT-STYLE: normal; BACKGROUND-COLOR: #cccccc; BORDER-RIGHT-WIDTH: 0px; TEXT-DECORATION: none; BORDER-RIGHT-COLOR: #cccccc"
                                   cellSpacing=1 cellPadding=2 rules=all border=0>
                                <TBODY>
                                <TR
                                        style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
                                    <TD>客户名称</TD>
                                    <TD>客户来源</TD>
                                    <TD>所属行业</TD>
                                    <TD>客户级别</TD>
                                    <TD>固定电话</TD>
                                    <TD>移动电话</TD>
                                    <TD>操作</TD>
                                </TR>
                                <%--<c:forEach items="${list }" var="customer">--%>
                                <s:iterator value="list">
                                    <TR
                                            style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
                                        <TD><s:property value="cust_name"></s:property></TD>
                                        <TD><s:property value="baseDictSource.dict_item_name"></s:property></TD>
                                        <TD><s:property value="baseDictIndustry.dict_item_name"></s:property></TD>
                                        <TD><s:property value="baseDictLevel.dict_item_name"></s:property></TD>
                                        <TD><s:property value="cust_phone"></s:property></TD>
                                        <TD><s:property value="cust_mobile"></s:property></TD>
                                        <TD>
                                            <a href="${pageContext.request.contextPath }/customer_edit.action?cust_id=<s:property value="cust_id"></s:property> ">修改</a>
                                            &nbsp;&nbsp;
                                            <a href="${pageContext.request.contextPath }/customer_delete.action?cust_id=<s:property value="cust_id"></s:property> ">删除</a>
                                        </TD>
                                    </TR>
                                </s:iterator>
                                <%--</c:forEach>--%>

                                </TBODY>
                            </TABLE>
                        </TD>
                    </TR>

                    <TR>
                        <TD><SPAN id=pagelink>
<DIV
        style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right">
共[<B><s:property value="totalCount" /> </B>]条记录,[<B><s:property value="totalPage"/></B>]页
,每页显示
<select name="pageSize" onchange="to_page()">

    <option value="3" <s:if test="pageSize==3">selected</s:if>>3</option>
    <option value="5" <s:if test="pageSize==5">selected</s:if>>5</option>
    <option value="10" <s:if test="pageSize==10">selected</s:if>>10</option>
    </select>
条
<s:if test="currentPage!=1">
    [<A href="javascript:to_page(<s:property value='1'></s:property> )">首页</A>]
    [<A href="javascript:to_page(<s:property value='currentPage-1'></s:property> )">上一页</A>]
</s:if>&nbsp;&nbsp;

    <s:iterator var="i" begin="1" end="totalPage">
        <s:if test="#i== currentPage">
            <s:property value="#i"></s:property>
        </s:if>
        <s:else>
            <a href="javascript:to_page(<s:property value="#i"></s:property> )"><s:property value="#i"></s:property></a>
        </s:else>
    </s:iterator>

    &nbsp;&nbsp;
<s:if test="currentPage!=totalPage">
    [<A href="javascript:to_page(<s:property value='currentPage+1'></s:property> )">下一页</A>]
    <%-- [<A href="javascript:to_page(<s:property value='currentPage+1' ></s:property> )">下一页</A>]--%>
    [<A href="javascript:to_page(<s:property value='totalPage'></s:property> )">尾页</A>]
</s:if>
    到
    <input type="text" size="3" id="page" name="currentPage"/>
    页

    <input type="button" value="Go" onclick="to_page()"/>
    </DIV>
    </SPAN></TD>
                    </TR>
                    </TBODY>
                </TABLE>
            </TD>
            <TD width=15 background="${pageContext.request.contextPath }/images/new_023.jpg"><IMG
                    src="${pageContext.request.contextPath }/images/new_023.jpg" border=0></TD>
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
</FORM>
</BODY>
</HTML>
