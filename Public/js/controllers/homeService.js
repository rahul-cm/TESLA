angular.module('tsla').service('homeService', function($http){

  this.addEmail = function(email, callback){
    console.log('function is working');
    $http.post('http://127.0.0.1:4000/api', {email_address: email}).then(
      function(response){
        console.log(response);
        if(response.status === 200) {
          console.log('Form Submitted');
        }
        else {
          console.log("could not submit form");
        }
    })
  }
})
