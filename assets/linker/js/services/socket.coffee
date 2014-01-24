Application.service '$socket', ['$rootScope', ($rootScope) ->
  $socket = io.connect()
  $socket.on 'connect', (stream) ->
    $socket.on 'message', (message) ->
      console.log "New message : ", message
]
