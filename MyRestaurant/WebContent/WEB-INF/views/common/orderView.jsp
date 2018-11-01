  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  <div class="col-md-12 col-12 mr-auto ml-auto">
    <div class="card">
        <div class="card-header card-header-tabs card-header-rose">
          <div class="nav-tabs-navigation">
            <div class="nav-tabs-wrapper">
              <span class="nav-tabs-title">Tasks:</span>
              <ul class="nav nav-tabs" data-tabs="tabs">
                <li class="nav-item">
                  <a class="nav-link active show" href="#categoryTab" data-toggle="tab">
                    <i class="material-icons">category</i> Category
                    <div class="ripple-container"></div>
                  <div class="ripple-container"></div></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#itemsTab" data-toggle="tab">
                    <i class="material-icons">fastfood</i> Items
                    <div class="ripple-container"></div>
                  <div class="ripple-container"></div></a>
                </li>
                
              </ul>
            </div>
          </div>
        </div>
        <div class="card-body">
          <div class="tab-content">
            <div class="tab-pane active show" id="categoryTab">
            <div class="row">
            <button id="addCategory" class="btn btn-info btn-round">
              <i class="material-icons">add_circle_outline</i> Add
            <div class="ripple-container"></div></button>
            <button class="btn btn-info btn-round">
              <i class="material-icons">border_color</i> Edit
            <div class="ripple-container"></div></button>
            
            <button class="btn btn-info btn-round">
              <i class="material-icons">delete_sweep</i> Delete
            <div class="ripple-container"></div></button>
            
            </div>
             <div class="row" id="categoryTableDiv">
            	<div class="table-responsive">
		                  <table id="categoryTable" class="table table-striped">
				              <thead>
				                <tr>
				                  <!-- <th class="text-center">#</th> -->
				                  <th>S.No</th>
				                  <th>Category</th>
				                  <th>Category Description</th>
				                </tr>
				              </thead>
				              <tbody>
				                
				                <c:forEach items="${categoryList}" var="categoryList">
				                <tr>
				                	
				                	<td>${categoryList.categoryId }</td>
				                	<td>${categoryList.categoryName }</td>
				                	<td>${categoryList.categoryDesc }</td>
				                	
				                </tr>
				                </c:forEach>
				              </tbody>
				              
				            </table>
		                  
		                  </div>
		                  </div>
		                  
		               <div id="addCategoryDiv" style="display:none">
		               		
	            			<div class="row">
					              <label class="col-sm-3 col-form-label">Category Name</label>
					              <div class="col-sm-7">
					                <div class="form-group bmd-form-group">
					                  <input class="form-control" type="text" id="newCategoryName" required="true" aria-required="true">
					                </div>
					              </div>
					              
	            			</div>
	            			<div class="row">
					              <label class="col-sm-3 col-form-label">Category Description</label>
					              <div class="col-sm-7">
					                <div class="form-group bmd-form-group">
					                  <input class="form-control" type="text" id="newCategoryDesc" required="true" aria-required="true">
					                </div>
					              </div>
					              
	            			</div>
	            			<div class="row">
	            				<button id="saveNewCategory" type="button" class="btn btn-rose">Save</button>
	            			</div>
		               </div>   
		                 <div id="loadingDiv" style="display:none">
		                 <label class="col-sm-3 col-form-label"> Saving...Please wait..</label>
		                 
		                  </div>
		                  </div>
		                  
		    <div class="tab-pane" id="itemsTab">
		    <div class="row">
            <button id="addNewItem" class="btn btn-info btn-round">
              <i class="material-icons">add_circle_outline</i> Add
            <div class="ripple-container"></div></button>
            <button class="btn btn-info btn-round">
              <i class="material-icons">border_color</i> Edit
            <div class="ripple-container"></div></button>
            
            <button class="btn btn-info btn-round">
              <i class="material-icons">delete_sweep</i> Delete
            <div class="ripple-container"></div></button>
            
            </div>
            <div id="itemTableDiv" class="row">
            	<div class="table-responsive">
		                  <table id="itemTable" class="table table-striped">
				              <thead>
				                <tr>
				                  <!-- <th class="text-center">#</th> -->
				                  <th>Item Id</th>
				                  <th>Name</th>
				                  <th>Type</th>
				                  <th>Description</th>
				                  <th>Price</th>
				                  <th>Available Quantity</th>
				                  <th>Tax</th>
				                  <th>Status</th>
				                  <th>Category Id</th>
				                </tr>
				              </thead>
				              <tbody>
				                
				                <c:forEach items="${itemList}" var="itemList">
				                <tr>
				                	
				                	<td>${itemList.itemId }</td>
				                	<td>${itemList.itemName }</td>
				                	<td>${itemList.itemType }</td>
				                	<td>${itemList.itemDescription }</td>
				                	<td>${itemList.itemPrice }</td>
				                	<td>${itemList.availableQuantity }</td>
				                	<td>${itemList.itemTax }</td>
				                	<td>${itemList.itemStatus }</td>
				                	<td>${itemList.categoryId }</td>
				                	
				                	
				                </tr>
				                </c:forEach>
				              </tbody>
				              
				            </table>
		                  
		                  </div>
		                  </div>
		                  <div id="addItemDiv" style="display:none">
		               		
	            			<div class="row">
					              <label class="col-sm-3 col-form-label">Item Name</label>
					              <div class="col-sm-7">
					                <div class="form-group bmd-form-group">
					                  <input class="form-control" type="text" id="newItemName" required="true" aria-required="true">
					                </div>
					              </div>
					              
	            			</div>
	            			<div class="row">
					              <label class="col-sm-3 col-form-label">Item Type</label>
					              <div class="col-sm-7">
					                <div class="form-group bmd-form-group">
					                  <input class="form-control" type="text" id="newItemType" required="true" aria-required="true">
					                </div>
					              </div>
					              
	            			</div>
	            			<div class="row">
					              <label class="col-sm-3 col-form-label">Description</label>
					              <div class="col-sm-7">
					                <div class="form-group bmd-form-group">
					                  <input class="form-control" type="text" id="newItemDesc" required="true" aria-required="true">
					                </div>
					              </div>
					              
	            			</div>
	            			<div class="row">
					              <label class="col-sm-3 col-form-label">Price</label>
					              <div class="col-sm-7">
					                <div class="form-group bmd-form-group">
					                  <input class="form-control" type="number" id="newItemPrice" required="true" aria-required="true">
					                </div>
					              </div>
					              
	            			</div>
	            			<div class="row">
					              <label class="col-sm-3 col-form-label">Available Quantity</label>
					              <div class="col-sm-7">
					                <div class="form-group bmd-form-group">
					                  <input class="form-control" type="number" id="newItemAvailableQuan" required="true" aria-required="true">
					                </div>
					              </div>
					              
	            			</div>
	            			<div class="row">
					              <label class="col-sm-3 col-form-label">Tax</label>
					              <div class="col-sm-7">
					                <div class="form-group bmd-form-group">
					                  <input class="form-control" type="number" id="newItemTax" required="true" aria-required="true">
					                </div>
					              </div>
					              
	            			</div>
	            			<div class="row">
					              <label class="col-sm-3 col-form-label">Status</label>
					              <div class="col-sm-7">
					                <div class="form-group bmd-form-group">
					                  <input class="form-control" type="number" id="newItemStatus" required="true" aria-required="true">
					                </div>
					              </div>
					              
	            			</div>
	            			<div class="row">
					              <label class="col-sm-3 col-form-label">Category Id</label>
					              <div class="col-sm-7">
					                <div class="form-group bmd-form-group">
					                  <input class="form-control" type="number" id="newItemCategoryId" required="true" aria-required="true">
					                </div>
					              </div>
					              
	            			</div>
	            			<div class="row">
	            				<button id="saveNewItem" type="button" class="btn btn-rose">Save</button>
	            			</div>
		               </div>   
		                <div id="loadingItemDiv" style="display:none">
		                 <label class="col-sm-3 col-form-label"> Saving...Please wait..</label>
		                 
		                  </div>  
		                  
		                  
            </div>
              
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
             <div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 149px;">
             </div>
             </div>
             
             <!-- <script src="resources/js/custom/restaurant-func.js" type="text/javascript"></script> -->