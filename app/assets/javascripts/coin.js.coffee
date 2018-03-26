@Coin = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.coin.name
      React.DOM.td null, @props.coin.description
      React.DOM.td null, @props.coin.user.name