class DiceAndDrugs.Views.AnimalChoice extends Backbone.View
  el: '#container'
  template: JST['templates/animal_choices']

  initialize: () ->
    console.log 'pwEt'
    @render()

  
  render: () ->
    $(@el).html @template()
    $('#true').modal({
      keyboard: true
    })
    $('#false').modal({
      keyboard: true
    })
    console.log 'lol'
    new Box(0,0,10,10,"false")
    new Box(10,20,10,10,"false")
    new Box(100,300,10,10,"true")
    new Box(500,600,10,10,"false")
          
class Box
  constructor: (x,y,h,w,ok) ->
    console.log 'kikoo'
    $('.animals').append("<a data-controls-modal='#{ok}' class='btn' style='position: absolute;display: block; top: #{y}px;left: #{x}px; height: #{h}px; width: #{w}px;background: black;'></a>");

