angular.module('tsla').controller('inventoryCtrl', function($scope, inventoryService){

  inventoryService.getCars(function(data){
        $scope.Cars = data;
        console.log(data);
  })

  inventoryService.getCarColor(function(data){
        $scope.carColor = data.color;
        console.log($scope.carColor);
  });

})
