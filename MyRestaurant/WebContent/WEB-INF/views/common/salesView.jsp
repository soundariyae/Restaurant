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
				        <div class="form-check">
                  <label class="form-check-label">
                    <input class="form-check-input" type="radio" name="exampleRadios" value="card" checked=""> Credit/Debit Card
                    <span class="circle">
                      <span class="check"></span>
                    </span>
                  </label>
                </div>
                
                <div class="form-check">
                  <label class="form-check-label">
                    <input class="form-check-input" type="radio" name="exampleRadios" value="cash"> Cash
                    <span class="circle">
                      <span class="check"></span>
                    </span>
                  </label>
                </div>
                
                
                
                <div class="form-check">
                  <label class="form-check-label">
                    <input class="form-check-input" type="radio" name="exampleRadios" value="noCash"> No Cash
                    <span class="circle">
                      <span class="check"></span>
                    </span>
                  </label>
                </div>
                <button id="submitOrder" class="btn btn-success">Submit</button>
				        </div>
				        
				        
				        
				        </div>
      </div>
      </div>
      
     
      
      </div>
				</div>
				<div class="tab-pane" id="messages">
					<table class="table">
						<tbody>
							<tr>
								<td>
									<div class="form-check">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" checked="">
											<span class="form-check-sign"> <span class="check"></span>
											</span>
										</label>
									</div>
								</td>
								<td>Flooded: One year later, assessing what was lost and
									what was found when a ravaging rain swept through metro Detroit
								</td>
								<td class="td-actions text-right">
									<button type="button" rel="tooltip" title="" class="btn btn-primary btn-link btn-sm" data-original-title="Edit Task">
										<i class="material-icons">edit</i>
									</button>
									<button type="button" rel="tooltip" title="" class="btn btn-danger btn-link btn-sm" data-original-title="Remove">
										<i class="material-icons">close</i>
									</button>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-check">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value=""> <span class="form-check-sign">
												<span class="check"></span>
											</span>
										</label>
									</div>
								</td>
								<td>Sign contract for "What are conference organizers
									afraid of?"</td>
								<td class="td-actions text-right">
									<button type="button" rel="tooltip" title="" class="btn btn-primary btn-link btn-sm" data-original-title="Edit Task">
										<i class="material-icons">edit</i>
									</button>
									<button type="button" rel="tooltip" title="" class="btn btn-danger btn-link btn-sm" data-original-title="Remove">
										<i class="material-icons">close</i>
									</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="tab-pane" id="settings">
					<table class="table">
						<tbody>
							<tr>
								<td>
									<div class="form-check">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value=""> <span class="form-check-sign">
												<span class="check"></span>
											</span>
										</label>
									</div>
								</td>
								<td>Lines From Great Russian Literature? Or E-mails From My
									Boss?</td>
								<td class="td-actions text-right">
									<button type="button" rel="tooltip" title="" class="btn btn-primary btn-link btn-sm" data-original-title="Edit Task">
										<i class="material-icons">edit</i>
									</button>
									<button type="button" rel="tooltip" title="" class="btn btn-danger btn-link btn-sm" data-original-title="Remove">
										<i class="material-icons">close</i>
									</button>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-check">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" checked="">
											<span class="form-check-sign"> <span class="check"></span>
											</span>
										</label>
									</div>
								</td>
								<td>Flooded: One year later, assessing what was lost and
									what was found when a ravaging rain swept through metro Detroit
								</td>
								<td class="td-actions text-right">
									<button type="button" rel="tooltip" title="" class="btn btn-primary btn-link btn-sm" data-original-title="Edit Task">
										<i class="material-icons">edit</i>
									</button>
									<button type="button" rel="tooltip" title="" class="btn btn-danger btn-link btn-sm" data-original-title="Remove">
										<i class="material-icons">close</i>
									</button>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-check">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" checked="">
											<span class="form-check-sign"> <span class="check"></span>
											</span>
										</label>
									</div>
								</td>
								<td>Sign contract for "What are conference organizers
									afraid of?"</td>
								<td class="td-actions text-right">
									<button type="button" rel="tooltip" title="" class="btn btn-primary btn-link btn-sm" data-original-title="Edit Task">
										<i class="material-icons">edit</i>
									</button>
									<button type="button" rel="tooltip" title="" class="btn btn-danger btn-link btn-sm" data-original-title="Remove">
										<i class="material-icons">close</i>
									</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
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