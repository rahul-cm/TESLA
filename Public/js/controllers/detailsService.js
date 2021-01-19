angular.module('tsla').service('detailsService', function($http){

  this.getCar = function(id, callback) {
    console.log(id);
    // console.log('here here');
    $http.get('/api/cars/' + id).then(
      function(response){
        console.log('*****');
        console.log(response.data)
        callback(response.data);
      },
      function(err){
        console.log(err);
        callback(err)

      })
  }



})







// app.module('tsla').service('mainService', function($http){
//   console.log("here 111")
//   this.getCars = function() {
//
//     console.log("here we are again")
//   	return $http({
//   		method: 'GET',
//   		url: 'http://localhost:4000/api/cars'
//   	});
//   }
// })
