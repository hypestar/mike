<%@ page import="dk.stacktrace.mike.Car" %>



<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'modelNumber', 'error')} required">
	<label for="modelNumber">
		<g:message code="car.modelNumber.label" default="Model Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modelNumber" maxlength="12" required="" value="${carInstance?.modelNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'modelManufacturer', 'error')} required">
	<label for="modelManufacturer">
		<g:message code="car.modelManufacturer.label" default="Model Manufacturer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modelManufacturer" required="" value="${carInstance?.modelManufacturer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'carMake', 'error')} required">
	<label for="carMake">
		<g:message code="car.carMake.label" default="Car Make" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="carMake" required="" value="${carInstance?.carMake}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'carModel', 'error')} required">
	<label for="carModel">
		<g:message code="car.carModel.label" default="Car Model" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="carModel" required="" value="${carInstance?.carModel}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'carType', 'error')} required">
	<label for="carType">
		<g:message code="car.carType.label" default="Car Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="carType" required="" value="${carInstance?.carType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'productionYear', 'error')} required">
	<label for="productionYear">
		<g:message code="car.productionYear.label" default="Production Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="productionYear" type="number" min="1900" max="2012" value="${carInstance.productionYear}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'carScale', 'error')} required">
	<label for="carScale">
		<g:message code="car.carScale.label" default="Car Scale" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="carScale" type="number" value="${carInstance.carScale}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'priceDemand', 'error')} required">
	<label for="priceDemand">
		<g:message code="car.priceDemand.label" default="Price Demand" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="priceDemand" value="${fieldValue(bean: carInstance, field: 'priceDemand')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'pricePayed', 'error')} ">
	<label for="pricePayed">
		<g:message code="car.pricePayed.label" default="Price Payed" />
		
	</label>
	<g:field name="pricePayed" value="${fieldValue(bean: carInstance, field: 'pricePayed')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'color', 'error')} ">
	<label for="color">
		<g:message code="car.color.label" default="Color" />
		
	</label>
	<g:textField name="color" value="${carInstance?.color}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'weight', 'error')} required">
	<label for="weight">
		<g:message code="car.weight.label" default="Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="weight" type="number" value="${carInstance.weight}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'countryOfManufacturer', 'error')} ">
	<label for="countryOfManufacturer">
		<g:message code="car.countryOfManufacturer.label" default="Country Of Manufacturer" />
		
	</label>
	<g:textField name="countryOfManufacturer" value="${carInstance?.countryOfManufacturer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'countryCodeOfProduction', 'error')} ">
	<label for="countryCodeOfProduction">
		<g:message code="car.countryCodeOfProduction.label" default="Country Code Of Production" />
		
	</label>
	<g:textField name="countryCodeOfProduction" value="${carInstance?.countryCodeOfProduction}"/>
</div>

