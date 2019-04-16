App.auth = App.cable.subscriptions.create "AuthChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    #  window.location = "https://shielded-basin-14722.herokuapp.com/students/" + data.content;

    alert data.content;




