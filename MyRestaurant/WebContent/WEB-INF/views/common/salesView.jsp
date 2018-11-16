<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<div class="col-md-12 col-12 mr-auto ml-auto">
	<div class="card">
		<div class="card-header card-header-tabs card-header-rose">
			<div class="nav-tabs-navigation">
				<div class="nav-tabs-wrapper">
					<span class="nav-tabs-title">Tasks:</span>
					<ul class="nav nav-tabs" data-tabs="tabs">
						<li class="nav-item"><a class="nav-link active show" href="#tablesViewTab" data-toggle="tab"> <i class="material-icons">local_dining</i>
								Room View
								<div class="ripple-container"></div>
								<div class="ripple-container"></div>
							</a></li>
						<li class="nav-item"><a class="nav-link" href="#messages" data-toggle="tab"> <i class="material-icons">notification_important</i>
								Parked Sales
								<div class="ripple-container"></div>
								<div class="ripple-container"></div>
							</a></li>
						<li class="nav-item"><a class="nav-link" href="#settings" data-toggle="tab"> <i class="material-icons">close</i>
								Closed
								Sales
								<div class="ripple-container"></div>
								<div class="ripple-container"></div>
							</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="card-body">
			<div class="tab-content">
				<div class="tab-pane active show" id="tablesViewTab">
					<div id="tablesViewDiv"></div>
					<div class="row">
					<div class="col-lg-6 col-md-6">
					<div id="menuView" style="display: none;">

					</div></div>
					
					<div id="cart" class="col-lg-6 col-md-6" style="display: none;">
					<div class="card">
				        <div class="card-header card-header-text card-header-warning">
				          <div class="card-text">
				            <h4 class="card-title">Your Cart</h4>
				           <p id="tableNo" class="card-category"></p>
				          </div>
				        </div>
				        <div class="card-body table-responsive">
				          <table id="cartTable" class="table table-hover">
				            <thead class="text-warning">
				              <tr><th>Item Name</th>
				              <th>Quantity</th>
				              <th>Price</th>
				              <th>Net Price</th>
				            </tr></thead>
				            <tbody>
				              
				              
				            </tbody>
				            <tfoot>
				            <td colspan="2"></td>
				            <td class="td-total">Total</td><td id="totalPrice" class="td-price"></td>
				            </tfoot>
				          </table>
				          <button id="placeOrderBtn" class="btn btn-success">Place Order</button>
				        
				        <div id="payments" style="display:none;">
				        <span class="badge badge-pill badge-danger">Payments</span>
				        <p id="createdOrderId" class="text-warning">
                          
                        </p>
				        <c:forEach items="${paymentMethodList}" var="paymentMethodList">
				        <div class="form-check">
                  <label class="form-check-label">
                    <input class="form-check-input" type="radio" name="paymentTypeRadio" value="${paymentMethodList.billId}"> ${paymentMethodList.billType}
                    <span class="circle">
                      <span class="check"></span>
                    </span>
                  </label>
                </div>
                </c:forEach>
               
                <!-- <div class="form-check">
                  <label class="form-check-label">
                    <input class="form-check-input" type="radio" name="exampleRadios" value="cash"> Cash
                    <span class="circle">
                      <span class="check"></span>
                    </span>
                  </label>
                </div> -->
                
                
                
                <!-- <div class="form-check">
                  <label class="form-check-label">
                    <input class="form-check-input" type="radio" name="exampleRadios" value="noCash"> No Cash
                    <span class="circle">
                      <span class="check"></span>
                    </span>
                  </label>
                </div> -->
                <button id="submitOrder" class="btn btn-success">Submit</button>
				        </div>
				        
				        
				        
				        </div>
      </div>
      </div>
      
     
      
      </div>
				</div>
				<div class="tab-pane" id="messages">
					<table class="table">
					<thead>
						<th>Table Id</th>
						<th>Order Id</th>
						<th>Total Amount</th>
						<th>Order Status</th>
						<th>Update</th>
					</thead>
						<tbody>
				 <c:forEach items="${parkedOrdersList}" var="parkedOrdersList">
							<tr>
								<td>${parkedOrdersList.tableId}</td>
								<td>${parkedOrdersList.orderId}</td>
								<td>${parkedOrdersList.totalAmount}</td>
								<td>${parkedOrdersList.orderStatusType}</td>
								<td><button id="${parkedOrdersList.orderId}_${parkedOrdersList.tableId}_${parkedOrdersList.totalAmount}_${parkedOrdersList.orderStatusType}" class="btn btn-primary btn-round detailsBtnClass" data-toggle="modal">
                        Details
                      <div class="ripple-container"></div></button>
								
								</td>
								
							</tr>
							</c:forEach>
							
							
						</tbody>
					</table>
				</div>
				<div class="tab-pane" id="settings">
					<table class="table">
					<thead>
						<th>Table Id</th>
						<th>Order Id</th>
						<th>Total Amount</th>
						<th>Order Status</th>
						
					</thead>
						<tbody>
				 <c:forEach items="${closedOrdersList}" var="closedOrdersList">
							<tr>
								<td>${closedOrdersList.tableId}</td>
								<td>${closedOrdersList.orderId}</td>
								<td>${closedOrdersList.totalAmount}</td>
								<td>${closedOrdersList.orderStatusType}</td>
								
								
							</tr>
							</c:forEach>
							
							
						</tbody>
					</table>
				</div>
				
				<div class="modal fade" id="myOrderModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h4 class="modal-title">View Order</h4>
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                <i class="material-icons">clear</i>
                              </button>
                            </div>
                            <div class="modal-body">
                              <div>
                              <div id="addItemDiv">

						<div class="row">
							<label class="col-sm-3 col-form-label">Order Id</label>
							<div class="col-sm-7">
								<div class="form-group bmd-form-group">
									<input id="orderIdMod" class="form-control" type="text" aria-required="true" disabled>
								</div>
							</div>

						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Table Id</label>
							<div class="col-sm-7">
								<div class="form-group bmd-form-group">
									<input id="tableIdMod" class="form-control" type="text" aria-required="true" disabled>
								</div>
							</div>

						</div>
						
						<div class="row">
							<label class="col-sm-3 col-form-label">Total Amount</label>
							<div class="col-sm-7">
								<div class="form-group bmd-form-group">
									<input id="totalAmtMod" class="form-control" type="number" id="newItemPrice" aria-required="true">
								</div>
							</div>

						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Status</label>
							<div class="col-sm-7">
								<div class="form-group bmd-form-group">
									<input id="statusMod" class="form-control" id="newItemPrice"  aria-required="true">
								</div>
							</div>

						</div>
						<div id="itemsListDiv">
						
						</div>
						
						
						
						<div class="row">
							<button id="paymentMethod" type="button" class="btn btn-rose">Payment Method</button>
						</div>
					</div>
                              </div>
                              <!-- <div class="form-group bmd-form-group is-filled">
                                <label class="label-control">Datetime Picker</label>
                                <input type="text" class="form-control datetimepicker" value="07/02/2018">
                                <span class="material-input"></span>
                                <span class="material-input"></span>
                              </div> -->
                            </div>
                            <div class="modal-footer">
                              <!-- <button type="button" class="btn btn-link">Nice Button</button> -->
                              <button type="button" class="btn btn-danger btn-link" data-dismiss="modal">Close</button>
                            </div>
                          </div>
                        </div>
                      </div>
                      
                      <!-- Payment Modal -->
                      <div class="modal fade" id="myPaymentModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h4 class="modal-title">Payment Method</h4>
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                <i class="material-icons">clear</i>
                              </button>
                            </div>
                            <div class="modal-body">
                            
                            <div id="payments">
				        <span class="badge badge-pill badge-danger">Payments</span>
				        <div style="display:inline">
				        <div>Order Id :</div>
				        <div id="orderIdDiv" class="text-warning">
                          
                        </div></div>
				      <div id="paymentsRadioDiv"></div>
				       
                              
                             
                             
                            </div>
                            <div class="modal-footer">
                              <button id="submitOrderForPaymentChange" class="btn btn-success">Submit</button>
                              <button type="button" class="btn btn-danger btn-link" data-dismiss="modal">Close</button>
                            </div>
                          </div>
                        </div>
                      </div>
                      <!-- Payment Modal Ends -->
			</div>
		</div>
	</div>
</div>







<div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
	<div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;">
	</div>
</div>
<div class="ps-scrollbar-y-rail" style="top: 0px; right: 0px; height: 357px;">
	<div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 149px;"></div>
</div>

<!-- <script src="resources/js/custom/restaurant-func.js" type="text/javascript"></script> -->