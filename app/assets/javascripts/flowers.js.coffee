# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#myCarousel").carousel()
  return

$(".transitionButton").click ->
  $("html, body").animate
    scrollTop: $("#s").offset().top
    , 1000
  return


# layout = React.createClass
#   render: ->
#     React.DOM.div
#       className: 'PageDiv'
#       children: [
#         React.DOM.div
#           className:'navbar navbar-default'
#           children: [
#             React.DOM.div
#               className: 'navbar-header'
#               children: [
#                 React.DOM.a
#                   className: 'navbar-brand'
#                   href: '/'
#                   children: 'Cornell Horticulture Club'
#               ]
#           ]
#         React.DOM.section
#           className:'jumbotron'
#           children: [
#             React.DOM.div
#               className: 'container'
#               children: [
#                 React.DOM.h1
#                   className: 'page-header'
#                   children: 'Annual Poinsettia Sale'
#               ]
#           ]
#         React.DOM.section
#           className: 'flowers'
#           children: [
#             React.DOM.div
#               className: 'small'
#               children: [
#                 React.DOM.div
#                   className: 'label'
#                   children: 'Small | $20'
#                 React.DOM.div
#                   className: 'numSmall'
#               React.DOM.input
#                 className: 'orderQuant'
#             ]
#           React.DOM.div
#             className: 'medium'
#             children: [
#               React.DOM.div
#                 className: 'label'
#                 children: 'Medium | $30'
#               React.DOM.div
#                 className: 'numMedium'
#               React.DOM.input
#                 className: 'orderQuant'
#             ]
#           React.DOM.div
#             className: 'large'
#             children: [
#               React.DOM.div
#                 className: 'label'
#                 children: 'Large | $30'
#               React.DOM.div
#                 className: 'numLarge'
#                 React.DOM.input
#                   className: 'orderQuant'
#               ]
#           ]
#         # React.DOM.section
#         #   className: 'typeform'
#         #   children: [
#         #     React.DOM.div
#         #       className: 'typeform-widget'
#         #       dataurl: 'https://shuocheng.typeform.com/to/jSIPZQ'
#         #       datatext: 'poinsettia order'
#         #   ]
#       ]
# React.renderComponent(layout(), document.getElementById('renderContainer'));
