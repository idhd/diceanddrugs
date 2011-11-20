class DiceAndDrugs.Views.InjectionChoice extends Backbone.View
  el: '#container'
  template: JST['templates/injection_choice']
  
  initialize: () ->
    console.log 'Injection_choice!'
    @render()
  
  render: () ->
    $(@el).html @template()
