<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%@include file="../../common/common-css.jsp" %>
    <style type="text/css">
      input{font-size: 12px}
    </style>
  </head>
  
  <body>
<form action="${pageContext.servletContext.contextPath }/background/article/update.html" method="post">
<input type="hidden" name="articleId" value="${article.articleId}">
		<table class="ttab" height="100" width="80%" border="0" cellpadding="0" cellspacing="1"
			align="center">
			<tr>
				<td height="30"
					 colspan="2">
					<div align="center">
					<font color="blue" size="4" >修改信息</font>
					</div>
				</td>
			</tr>
			<tr>	
					<td height="35"width="8%" >
						<div align="right" class="STYLE1" >
								公告标题：
						</div>
					</td>
					<td >
						<div align="left" class="STYLE1"  style="padding-left:10px;vertical-align: middle;">
						<input style="height: 30px;width: 450px;font-size: 18px;" name="title" value="${article.title}"/>
						</div>
					</td>
				</tr>
				<tr>	
					<td width="8%" valign="top">
						<div align="right" class="STYLE1" >
								公告内容：
						</div>
					</td>
					<td >
						<div align="left" class="STYLE1"  style="padding-left:10px;">
						<script charset="utf-8" src="${pageContext.servletContext.contextPath }/kindeditor/kindeditor.js"></script>
		<script>
			KE.show({
				id : 'content2',
				resizeMode : 1,
				allowPreviewEmoticons : false,
				allowUpload : false,
				items : [
				'fontname', 'fontsize', '|', 'textcolor', 'bgcolor', 'bold', 'italic', 'underline',
				'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
				'insertunorderedlist', '|', 'emoticons', 'image', 'link']
			});
		</script>
		<textarea id="content2" name="content" style="width:99%;height:350px;visibility:hidden;">${article.content}</textarea>
						</div>
					</td>
				</tr>
				
				<tr>
					<td colspan="2" style="padding: 10px">
						<div align="center">
			 				<input type="submit" value="　保　存　" class="input_btn_style1"/>　　　　
			 				<input id="backBt" type="button" value="　返　回　" class="input_btn_style1" onclick="javascript:window.location.href='javascript:history.go(-1)'"/>
		 				</div>
					</td>
				</tr>
		</table>
</form>
  </body>
</html>
