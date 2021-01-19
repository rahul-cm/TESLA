angular.module('tsla').controller('detailsCtrl', function($scope, detailsService, $stateParams){
    $scope.test = "is this thing working yet?";

    console.log($stateParams.id);

    detailsService.getCar($stateParams.id, function(response){
      console.log(response);
      $scope.car = response;
      if(response[0].model === 'S'){
        $scope.style = {
          "width": "90%",
          "height": "350px",
          "background": "url("+ response[0].images[0].location +")",
          "background-size": "cover",
          "background-repeat": "no-repeat",
          "background-position": "center"
        }
      } else {
        $scope.style = {
          "width": "90%",
          "height": "350px",
          "background": "url("+ response[0].images[0].location +")",
          "background-size": "120%",
          "background-repeat": "no-repeat",
          "background-position": "center"
        }
      }
    })




    $('#emailbtn').on('click', function(){
      // $(this).css('border','3px solid blue');

      $overlay = $('<div/>').css({
        'width':'100%',
        'height':'200%',
        'backgroundColor':'rgba(50,50,50,0.5)',
        'position':'absolute',
        'top':0,
        'left':0
      }).appendTo('body')


      $modal = $('<div/>').css({
        'width':750,
        'height': 400,
        'margin':'60% auto',
        'position': 'relative',
        'background-color':'white',
        // 'border':'3px solid #505050',
        'display': 'flex',
        'flex-direction': 'column',
        'justify-content': 'center',
        'text-align': 'center',
        'color': 'grey'
      }).appendTo($overlay)

      $modal.append('<div class="newsletterModal-header"></div>\
                     <div class="newsletterModal-content">\
                       <h1>Get Tesla Updates</h1>\
                       <p>GET NEWSLETTER</p>\
                       <input placeholder=" example@email.com"></input>\
                       <button id="signup-btn">SIGN UP</button>\
                      </div> ')


      $('#signup-btn').on('click', function(){
        $overlay.remove()
      })

    })

})
