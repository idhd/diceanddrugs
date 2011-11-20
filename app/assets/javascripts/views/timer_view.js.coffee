class DiceAndDrugs.Views.Timer extends Backbone.View
  el: '.time-wrapper'
  time: 10000
  period: 50

  initialize: () ->
    console.log 'WOoT'
    @render()

  render: () ->
    @next_sec()

  next_sec: () ->
    self = @
    x = 440*((10000-@time)/10000)
    $('.timer').css('background-position', "-#{x}px 0px")

    @time -= @period
    if @time < 2000
      console.log 'test'
      $('.homme').css('background', "asset-url('homme.png', image);");
    setTimeout(
      () ->
        self.next_sec()
      self.period
    ) if @time > -1
      
