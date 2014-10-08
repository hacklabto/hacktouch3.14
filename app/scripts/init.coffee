socket = new WebSocket 'ws://localhost:1234/api/v1/amqp-socket'

console.log "connecting!"

socket.onopen = ->
  console.log "connected!"

socket.onerror = (e) ->
  console.log "websocket error!"
  console.log e

socket.onmessage = (e) ->
  data = JSON.parse e.data
  console.log JSON.stringify data
  eight() if data.message?.eight?

eight = ->
  $eight = $(".eight").removeClass("hide").show()
    .delay(1000)
    .queue -> $eight.hide().dequeue()

# eight()
# setInterval eight, 2000

