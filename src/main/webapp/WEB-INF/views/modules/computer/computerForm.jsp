<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>购机指导管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/computer/computer/">购机指导列表</a></li>
		<li class="active"><a href="${ctx}/computer/computer/form?id=${computer.id}">购机指导<shiro:hasPermission name="computer:computer:edit">${not empty computer.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="computer:computer:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="computer" action="${ctx}/computer/computer/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">推荐率：</label>
			<div class="controls">
				<form:input path="recRate" htmlEscape="false" maxlength="11" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">品牌：</label>
			<div class="controls">
				<form:input path="brand" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">型号：</label>
			<div class="controls">
				<form:input path="model" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">闪光点：</label>
			<div class="controls">
				<form:input path="flashPoint" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">使用场景：</label>
			<div class="controls">
				<form:input path="used" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">升级：</label>
			<div class="controls">
				<form:input path="upgrade" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">价格：</label>
			<div class="controls">
				<form:input path="price" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">娱乐属性：</label>
			<div class="controls">
				<form:select path="playAttr" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_play')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">cpu：</label>
			<div class="controls">
				<form:select path="cpu" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_cpu')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">屏幕：</label>
			<div class="controls">
				<form:select path="screen" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_screen')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">gpu：</label>
			<div class="controls">
				<form:select path="gpu" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_gpu')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">硬盘：</label>
			<div class="controls">
				<form:select path="hardDisk" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_disk')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">内存条：</label>
			<div class="controls">
				<form:select path="ram" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_ram')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">端口：</label>
			<div class="controls">
				<form:input path="port" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">图片：</label>
			<div class="controls">
				<form:hidden id="image" path="image" htmlEscape="false" maxlength="64" class="input-xlarge"/>
				<sys:ckfinder input="image" type="files" uploadPath="/computer" selectMultiple="false"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">cpu属性：</label>
			<div class="controls">
				<form:select path="cpuAttr" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_cpu_attr')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">屏幕属性：</label>
			<div class="controls">
				<form:select path="screenAttr" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_screen_screen')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="computer:computer:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>