@simpleAuth.controller 'LoginController', [
  '$scope', '$auth', 'Flash', '$state'
  ($scope, $auth, Flash, $state) ->
    $scope.init = ->
      $scope.loginForm = {}

    $scope.submit = ->
      $auth.submitLogin($scope.loginForm)
            .then((response) ->
              Flash.create(
                'success',
                'Login successfully!',
                5000
              )
            ).catch((error) ->
              Flash.create(
                'danger',
                'Invalid credentials!',
                0
              )
            )
]
