  <div class="col-md-12 col-12 mr-auto ml-auto">
    <div class="card">
        <div class="card-header card-header-tabs card-header-rose">
          <div class="nav-tabs-navigation">
            <div class="nav-tabs-wrapper">
              <span class="nav-tabs-title">Tasks:</span>
              <ul class="nav nav-tabs" data-tabs="tabs">
                <li class="nav-item">
                  <a class="nav-link active show" href="#tablesViewTab" data-toggle="tab">
                    <i class="material-icons">local_dining</i> Room View
                    <div class="ripple-container"></div>
                  <div class="ripple-container"></div></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#messages" data-toggle="tab">
                    <i class="material-icons">notification_important</i> Parked Sales
                    <div class="ripple-container"></div>
                  <div class="ripple-container"></div></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#settings" data-toggle="tab">
                    <i class="material-icons">close</i> Closed Sales
                    <div class="ripple-container"></div>
                  <div class="ripple-container"></div></a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="card-body">
          <div class="tab-content">
            <div class="tab-pane active show" id="tablesViewTab">
            <div id="tablesViewDiv"></div>
            <!-- <div id="menuView">
            <div class="accordion" id="accordionExample">
				  <div class="card">
				    <div class="card-header" id="headingOne">
				      <h5 class="mb-0">
				        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
				          PIZZA
				        </button>
				      </h5>
				    </div>
				
				    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
				      <div class="card-body">
				        <ul>
				        <li>Cheese Margherita</li>
				        <li>Non Veg loaded</li>
				        <li>Cheese N Corn</li>
				        <li>Chicken sausage</li>
				        <li>Veg treat</li>
				        <li>Chicken Pepperoni</li>
				        <li>Chicken Dominator</li>
				        
				        </ul>
				      </div>
				    </div>
				  </div>
				  <div class="card">
				    <div class="card-header" id="headingTwo">
				      <h5 class="mb-0">
				        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
				          BIRIYANI
				        </button>
				      </h5>
				    </div>
				    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
				      <div class="card-body">
				       <div class="col-md-6">
                <div class="table-responsive table-sales">
                  <table class="table">
                    <tbody>
                      <tr>
                        <td>Cheese Margherita</td>
                        <td class="text-right">
                          2.920
                        </td>
                        <td class="text-right">
                          53.23%
                        </td>
                      </tr>
                      <tr>
                        <td>Non Veg loaded</td>
                        <td class="text-right">
                          1.300
                        </td>
                        <td class="text-right">
                          20.43%
                        </td>
                      </tr>
                      <tr>
                        <td>Cheese N Corn</td>
                        <td class="text-right">
                          760
                        </td>
                        <td class="text-right">
                          10.35%
                        </td>
                      </tr>
                      <tr>
                        <td>Chicken sausage</td>
                        <td class="text-right">
                          690
                        </td>
                        <td class="text-right">
                          7.87%
                        </td>
                      </tr>
                      <tr>
                        <td>Veg treat</td>
                        <td class="text-right">
                          600
                        </td>
                        <td class="text-right">
                          5.94%
                        </td>
                      </tr>
                      <tr>
                        
                        <td>Chicken Pepperoni</td>
                        <td class="text-right">
                          550
                        </td>
                        <td class="text-right">
                          4.34%
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  </div>
                  </div>
				      </div>
				    </div>
				  </div>
				  <div class="card">
				    <div class="card-header" id="headingThree">
				      <h5 class="mb-0">
				        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
				          SNACKS
				        </button>
				      </h5>
				    </div>
				    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
				      <div class="card-body">
				        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
				      </div>
				    </div>
				  </div>
			</div>
            
            </div> -->
            
            <div id="menuView" style="display:none;">
            <div class="col-md-6">
      <div class="card">
        <div class="card-header">
          <h4 class="card-title">Items</h4>
        </div>
        <div class="card-body">
          <div id="accordion" class="dynamicCategory" role="tablist">
            <!-- <div  class="card-collapse">
              <div class="card-header" role="tab" id="headingOne">
                <h5 class="mb-0">
                  <a data-toggle="collapse" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed">
                    PIZZA
                    <i class="material-icons">keyboard_arrow_down</i>
                  </a>
                </h5>
              </div>
              <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion" style="">
                <div class="card-body">
                  	<div class="table-responsive table-sales">
                  <table class="table">
                    <tbody>
                      <tr>
                        <td>Cheese Margherita</td>
                         <td class="text-right">&#8377 35</td>
                        <td class="text-right">
                        <button class="btn btn-success addItemBtn">Add</button>
                          <span class="plusMinusSpan" style="display:none;"><i class="material-icons decrementQuan">remove_circle_outline</i><span class="currentCount">1</span><i class="material-icons incrementQuan">add_circle_outline</i></span>
                        </td>
                      </tr>
                      <tr>
                        <td>Non Veg loaded</td>
                        <td class="text-right">35</td>
                        <td class="text-right">
                         <span><i class="material-icons">remove_circle_outline</i><span>0</span><i class="material-icons">add_circle_outline</i></span>
                        </td>
                      </tr>
                      <tr>
                        <td>Cheese N Corn</td>
                        
                        <td class="text-right">
                          <span><i class="material-icons">remove_circle_outline</i><span>0</span><i class="material-icons">add_circle_outline</i></span>
                        </td>
                      </tr>
                      <tr>
                        <td>Chicken sausage</td>
                        
                        <td class="text-right">
                         <span><i class="material-icons">remove_circle_outline</i><span>0</span><i class="material-icons">add_circle_outline</i></span>
                        </td>
                      </tr>
                      <tr>
                        <td>Veg treat</td>
                        
                        <td class="text-right">
                          <span><i class="material-icons">remove_circle_outline</i><span>0</span><i class="material-icons">add_circle_outline</i></span>
                        </td>
                      </tr>
                      <tr>
                        
                        <td>Chicken Pepperoni</td>
                        
                        <td class="text-right">
                          4.34%
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-collapse">
              <div class="card-header" role="tab" id="headingTwo">
                <h5 class="mb-0">
                  <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Collapsible Group Item #2
                    <i class="material-icons">keyboard_arrow_down</i>
                  </a>
                </h5>
              </div>
              <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                <div class="card-body">
                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                </div>
              </div>
            </div>
            <div class="card-collapse">
              <div class="card-header" role="tab" id="headingThree">
                <h5 class="mb-0">
                  <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    Collapsible Group Item #3
                    <i class="material-icons">keyboard_arrow_down</i>
                  </a>
                </h5>
              </div>
              <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                <div class="card-body">
                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                </div>
              </div>
            </div> -->
          </div>
        </div>
      </div>
    </div>
            
            
            </div>
             <!-- <button type="submit" style="width: 5em; height: 5em; background-color: #000000; color: #FFFFFF; border-radius: 0%;">
          <span style="font-size: 9px;">Table 1</span>
          <span class="fa fa-users"></span>
        </button>
        <br>
        <button type="submit" style="width: 5em; height: 5em; background-color: #000000; color: #FFFFFF; border-radius: 0%;">
          <span style="font-size: 9px;">Table 2</span>
          <span class="fa fa-users"></span>
        </button> -->
              
            </div>
            <div class="tab-pane" id="messages">
              <table class="table">
                <tbody>
                  <tr>
                    <td>
                      <div class="form-check">
                        <label class="form-check-label">
                          <input class="form-check-input" type="checkbox" value="" checked="">
                          <span class="form-check-sign">
                            <span class="check"></span>
                          </span>
                        </label>
                      </div>
                    </td>
                    <td>Flooded: One year later, assessing what was lost and what was found when a ravaging rain swept through metro Detroit
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
                        <label class="form-check-label">
                          <input class="form-check-input" type="checkbox" value="">
                          <span class="form-check-sign">
                            <span class="check"></span>
                          </span>
                        </label>
                      </div>
                    </td>
                    <td>Sign contract for "What are conference organizers afraid of?"</td>
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
                        <label class="form-check-label">
                          <input class="form-check-input" type="checkbox" value="">
                          <span class="form-check-sign">
                            <span class="check"></span>
                          </span>
                        </label>
                      </div>
                    </td>
                    <td>Lines From Great Russian Literature? Or E-mails From My Boss?</td>
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
                        <label class="form-check-label">
                          <input class="form-check-input" type="checkbox" value="" checked="">
                          <span class="form-check-sign">
                            <span class="check"></span>
                          </span>
                        </label>
                      </div>
                    </td>
                    <td>Flooded: One year later, assessing what was lost and what was found when a ravaging rain swept through metro Detroit
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
                        <label class="form-check-label">
                          <input class="form-check-input" type="checkbox" value="" checked="">
                          <span class="form-check-sign">
                            <span class="check"></span>
                          </span>
                        </label>
                      </div>
                    </td>
                    <td>Sign contract for "What are conference organizers afraid of?"</td>
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
             <div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 149px;">
             </div>
             </div>
             
             <!-- <script src="resources/js/custom/restaurant-func.js" type="text/javascript"></script> -->