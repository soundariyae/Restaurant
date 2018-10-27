  <div class="col-md-12 col-12 mr-auto ml-auto">
    <!--      Wizard container        -->
    <div class="wizard-container">
      <div class="card card-wizard active" data-color="rose" id="wizardProfile">
        <form action="" novalidate="novalidate">
          <!--        You can switch " data-color="primary" "  with one of the next bright colors: "green", "orange", "red", "blue"       -->
          <div class="card-header text-center">
            <h3 class="card-title">
              Order Management
            </h3>
            <!-- <h5 class="card-description">This information will let us know more about you.</h5> -->
          </div>
          <div class="wizard-navigation">
            <ul class="nav nav-pills">
              <li class="nav-item" style="width: 33.3333%;">
                <a class="nav-link active show" href="#about" data-toggle="tab" role="tab" aria-selected="true">
                  Room
                </a>
              </li>
              <li class="nav-item" style="width: 33.3333%;">
                <a class="nav-link" href="#account" data-toggle="tab" role="tab" aria-selected="false">
                  Parked Sales
                </a>
              </li>
              <li class="nav-item" style="width: 33.3333%;">
                <a class="nav-link" href="#address" data-toggle="tab" role="tab" aria-selected="false">
                  Closed Sales
                </a>
              </li>
            </ul>
          <div class="moving-tab" style="width: 222.443px; transform: translate3d(-8px, 0px, 0px); transition: transform 0s ease 0s;">
                  About
                </div></div>
          <div class="card-body">
            <div class="tab-content">
              <div class="tab-pane active show" id="about">
                <h5 class="info-text"> Let's start with the basic information (with validation)</h5>
                <div class="row justify-content-center">
                  <div class="col-sm-4">
                    <div class="picture-container">
                      <div class="picture">
                        <img src="../../assets/img/default-avatar.png" class="picture-src" id="wizardPicturePreview" title="">
                        <input type="file" id="wizard-picture">
                      </div>
                      <h6 class="description">Choose Picture</h6>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="input-group form-control-lg">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                          <i class="material-icons">face</i>
                        </span>
                      </div>
                      <div class="form-group bmd-form-group is-filled has-success">
                        <label for="exampleInput1" class="bmd-label-floating">First Name (required)</label>
                        <input type="text" class="form-control valid" id="exampleInput1" name="firstname" required="" aria-required="true" aria-invalid="false">
                      </div>
                    </div>
                    <div class="input-group form-control-lg">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                          <i class="material-icons">record_voice_over</i>
                        </span>
                      </div>
                      <div class="form-group bmd-form-group is-filled has-success">
                        <label for="exampleInput11" class="bmd-label-floating">Second Name</label>
                        <input type="text" class="form-control valid" id="exampleInput11" name="lastname" required="" aria-required="true" aria-invalid="false">
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-10 mt-3">
                    <div class="input-group form-control-lg">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                          <i class="material-icons">email</i>
                        </span>
                      </div>
                      <div class="form-group bmd-form-group is-filled has-success">
                        <label for="exampleInput1" class="bmd-label-floating">Email (required)</label>
                        <input type="email" class="form-control valid" id="exampleemalil" name="email" required="" aria-required="true" aria-invalid="false">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="account">
                <h5 class="info-text"> What are you doing? (checkboxes) </h5>
                <div class="row justify-content-center">
                  <div class="col-lg-10">
                    <div class="row">
                      <div class="col-sm-4">
                        <div class="choice" data-toggle="wizard-checkbox">
                          <input type="checkbox" name="jobb" value="Design">
                          <div class="icon">
                            <i class="fa fa-pencil"></i>
                          </div>
                          <h6>Design</h6>
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="choice" data-toggle="wizard-checkbox">
                          <input type="checkbox" name="jobb" value="Code">
                          <div class="icon">
                            <i class="fa fa-terminal"></i>
                          </div>
                          <h6>Code</h6>
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="choice" data-toggle="wizard-checkbox">
                          <input type="checkbox" name="jobb" value="Develop">
                          <div class="icon">
                            <i class="fa fa-laptop"></i>
                          </div>
                          <h6>Develop</h6>
                        </div>
                        <div class="dropdown bootstrap-select"><select class="selectpicker" data-style="btn btn-primary btn-round" title="Single Select" data-size="7" tabindex="-98"><option class="bs-title-option" value=""></option>
                          <option disabled="" selected="">Choose city</option>
                          <option value="2">Foobar</option>
                          <option value="3">Is great</option>
                        </select><button type="button" class="dropdown-toggle btn btn-primary btn-round" data-toggle="dropdown" role="button" title="Choose city"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">Choose city</div></div> </div></button><div class="dropdown-menu " role="combobox"><div class="inner show" role="listbox" aria-expanded="false" tabindex="-1"><ul class="dropdown-menu inner show"></ul></div></div></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="address">
                <div class="row justify-content-center">
                  <div class="col-sm-12">
                    <h5 class="info-text"> Are you living in a nice area? </h5>
                  </div>
                  <div class="col-sm-7">
                    <div class="form-group bmd-form-group">
                      <label class="bmd-label-static">Street Name</label>
                      <input type="text" class="form-control">
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <div class="form-group bmd-form-group">
                      <label class="bmd-label-static">Street No.</label>
                      <input type="text" class="form-control">
                    </div>
                  </div>
                  <div class="col-sm-5">
                    <div class="form-group bmd-form-group">
                      <label class="bmd-label-static">City</label>
                      <input type="text" class="form-control">
                    </div>
                  </div>
                  <div class="col-sm-5">
                    <div class="form-group select-wizard">
                      <label>Country</label>
                      <div class="dropdown bootstrap-select"><select class="selectpicker" data-size="7" data-style="select-with-transition" title="Single Select" tabindex="-98"><option class="bs-title-option" value=""></option>
                        <option value="Afghanistan"> Afghanistan </option>
                        <option value="Albania"> Albania </option>
                        <option value="Algeria"> Algeria </option>
                        <option value="American Samoa"> American Samoa </option>
                        <option value="Andorra"> Andorra </option>
                        <option value="Angola"> Angola </option>
                        <option value="Anguilla"> Anguilla </option>
                        <option value="Antarctica"> Antarctica </option>
                      </select><button type="button" class="btn dropdown-toggle bs-placeholder select-with-transition" data-toggle="dropdown" role="button" title="Single Select"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">Single Select</div></div> </div></button><div class="dropdown-menu " role="combobox"><div class="inner show" role="listbox" aria-expanded="false" tabindex="-1"><ul class="dropdown-menu inner show"></ul></div></div></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="card-footer">
            <div class="mr-auto">
              <input type="button" class="btn btn-previous btn-fill btn-default btn-wd disabled" name="previous" value="Previous">
            </div>
            <div class="ml-auto">
              <input type="button" class="btn btn-next btn-fill btn-rose btn-wd" name="next" value="Next" style="">
              <input type="button" class="btn btn-finish btn-fill btn-rose btn-wd" name="finish" value="Finish" style="display: none;">
            </div>
            <div class="clearfix"></div>
          </div>
        </form>
      </div>
    </div>
    <!-- wizard container -->
  </div>


                 

                  

               
             <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
             <div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;">
             </div>
             </div>
             <div class="ps-scrollbar-y-rail" style="top: 0px; right: 0px; height: 357px;">
             <div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 149px;">
             </div>
             </div>
             
             <script src="resources/js/custom/restaurant-func.js" type="text/javascript"></script>