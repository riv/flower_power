# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#myCarousel").carousel()
  return

$(".transitionButton").click ->
  $("html, body").animate
    scrollTop: $("#s").offset().top
    , 3000
  return

$(document).ready ->
  $("html, body").animate
    scrollTop: 0
    , 1000
  return

$(document).ready ->
  # Stick the #nav to the top of the window
  nav = $(".cartDiv")
  navHomeY = $(".mainFunc").offset().top
  isFixed = false
  $w = $(window)
  $w.scroll ->
    scrollTop = $w.scrollTop()
    shouldBeFixed = scrollTop > navHomeY
    if shouldBeFixed and not isFixed
      nav.css
        position: "fixed"
        top: 0
        left: nav.offset().left
        width: nav.width()
      isFixed = true
    else if not shouldBeFixed and isFixed
      nav.css position: "static"
      isFixed = false
    return
  return


layout = React.createClass
  render: ->
    children = []
    for i in [0..@props.flowers.length-1]
      children.push(
        React.DOM.div
          className: 'card col-md-4'
          children: [
            React.DOM.div
              className: 'flowerName'
              children: @props.flowers[i].name
            React.DOM.img
              className: 'flowerImage'
              src: @props.flowers[i].imagelink
              width: "250px"
              height: "180px"
            React.DOM.div
              className: 'utility'
              children: [
                React.DOM.div
                  className: 'sixInch'
                  children: [
                    React.DOM.div
                      className: 'stock'
                      children: '6" Stock: '.concat(@props.flowers[i].sixcount)
                    React.DOM.button
                      type: 'button'
                      className: 'add'
                      'data-size': 'six'
                      'data-index': i
                      onClick: @props.clickHandler
                      children: 'Add one to cart'  
                      disabled: if @props.flowers[i].sixcount == 0 then 'disabled' else ''
                  ]
                React.DOM.div
                  className: 'eightInch'
                  children: [
                    React.DOM.div
                      className: 'stock'
                      children: '8" Stock: '.concat(@props.flowers[i].eightcount)
                    React.DOM.button
                      type: 'button'
                      className: 'add'
                      'data-size': 'eight'
                      'data-index': i
                      onClick: @props.clickHandler
                      children: 'Add one to cart' 
                      disabled: if @props.flowers[i].eightcount == 0 then 'disabled' else '' 
                  ]
              ]
          ]
      )
    React.DOM.div
      children: children

cart = React.createClass
  render: ->
    cartItems = []
    for i in [0..@props.selected.length-1]
      item = @props.selected[i].cartItem
      if item.sixcount > 0 || item.eightcount > 0
        cartItems.push(
          React.DOM.div
            className: 'cartItem'
            children: [
              React.DOM.div
                className: 'cultivar'
                children: @props.selected[i].cartItem.flower.name
              React.DOM.div
                className: 'sixinch'
                children: [
                  React.DOM.div
                    className: 'quantity'
                    children: '#6 inch: ' + @props.selected[i].cartItem.sixcount
                  React.DOM.button
                    className: 'removeOne'
                    type: 'button'
                    'data-index': i
                    'data-size': 'six'
                    children: 'remove one'
                    onClick: @props.remove
                    disabled: if @props.selected[i].cartItem.sixcount == 0 then 'disabled' else ''  
                ]
              React.DOM.div
                className: 'eightinch'
                children: [
                  React.DOM.div
                    className: 'quantity'
                    children: '#8 inch: ' + @props.selected[i].cartItem.eightcount
                  React.DOM.button
                    className: 'removeOne'
                    type: 'button'
                    'data-index': i
                    'data-size': 'eight'
                    children: 'remove one'
                    onClick: @props.remove
                    disabled: if @props.selected[i].cartItem.eightcount == 0 then 'disabled' else '' 
                ]
            ]
          )
    React.DOM.div
      className: 'cartDiv'
      children: [
        React.DOM.div
          className: 'cartBanner'
          children: [
            React.DOM.h2
              children: 'Cart'
          ]
        React.DOM.div
          className: 'allItems'
          children: cartItems
        React.DOM.div
          className: 'totalBlock'
          children: [
            React.DOM.div 
              className: 'totalCaption'
              children: [
                React.DOM.h3
                  className: 'total'
                  children: "Total: $" + @props.total + '.00'
              ]
          ]
        React.DOM.div
          className: 'nameInput'
          children: [
            React.DOM.div
              className: 'inputTag'
              children: [
                React.DOM.h5
                  children: 'Name'
              ]
            React.DOM.input
              className: 'input form-control'
              id: 'customerName'
              placeholder: 'Enter name'
          ]
        React.DOM.div
          className: 'phoneInput'
          children: [
            React.DOM.div
              className: 'inputTag'
              children: [
                React.DOM.h5 
                  children: 'Phone Number'
              ]
            React.DOM.input
              className: 'input form-control phone_number'
              id: 'customerPhoneNumber'
              placeholder: 'xxx-xxx-xxxx'
          ]
        React.DOM.div
          className: 'emailInput'
          children: [
            React.DOM.div
              className: 'inputTag'
              children: [
                React.DOM.h5
                  children: 'Email address'
              ]
            React.DOM.input
              className: 'input form-control'
              id: 'customerEmailAddress'
              placeholder: 'Enter your email address'
          ]
        React.DOM.div
          className: 'deliveryOption btn-group'
          children: [
            React.DOM.button
              className: 'pickup btn btn-primary'
              id: 'pickupButton'
              onClick: @props.undelivery
              children: 'Pickup'
            React.DOM.button
              className: 'delivery btn btn-primary'
              id: 'deliveryButton'
              onClick: @props.delivery
              children: 'Delivery'
          ]
        React.DOM.div
          className: 'pickupLocation well'
          children: 'Pick up your order on December 8th at the Greenhouses from 8am-5pm. Cash, credit, and check are all accepted.'
        React.DOM.div
          className: 'deliveryAddress'
          children: [
            React.DOM.div
              children: 'On Campus Address'
            React.DOM.input
              className: 'address form-control'
            React.DOM.div
              className:'well'
              children: 'As of this year, we only deliver on campus. A $15.00 fee is applied to the total for delivery. All deliveries will be made December 8th. Payment in cash, credit, or check will be accepted upon delivery'
          ]
        React.DOM.button
          type: 'button'
          className: 'btn btn-success'
          children: 'Submit your order'
          onClick: @props.submit
        React.DOM.div
          className: 'info well'
          children: 'Once you submit your order, you will receive an email reciept and confirmation with further instructions'
      ]

