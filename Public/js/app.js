angular.module('tsla', ['ui.router']).config(function($stateProvider, $urlRouterProvider){

  $urlRouterProvider.otherwise('/');

  $stateProvider
  .state('mainmobile', {
    url: '/',
    templateUrl: './views/mainmobile.html',
    controller: 'homeCtrl'
  })
  .state('inventory', {
    url:'/inventory/',
    templateUrl: './views/inventory.html'
  })
  .state('details', {
    url:'/details/:id',
    templateUrl: './views/details.html',
    controller: 'detailsCtrl'
  })
  .state('models', {
    url: '/models',
    templateUrl: './views/models.html'
  })
  .state('modelx', {
    url: '/modelx',
    templateUrl: './views/modelx.html'
  })
  .state('model3', {
    url: '/model3',
    templateUrl: './views/model3.html'
  })
  .state('energy', {
    url: '/energy',
    templateUrl: '/views/energy.html'
  })
})
