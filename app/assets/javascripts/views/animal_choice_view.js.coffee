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
    new Box(0,100,470,300,"false") #singe
    new Box(130,30,50,110,"false")   #crabe
    new Box(490,80,120,90,"false") #aigle
    new Box(470,345,180,130,"false") #torro
    new Box(365,50,180,90,"false") #loup         
    new Box(365,50,180,90,"false") #croco         
    new Box(340,210,50,20,"true")  #souris
    $('.primary').bind 'click', (event) =>
      $('#true').modal('hide')

class Box
  constructor: (x,y,h,w,ok) ->
    console.log 'kikoo'
    $('.animals').append("<a data-controls-modal='#{ok}' data-backdrop='true' class='btn' style='position: absolute;display: block; top: #{y}px;left: #{x}px; height: #{h}px; width: #{w}px;background: transparent;border: 0px;'></a>");

