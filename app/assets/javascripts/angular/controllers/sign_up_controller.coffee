@simpleAuth.controller 'SignUpController', [
  '$scope', '$auth', 'Flash', '$state'
  ($scope, $auth, Flash, $state) ->
    $scope.init = ->
      $scope.signUpForm = {}

    $scope.submit = ->
      $auth.submitRegistration($scope.signUpForm)
            .then((response) ->
              Flash.create(
                'success',
                'Sign up successfully! ' +
                  'A confirmation email has been sent to your email!',
                0
              )
              $state.go('home')
            ).catch((error) ->
              Flash.create(
                'danger',
                'Cannot submit, please re-check your form for errors!',
                0
              )
            )
]