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
  


</style>

</head>
<body ng-app="myApp" ng-controller="ImageController">

<div class="container"  >
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

</div>

  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/user_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/user_controller.js' />"></script>


</body>
</html>
