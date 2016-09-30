﻿<div class="customerOrders view">
    <div class="container">
        <header>
            <h3>Customer Orders</h3>
        </header>
        <div>
            <div class="row">
                <div class="span12">
                    <div class="indent">
                        <h4>Orders for {{ customer.firstName + ' ' + customer.lastName }}</h4>
                        {{customer.address}}
                        <br />
                        {{customer.city}}
                        <br /><br />
                    </div>
                </div>                
                <br /><br />
                <div class="span12">
                    <div data-ng-include="'/partials/ordersTable.jsp'" />
                </div>
            </div>
        </div>
    </div>
</div>
