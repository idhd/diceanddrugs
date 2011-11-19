class DiceAndDrugs.Router extends Backbone.Router
  routes:
    '': 'woot'
    'animal_choice': 'animal_choice'
    'doses': 'doses'
    'stay_updated': 'stay_updated'

  animal_choice: () ->
    new DiceAndDrugs.Views.AnimalChoice()

  doses: () ->
    new DiceAndDrugs.Views.Doses()

  stay_updated: () ->
    new DiceAndDrugs.StayUpdated()

