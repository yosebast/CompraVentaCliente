'use strict';

angular.module('myApp').factory('ImageService', ['$http', '$q', function($http, $q){

	var REST_SERVICE_URI = 'http://localhost:8082/CompraVenta/imagenes';
	
	var REST_SERVICE_URL_SECURITY = 'http://localhost:8080/secureRESTApiWithBasicAuthentication/user/'
	  
  	var factory = { //fetchAllImages: fetchAllImages,
			fetchAllUsers: fetchAllUser,
			createUser:createdUser,
			updateUser:upDateUser,
			deleteUser: deleteUser}
	
	return  factory;

function fetchAllImages(){

	 var deferred = $q.defer();
        $http.get(REST_SERVICE_URI)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching Users');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }

function fetchAllUsers() {
    var deferred = $q.defer();
    $http.get(REST_SERVICE_URL_SECURITY)
        .then(
        function (response) {
            deferred.resolve(response.data);
        },
        function(errResponse){
            console.error('Error while fetching Users');
            deferred.reject(errResponse);
        }
    );
    return deferred.promise;
}


function createUser(user) {
    var deferred = $q.defer();
    $http.post(REST_SERVICE_URL_SECURITY, user)
        .then(
        function (response) {
            deferred.resolve(response.data);
        },
        function(errResponse){
            console.error('Error while creating User');
            deferred.reject(errResponse);
        }
    );
    return deferred.promise;
}


function updateUser(user, id) {
    var deferred = $q.defer();
    $http.put(REST_SERVICE_URL_SECURITY+id, user)
        .then(
        function (response) {
            deferred.resolve(response.data);
        },
        function(errResponse){
            console.error('Error while updating User');
            deferred.reject(errResponse);
        }
    );
    return deferred.promise;
}

function deleteUser(id) {
    var deferred = $q.defer();
    $http.delete(REST_SERVICE_URL_SECURITY+id)
        .then(
        function (response) {
            deferred.resolve(response.data);
        },
        function(errResponse){
            console.error('Error while deleting User');
            deferred.reject(errResponse);
        }
    );
    return deferred.promise;
}


}]);