c = React.createClass
  #initialize original array of items to be pushed into cart
  getInitialState: ->
    initialArray = []
    flowers = JSON.parse(document.getElementById("flowerjson").innerText)
    i = 0
    while i < 32
      initialArray.push cartItem:
        flower: flowers[i]
        sixcount: 0
        eightcount: 0
      i++
    { selected: initialArray, flowers: flowers, total: 0, deliveryFeeApplied: false }
  onClick: (e) ->
    index = parseInt(e.target.getAttribute('data-index'), 10)
    f = @state.flowers[index]
    s = e.target.getAttribute('data-size')
    item = @state.selected[index].cartItem
    total = @state.total
    # TODO: Set CSS declaratively
    if s == 'six'
      item.sixcount++
      total = total + 13
      f.sixcount--
    else
      item.eightcount++
      total = total + 18
      f.eightcount--
    newSelected = @state.selected
    newSelected[index].cartItem = item
    newFlowers = @state.flowers
    newFlowers[index] = f
    @setState({ selected: newSelected, flowers: newFlowers, total: total, deliveryFeeApplied: @state.deliveryFeeApplied})
  remove: (e) ->
     index = parseInt(e.target.getAttribute('data-index'), 10)
     f = @state.flowers[index]
     s = e.target.getAttribute('data-size')
     item = @state.selected[index].cartItem
     total = @state.total
     if s == 'six'
       item.sixcount--
       total = total - 13
       f.sixcount++
     else 
       item.eightcount--
       total = total - 18
       f.eightcount++
     newSelected = @state.selected
     newSelected[index].cartItem = item
     newFlowers = @state.flowers
     newFlowers[index] = f
     @setState({selected: newSelected, flowers: newFlowers, total: total, deliveryFeeApplied: @state.deliveryFeeApplied})
  delivery: (e) ->
    d = $('.deliveryAddress')
    p = $('.pickupLocation')
    d.css('display', 'block')
    p.slideUp()
    d.slideDown()
    total = @state.total + 15
    if !@state.deliveryFeeApplied
      @setState({selected: @state.selected, flowers: @state.flowers, total: total, deliveryFeeApplied: true})
  undelivery: (e) ->
    d = $('.deliveryAddress')
    p = $('.pickupLocation')
    p.css('display', 'block')
    d.slideUp()
    p.slideDown()
    total = @state.total - 15
    if @state.deliveryFeeApplied
      @setState({selected: @state.selected, flowers: @state.flowers, total: total, deliveryFeeApplied: false})
  submit: (e) ->
    console.log('submit clicked')
    console.log(@state.selected)
    selection_for_preorder = []
    for sel in @state.selected
      console.log('hits for loop right before if')
      if sel.cartItem.sixcount > 0 || sel.cartItem.eightcount > 0
        selection_for_preorder.push(sel)
        console.log(selection_for_preorder)
    console.log(selection_for_preorder)
    console.log($('#customerPhoneNumber').val())
    params = {
      order: JSON.stringify(selection_for_preorder)
      name: $('#customerName').val()
      phone_number: $('#customerPhoneNumber').val()
      email: $('#customerEmailAddress').val()
      address: $('.address').val()
      delivery: @state.deliveryFeeApplied
      total: @state.total
    }
    $.ajax({
      type: 'POST'
      url: '/orders'
      data: params
      dataType: 'JSON'
      success: (resp) ->
        if resp.success
          alert('Your transaction went through — check your email for your order confirmation and pickup/delivery information.')
          window.location.reload(true)
        else
          alert(resp.errors)
    })
  render: ->
    React.DOM.div
      className: 'mainFunc'
      children: [
        React.DOM.div
          className: 'col-md-9'
          children: layout({clickHandler: @onClick, flowers: @state.flowers, selected: @state.selected})
        React.DOM.div
          className: 'col-md-3'
          children: cart({total: @state.total, selected: @state.selected, remove: @remove, delivery: @delivery, undelivery: @undelivery, submit: @submit})
      ]

React.renderComponent(c(), document.getElementById('s'));
