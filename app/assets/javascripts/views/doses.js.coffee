# atan(x-3.5)+2.5/2
# exp(3/2*x-6.6)/10

class DiceAndDrugs.Views.Doses extends Backbone.View
  el: '#container'
  template: JST['templates/doses']

  initialize: () ->
    @render()

  render: () ->
    $(@el).html @template()
    $('.dose').change () ->
      # console.log @value
      x = (3.5/($('.dose').attr('max')))*@value
      coefy = 100/1.5
      tox = (x) -> Math.exp((3/2)*x-2)/10
      eff = (x) -> Math.atan(2*x-3)+1.25
      $('.toxicity').val tox(x) * coefy
      $('.efficacity').val eff(x) * coefy*0.58

