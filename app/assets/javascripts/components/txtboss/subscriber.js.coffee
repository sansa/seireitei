@Subscriber = React.createClass
  handleDelete: (e) ->
    e.preventDefault()
    $.ajax
      method: 'DELETE'
      url: "/txtboss/site/"
      data: {obj: 'Subscriber', id: @props.subscriber._id}
      dataType: 'JSON'
      success: () =>
        @props.handleDeleteSubscriber @props.subscriber
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.subscriber.company_name
      React.DOM.td null, @props.subscriber.company_email
      React.DOM.td null, @props.subscriber.company_phone
      React.DOM.td null,
        React.DOM.a
          className: 'btn btn-danger'
          'Delete'