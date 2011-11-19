class DiceAndDrugs.StayUpdated extends Backbone.View
  el: '#container'
  template: JST['templates/stay_updated']

  initialize: () ->
    @render()

  render: () ->
    $(@el).html @template()
