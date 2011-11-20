class DiceAndDrugs.Router extends Backbone.Router
  routes:
    'animal_choice': 'animal_choice'
    'doses': 'doses'
    'stay_updated': 'stay_updated'
    'injection_choice': 'injection_choice'

  animal_choice: () ->
    new DiceAndDrugs.Views.AnimalChoice()

  doses: () ->
    new DiceAndDrugs.Views.Doses()

  stay_updated: () ->
    new DiceAndDrugs.StayUpdated()
      
  injection_choice: () ->
    new DiceAndDrugs.Views.InjectionChoice()

