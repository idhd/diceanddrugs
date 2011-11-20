(function() {
  var __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  DiceAndDrugs.Views.Timer = (function() {

    __extends(Timer, Backbone.View);

    function Timer() {
      Timer.__super__.constructor.apply(this, arguments);
    }

    Timer.prototype.el = '.time-wrapper';

    Timer.prototype.time = 10000;

    Timer.prototype.period = 50;

    Timer.prototype.initialize = function() {
      console.log('WOoT');
      return this.render();
    };

    Timer.prototype.render = function() {
      return this.next_sec();
    };

    Timer.prototype.next_sec = function() {
      var self, x;
      self = this;
      x = 440 * ((10000 - this.time) / 10000);
      $('.timer').css('background-position', "-" + x + "px 0px");
      this.time -= this.period;
      if (this.time > -1) {
        return setTimeout(function() {
          return self.next_sec();
        }, self.period);
      }
    };

    return Timer;

  })();

}).call(this);
