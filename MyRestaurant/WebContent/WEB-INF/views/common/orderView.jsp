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
            <button class="btn btn-info btn-round">
              <i class="material-icons">add_circle_outline</i> Add
            <div class="ripple-container"></div></button>
            <button class="btn btn-info btn-round">
              <i class="material-icons">border_color</i> Edit
            <div class="ripple-container"></div></button>
            
            <button class="btn btn-info btn-round">
              <i class="material-icons">delete_sweep</i> Delete
            <div class="ripple-container"></div></button>
            
            </div>
             <div class="row">
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
		                  </div>
		                  
		    <div class="tab-pane" id="itemsTab">
		    <div class="row">
            <button class="btn btn-info btn-round">
              <i class="material-icons">add_circle_outline</i> Add
            <div class="ripple-container"></div></button>
            <button class="btn btn-info btn-round">
              <i class="material-icons">border_color</i> Edit
            <div class="ripple-container"></div></button>
            
            <button class="btn btn-info btn-round">
              <i class="material-icons">delete_sweep</i> Delete
            <div class="ripple-container"></div></button>
            
            </div>
            <div class="row">
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
		                  
		                  </div></div>
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