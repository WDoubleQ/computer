<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>购机指导管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/computer/computer/">购机指导列表</a></li>
		<shiro:hasPermission name="computer:computer:edit"><li><a href="${ctx}/computer/computer/form">购机指导添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="computer" action="${ctx}/computer/computer/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>推荐率：</label>
				<form:input path="recRate" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>品牌：</label>
				<form:input path="brand" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>型号：</label>
				<form:input path="model" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>闪光点：</label>
				<form:input path="flashPoint" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>使用场景：</label>
				<form:input path="used" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>升级：</label>
				<form:input path="upgrade" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>价格：</label>
				<form:input path="price" htmlEscape="false" class="input-medium"/>
			</li>
			<li><label>娱乐属性：</label>
				<form:select path="playAttr" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_play')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>cpu：</label>
				<form:select path="cpu" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_cpu')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>屏幕：</label>
				<form:select path="screen" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_screen')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>gpu：</label>
				<form:select path="gpu" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_gpu')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>硬盘：</label>
				<form:select path="hardDisk" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_disk')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>内存条：</label>
				<form:select path="ram" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_ram')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>端口：</label>
				<form:input path="port" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>图片：</label>
			</li>
			<li><label>cpu属性：</label>
				<form:select path="cpuAttr" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_cpu_attr')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>屏幕属性：</label>
				<form:select path="screenAttr" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('computer_screen_screen')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>推荐率</th>
				<th>品牌</th>
				<th>型号</th>
				<th>闪光点</th>
				<th>使用场景</th>
				<th>升级</th>
				<th>价格</th>
				<th>娱乐属性</th>
				<th>cpu</th>
				<th>屏幕</th>
				<th>gpu</th>
				<th>硬盘</th>
				<th>内存条</th>
				<th>端口</th>
				<th>图片</th>
				<th>cpu属性</th>
				<th>屏幕属性</th>
				<shiro:hasPermission name="computer:computer:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="computer">
			<tr>
				<td><a href="${ctx}/computer/computer/form?id=${computer.id}">
					${computer.recRate}
				</a></td>
				<td>
					${computer.brand}
				</td>
				<td>
					${computer.model}
				</td>
				<td>
					${computer.flashPoint}
				</td>
				<td>
					${computer.used}
				</td>
				<td>
					${computer.upgrade}
				</td>
				<td>
					${computer.price}
				</td>
				<td>
					${fns:getDictLabel(computer.playAttr, 'computer_play', '')}
				</td>
				<td>
					${fns:getDictLabel(computer.cpu, 'computer_cpu', '')}
				</td>
				<td>
					${fns:getDictLabel(computer.screen, 'computer_screen', '')}
				</td>
				<td>
					${fns:getDictLabel(computer.gpu, 'computer_gpu', '')}
				</td>
				<td>
					${fns:getDictLabel(computer.hardDisk, 'computer_disk', '')}
				</td>
				<td>
					${fns:getDictLabel(computer.ram, 'computer_ram', '')}
				</td>
				<td>
					${computer.port}
				</td>
				<td>
					${computer.image}
				</td>
				<td>
					${fns:getDictLabel(computer.cpuAttr, 'computer_cpu_attr', '')}
				</td>
				<td>
					${fns:getDictLabel(computer.screenAttr, 'computer_screen_screen', '')}
				</td>
				<shiro:hasPermission name="computer:computer:edit"><td>
    				<a href="${ctx}/computer/computer/form?id=${computer.id}">修改</a>
					<a href="${ctx}/computer/computer/delete?id=${computer.id}" onclick="return confirmx('确认要删除该购机指导吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>