
<%@ page import="dk.stacktrace.mike.Car" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'car.label', default: 'Car')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-car" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-car" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="modelNumber" title="${message(code: 'car.modelNumber.label', default: 'Model Number')}" />
					
						<g:sortableColumn property="modelManufacturer" title="${message(code: 'car.modelManufacturer.label', default: 'Model Manufacturer')}" />
					
						<g:sortableColumn property="carMake" title="${message(code: 'car.carMake.label', default: 'Car Make')}" />
					
						<g:sortableColumn property="carModel" title="${message(code: 'car.carModel.label', default: 'Car Model')}" />
					
						<g:sortableColumn property="carType" title="${message(code: 'car.carType.label', default: 'Car Type')}" />
					
						<g:sortableColumn property="productionYear" title="${message(code: 'car.productionYear.label', default: 'Production Year')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${carInstanceList}" status="i" var="carInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${carInstance.id}">${fieldValue(bean: carInstance, field: "modelNumber")}</g:link></td>
					
						<td>${fieldValue(bean: carInstance, field: "modelManufacturer")}</td>
					
						<td>${fieldValue(bean: carInstance, field: "carMake")}</td>
					
						<td>${fieldValue(bean: carInstance, field: "carModel")}</td>
					
						<td>${fieldValue(bean: carInstance, field: "carType")}</td>
					
						<td>${fieldValue(bean: carInstance, field: "productionYear")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${carInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
