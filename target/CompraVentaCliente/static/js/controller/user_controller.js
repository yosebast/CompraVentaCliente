'use strict';

angular.module('myApp').controller('ImageController', ['$scope', 'ImageService', function($scope, ImageService) {
	 
	
	$scope.datosComp = [];
	
	fetchAllUsers();

	    function fetchAllUsers(){
	        ImageService.fetchAllImages()
	            .then(
	            function(d) {
	               $scope.datosComp= d;
	            },
	            function(errResponse){
	                console.error('Error while fetching Users');
	            }
	        );
	    }
}]);
