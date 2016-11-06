@simpleAuth = angular.module 'simpleAuth', [
  'ngAnimate',
  'ui.router',
  'templates',
  'ipCookie',
  'ngFlash',
  'ng-token-auth',
  'ngResource'
]

@simpleAuth.config [
  '$stateProvider', '$urlRouterProvider', '$locationProvider',
  ($stateProvider, $urlRouterProvider, $locationProvider) ->
    $stateProvider
      .state('home',
        url: '/',
        templateUrl: 'index.html'
      )
      .state('signUp',
        url: '/sign_up',
        templateUrl: 'users/sign_up.html'
        controller: 'SignUpController'
      )
      .state('login',
        url: '/login',
        templateUrl: 'users/login.html'
        controller: 'LoginController'
      )
    $urlRouterProvider.otherwise('/')
    $locationProvider.html5Mode(true)
]

# @simpleAuth.config [
#   '$authProvider'
#   ($authProvider) ->
#     $authProvider.configure
#       storage: 'localStorage'
#       confirmationSuccessUrl: null