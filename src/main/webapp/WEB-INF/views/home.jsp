<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<style type="text/css">
  
body, #mainWrapper {
	height: 70%;
	background-color:rgb(245, 245, 245);
}

body, .form-control{
	font-size:12px!important;
}

.floatRight{
	float:right;
	margin-right: 18px;
}

.has-error{
	color:red;
}

.formcontainer{
	background-color: #DAE8E8;
	padding: 20px;
}

.tablecontainer{
	padding-left: 20px;
}

.generic-container {
  width:80%;
  margin-left: 20px;
  margin-top: 20px;
  margin-bottom: 20px;
  padding: 20px;
  background-color: #EAE7E7;
  border: 1px solid #ddd;
  border-radius: 4px;
  box-shadow: 0 0 30px black;
}

.custom-width {
    width: 80px !important;
}


</style>

</head>
<body ng-app="myApp" ng-controller="ImageController">

<!-- <div class="container"  >
    <h2>Imagenes</h2>
    
    	
    <div class="row">   
      <div class="col-md-4"  ng-repeat="imagen in datosComp">
        <a href="cosmos.jpg" class="thumbnail">
        <p>cosmos</p>
        <img data-ng-src="data:image/jpg;base64,{{imagen.body}}" alt="cosmos" style="width:220px;height:200px">
        </a>
      </div>      
    </div>

    <!-- <div class="row">
  <div class="col-sm-6 col-md-3">
    <a href="#" class="thumbnail">
      <img src="cosmos.jpg" alt="prueba">
    </a>
  </div>
  <div class="col-sm-6 col-md-3">
    <a href="#" class="thumbnail">
      <img src="cosmos.jpg" alt="prueba">
    </a>
  </div>
   <div class="col-sm-6 col-md-3">
    <a href="#" class="thumbnail">
      <img src="cosmos.jpg" alt="prueba">
    </a>
  </div>
   <div class="col-sm-6 col-md-3">
    <a href="#" class="thumbnail">
      <img src="cosmos.jpg" alt="prueba">
    </a>
  </div>-->

</div>-->




<div class="generic-container" ng-controller="ImageController as ctrl">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">User Registration Form </span></div>
              <div class="formcontainer">
                  <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                      <input type="hidden" ng-model="ctrl.user.id" />
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="uname">Name</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.name" id="uname" class="username form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.uname.$error.required">This is a required field</span>
                                      <span ng-show="myForm.uname.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.uname.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                        
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="age">Age</label>
                              <div class="col-md-7">
                                  <input type="number" ng-model="ctrl.user.age" id="age" class="form-control input-sm" placeholder="Enter your Age"/>
                              </div>
                          </div>
                      </div>

                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="salary">Salary</label>
                              <div class="col-md-7">
                                  <input type="number" ng-model="ctrl.user.salary" id="salary" class="form-control input-sm" placeholder="Enter your Salary" ng-pattern="/^[0-9]+(\.[0-9]{1,2})?$/" step="0.01" required/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.salary.$error.required">This is a required field</span>
                                      <span ng-show="myForm.salary.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <div class="row">
                          <div class="form-actions floatRight">
                              <input type="submit"  value="{{!ctrl.user.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
                              <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
          <div class="panel panel-default">
                <!-- Default panel contents -->
              <div class="panel-heading"><span class="lead">List of Users </span></div>
              <div class="tablecontainer">
                  <table class="table table-hover">
                      <thead>
                          <tr>
                              <th>ID.</th>
                              <th>Name</th>
                              <th>Age</th>
                              <th>Salary</th>
                              <th width="100">
                          </tr>
                      </thead>
                      <tbody>
                          <tr ng-repeat="u in ctrl.users">
                              <td><span ng-bind="u.id"></span></td>
                              <td><span ng-bind="u.name"></span></td>
                              <td><span ng-bind="u.age"></span></td>
                              <td><span ng-bind="u.salary"></span></td>
                              <td>
                              <button type="button" ng-click="ctrl.edit(u.id)" class="btn btn-success custom-width">Edit</button>  <button type="button" ng-click="ctrl.remove(u.id)" class="btn btn-danger custom-width">Remove</button>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>












  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/user_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/user_controller.js' />"></script>
       <script src="<c:url value='/static/js/interceptor/authInterceptor.js' />"></script>     

</body>
</html>
