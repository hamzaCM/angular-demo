﻿<div class="customers view">
    <div class="container">
        <header>
            <h3>Customers</h3>
        </header>
        <div class="row">
            <div class="span3">
                First Name:
                <br />
                <input data-ng-model="newCustomer.firstName" type="text" placeholder="First Name">
            </div>
            <div class="span3">
                Last Name:
                <br />
                <input data-ng-model="newCustomer.lastName" type="text" placeholder="Last Name">
            </div>
            <div class="span6">
                City:
                <br />
                <input data-ng-model="newCustomer.city" type="text" placeholder="Customer City">
                <button id="submitCustomer" class="btn btn-primary" type="button" 
                    data-ng-disabled="!newCustomer.firstName || !newCustomer.lastName || !newCustomer.city" 
                    data-ng-click="insertCustomer()">Add Customer</button>
            </div>
        </div>
        <br /><br />
        <div>
            <div class="row cardContainer">
                <div class="span3 card" data-ng-repeat="customer in customers | orderBy:'lastName'">
                    <button class="btn close cardClose" data-ng-click="deleteCustomer(customer.id)">&times;</button>
                    <div class="cardHeader">{{customer.firstName + ' ' + customer.lastName}}</div>
                    <div class="cardBody">{{customer.city}}</div>
                    <a href="#/customerorders/{{customer.id}}" class="cardBody btn-link">View {{ customer.orders.length }} Orders</a>
                </div>
            </div>
        </div>
    </div>
</div>