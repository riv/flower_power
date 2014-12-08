# # Place all the behaviors and hooks related to the matching controller here.
# # All this logic will automatically be available in application.js.
# # You can use CoffeeScript in this file: http://coffeescript.org/

# orderCards = React.createClass
#   render: ->
#     children = []
#     for i in [0..@props.orders.length-1]
#       children.push(
#         React.DOM.div
#           className: 'orderRow'
#           childen: [
#             # console.log(@props.orders[i])
#             React.DOM.div
#               className: 'boxInfo'
#               children: [
#                 React.DOM.div
#                   children: "Order ID"
#                 React.DOM.div
#                   className: "id"
#                   children: @props.orders[i].order.id
#               ]
#             React.DOM.div
#               className: 'boxInfo'
#               children: [
#                 React.DOM.div
#                   children: "name"
#                 React.DOM.div
#                   className: "name"
#                   children: @props.orders[i].order.name
#               ]
#             React.DOM.div
#               className: 'boxInfo'
#               children: [
#                 React.DOM.div
#                   children: "Email"
#                 React.DOM.div
#                   className: "email"
#                   children: @props.orders[i].order.customer_email
#               ]
#             React.DOM.div
#               className: 'boxInfo'
#               children: [
#                 React.DOM.div
#                   children: "Phone Number"
#                 React.DOM.div
#                   className: "number"
#                   children: @props.orders[i].order.phone_number
#               ]
#             React.DOM.div
#               className: 'boxInfo'
#               children: [
#                 React.DOM.div
#                   children: "Has Payed"
#                 React.DOM.div
#                   className: "hasPayed"
#                   children: @props.orders[i].order.has_payed
#               ]
#             React.DOM.div
#               className: 'boxInfo'
#               children: [
#                 React.DOM.div
#                   children: "Delivery Info"
#                 React.DOM.div
#                   className: "deliveryInfo"
#                   children: @props.orders[i].order.delivery
#                 React.DOM.div
#                   classNaem: "address"
#                   children: @props.orders[i].order.address
#               ]
#             React.DOM.div
#               className: 'boxInfo'
#               children: [
#                 React.DOM.div
#                   children: "Total:"
#                 React.DOM.div
#                   className: "total"
#                   children: @props.orders[i].order.total
#               ]
#           ]
#         )
#     React.DOM.div
#       children: children

# cDiv = React.createClass
#   getInitialState: ->
#     fullorders = JSON.parse(document.getElementById("orderJson").innerText)
#     { orders: fullorders }
#   render: ->
#     React.DOM.div
#       children: orderCards({orders: @state.orders})


# React.renderComponent(cDiv(), document.getElementById("renderer"))




