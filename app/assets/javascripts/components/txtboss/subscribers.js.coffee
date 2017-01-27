@Subscribers = React.createClass
  getInitialState: ->
    subscribers: @props.data
  getDefaultProps: ->
    subscribers: []
  addSubscriber: (sub) ->
    subs = React.addons.update(@state.subscribers, { $push: [sub] })
    @setState subscribers: subs
  deleteSubscriber: (sub) ->
    index = @state.subscribers.indexOf sub
    subs = React.addons.update(@state.subscribers, { $splice: [[index,1]] })
    @replaceState subscribers: subs
  render: ->
    React.DOM.div
      className: 'subscribers'
      React.DOM.h2
        className: 'title'
        'Subscribers'
      React.createElement SubscriberForm, handleNewSubscriber: @addSubscriber
      React.DOM.hr null
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Company'
            React.DOM.th null, 'Email'
            React.DOM.th null, 'Phone'
            React.DOM.th null, 'Actions'
        React.DOM.tbody null,
          for subscriber in @state.subscribers
            React.createElement Subscriber, key: subscriber._id['$oid'], subscriber: subscriber, handleDeleteSubsciber: @deleteSubscriber