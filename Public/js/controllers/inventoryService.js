angular.module('tsla').service('inventoryService', function($http){

  this.getCars = function(callback){
    $http.get('/api/cars').then(
      function(response){
        callback(response.data);
        console.log(response.data)
      },
      function(err){
        callback(err)
      })
  }
  this.getCarColor = function(callback){
    $http.get('/api/cars').then(
      function(resp){
      // console.log(resp);
      for (var i = 0; i < resp.data.length; i++) {
        callback(resp.data[i]);
        // console.log(resp.data[i]);
      }
    })
  }


})
