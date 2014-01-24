Application.controller 'MessagesCtrl', ['$scope', '$socket', ($scope, $socket) ->
  $scope.messages = []

  $socket.get '/messages', (messages) ->
    $scope.$apply ->
      $scope.messages = messages
]
