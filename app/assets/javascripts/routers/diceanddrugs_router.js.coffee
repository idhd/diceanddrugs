class DiceAndDrugs.Router extends Backbone.Router
  routes:
    '': 'woot'
    'animal_choice': 'animal_choice'
    'doses': 'doses'

  animal_choice: () ->
    new DiceAndDrugs.Views.AnimalChoice()

  doses: () ->
    new DiceAndDrugs.Views.Doses()
