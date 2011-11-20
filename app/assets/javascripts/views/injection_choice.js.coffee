class DiceAndDrugs.Views.InjectionChoice extends Backbone.View
  el: '#container'
  template: JST['templates/injection_choice']
  dessin: ''
  dtc: false
  stc: false
  iv: false

  initialize: () ->
    console.log 'Injection_choice!'
    @render()
  
  render: () ->
    $(@el).html @template()
    self = @

    $('.add').click (e) ->
      self.dessin = $(e.target).attr('data-choice')

    $('.cho').click (e) ->
      if self.dessin && $(e.target).attr('data-choice') == self.dessin
        $(e.target).css('color', 'green')
      if self.dessin && $(e.target).attr('data-choice') == self.dessin && self.dessin == 'dtc'
        self.dtc = true
      if self.dessin && $(e.target).attr('data-choice') == self.dessin && self.dessin == 'stc'
        self.stc = true
      if self.dessin && $(e.target).attr('data-choice') == self.dessin && self.dessin == 'iv'
        self.iv = true
      console.log "#{self.dtc} #{self.stc} #{self.iv}"
      if self.end()
        window.router.navigate('doses', true)
  end: () ->
    @dtc && @stc && @iv
