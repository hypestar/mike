
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
				<li><g:link class="list" controller="Car" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-car" class="content scaffold-show" role="main">
			<h1>Shopping Cart</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list car">
		</div>

	<!--	<div id="add-cart" role="main">
		     <g:each var="car" in="${session.cart.cars}">
		     <p>Model Numer: ${car.modelNumber}</p>
		     <p>Price: ${car.priceDemand}</p>
</g:each>
		</div> -->



		<div role="main" id="car-list" class="content scaffold-show">
		     <table>
				<thead>
					<tr>
						<g:sortableColumn property="modelNumber" title="Model Number" />
					
						<g:sortableColumn property="modelManufacturer" title="Model Manufacturer" />
					
						<g:sortableColumn property="carModel" title="Car Model" />
					
						<g:sortableColumn property="carType" title="Car Type" />
					
						<g:sortableColumn property="Production Year" title="Production Year"/>
						
						<g:sortableColumn property="Price" title="Price"/>
					</tr>
				</thead>
				<tbody>
				<g:each var="car" in="${session.cart.cars}" status="i">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${car.modelNumber}</td>
					
						<td>${car.modelManufacturer}</td>
					
						<td>${car.carModel}</td>
					
						<td>${car.carType}</td>
					
						<td>${car.productionYear}</td>

						<td>${car.priceDemand}</td>
						
						<td><g:link controller="cart" action="remove" id="${i}"><img src="${resource(dir: 'images', file: 'delete.png')}" alt="remove"/></g:link></td>
					</tr>
				</g:each>

					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>Total price</td>
						<td>${session.cart.calcTotalPrice()}</td>
						<td></td>
				       </tr>						
				</tbody>
			</table>
			</div>
	</body>
</html>
