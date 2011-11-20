# atan(x-3.5)+2.5/2
# exp(3/2*x-6.6)/10

class DiceAndDrugs.Views.Doses extends Backbone.View
  el: '#container'
  template: JST['templates/doses']
  eff_pos: 0
  eff_up: true
  eff_stop: false
  tox_pos: 0
  tox_up: true
  tox_stop: false

  initialize: () ->
    @render()

  render: () ->
    $(@el).html @template()
    @next_frame_eff()
    self = @
    $('.estbleu').click (e) ->
      self.eff_stop = true
      self.next_frame_tox()
    $('.estorange').click () ->
      self.tox_stop = true
      e = Math.floor(self.eff_pos/85)*2 + 2
      t = Math.floor(self.tox_pos/85)*2 + 2
      t=2 if e <= 0
      t=6 if e >= 6
      console.log "/assets/t#{t}e#{e}.png"
      $('img.rat').attr('src', "/assets/t#{t}e#{e}.png")

  next_frame_eff: () ->
    self = @
    setTimeout(
      () ->
        # console.log self.eff_pos
        x = self.eff_pos
        $('.liquid.bleu').css('background-position', "#{x}px 0px")
        if self.eff_up
          self.eff_pos += 10
        else
          self.eff_pos -= 10
        if self.eff_pos > 250
          self.eff_up = false
        if self.eff_pos < 0
          self.eff_up = true
        self.next_frame_eff() unless self.eff_stop
      25
    )
  next_frame_tox: () ->
    self = @
    console.log this
    setTimeout(
      () ->
        x = self.tox_pos
        $('.liquid.orange').css('background-position', "#{x}px 0px")
        if self.tox_up
          self.tox_pos += 10
        else
          self.tox_pos -= 10
        if self.tox_pos > 250
          self.tox_up = false
        if self.tox_pos < 0
          self.tox_up = true
        self.next_frame_tox() unless self.tox_stop
      f(self.eff_pos)
      
    )

f = (x) -> (250-x)/10
