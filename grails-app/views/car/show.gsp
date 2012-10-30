
<%@ page import="dk.stacktrace.mike.Car" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'car.label', default: 'Car')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-car" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-car" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list car">
			
				<g:if test="${carInstance?.modelNumber}">
				<li class="fieldcontain">
					<span id="modelNumber-label" class="property-label"><g:message code="car.modelNumber.label" default="Model Number" /></span>
					
						<span class="property-value" aria-labelledby="modelNumber-label"><g:fieldValue bean="${carInstance}" field="modelNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.modelManufacturer}">
				<li class="fieldcontain">
					<span id="modelManufacturer-label" class="property-label"><g:message code="car.modelManufacturer.label" default="Model Manufacturer" /></span>
					
						<span class="property-value" aria-labelledby="modelManufacturer-label"><g:fieldValue bean="${carInstance}" field="modelManufacturer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.carMake}">
				<li class="fieldcontain">
					<span id="carMake-label" class="property-label"><g:message code="car.carMake.label" default="Car Make" /></span>
					
						<span class="property-value" aria-labelledby="carMake-label"><g:fieldValue bean="${carInstance}" field="carMake"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.carModel}">
				<li class="fieldcontain">
					<span id="carModel-label" class="property-label"><g:message code="car.carModel.label" default="Car Model" /></span>
					
						<span class="property-value" aria-labelledby="carModel-label"><g:fieldValue bean="${carInstance}" field="carModel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.carType}">
				<li class="fieldcontain">
					<span id="carType-label" class="property-label"><g:message code="car.carType.label" default="Car Type" /></span>
					
						<span class="property-value" aria-labelledby="carType-label"><g:fieldValue bean="${carInstance}" field="carType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.productionYear}">
				<li class="fieldcontain">
					<span id="productionYear-label" class="property-label"><g:message code="car.productionYear.label" default="Production Year" /></span>
					
						<span class="property-value" aria-labelledby="productionYear-label"><g:fieldValue bean="${carInstance}" field="productionYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.carScale}">
				<li class="fieldcontain">
					<span id="carScale-label" class="property-label"><g:message code="car.carScale.label" default="Car Scale" /></span>
					
						<span class="property-value" aria-labelledby="carScale-label"><g:fieldValue bean="${carInstance}" field="carScale"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.priceDemand}">
				<li class="fieldcontain">
					<span id="priceDemand-label" class="property-label"><g:message code="car.priceDemand.label" default="Price Demand" /></span>
					
						<span class="property-value" aria-labelledby="priceDemand-label"><g:fieldValue bean="${carInstance}" field="priceDemand"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.pricePayed}">
				<li class="fieldcontain">
					<span id="pricePayed-label" class="property-label"><g:message code="car.pricePayed.label" default="Price Payed" /></span>
					
						<span class="property-value" aria-labelledby="pricePayed-label"><g:fieldValue bean="${carInstance}" field="pricePayed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="car.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${carInstance}" field="color"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.weight}">
				<li class="fieldcontain">
					<span id="weight-label" class="property-label"><g:message code="car.weight.label" default="Weight" /></span>
					
						<span class="property-value" aria-labelledby="weight-label"><g:fieldValue bean="${carInstance}" field="weight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.countryOfManufacturer}">
				<li class="fieldcontain">
					<span id="countryOfManufacturer-label" class="property-label"><g:message code="car.countryOfManufacturer.label" default="Country Of Manufacturer" /></span>
					
						<span class="property-value" aria-labelledby="countryOfManufacturer-label"><g:fieldValue bean="${carInstance}" field="countryOfManufacturer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.countryCodeOfProduction}">
				<li class="fieldcontain">
					<span id="countryCodeOfProduction-label" class="property-label"><g:message code="car.countryCodeOfProduction.label" default="Country Code Of Production" /></span>
					
						<span class="property-value" aria-labelledby="countryCodeOfProduction-label"><g:fieldValue bean="${carInstance}" field="countryCodeOfProduction"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${carInstance?.id}" />
					<g:link class="edit" action="edit" id="${carInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
