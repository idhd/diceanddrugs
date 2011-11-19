class DiceAndDrugs.Views.Timer extends Backbone.View
  el: '.time-wrapper'
  countdown: 5

  initialize: () ->
    console.log 'WOoT'
    @render()

  render: () ->
    @next_sec()

  next_sec: () ->
    self = @
    $('.timer').html @countdown
    @countdown--
    setTimeout(
      () ->
        self.next_sec()
      1000
    ) if @countdown > -1
