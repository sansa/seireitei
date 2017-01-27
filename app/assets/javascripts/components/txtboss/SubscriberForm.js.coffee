@SubscriberForm = React.createClass
  getInitialState: ->
    company_name: ''
    company_email: ''
    company_phone: ''
    password: ''
  handleChange: (e) ->
    name = e.target.name
    @setState "#{ name }": e.target.value
  handleSubmit: (e) ->
    e.preventDefault()
    $.post '', { data: @state, obj: 'Subscriber'}, (data) =>
      @props.handleNewSubscriber data
      @setState @getInitialState()
      , 'JSON'
  render: ->
    React.DOM.form
      className: 'form-inline'
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'Company'
          name: 'company_name'
          value: @state.company_name
          onChange: @handleChange
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'Email'
          name: 'company_email'
          value: @state.company_email
          onChange: @handleChange
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'Phone'
          name: 'company_phone'
          value: @state.company_phone
          onChange: @handleChange
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'Password'
          name: 'password'
          value: @state.password
          onChange: @handleChange
      React.DOM.button
        type: 'submit'
        className: 'btn btn-primary'
        disabled: !@valid()
        'Create subscriber'
  valid: ->
    @state.company_name && @state.company_email && @state.company_phone