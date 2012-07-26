window.SpotIndexView = Backbone.View.extend({
  tagName: 'li',
  template: HandlebarsTemplates['spots/index'],

  events: {
    'click': 'show'
  },
  initialize: function(){
    this.model.on('change', this.render, this);
  },

  render: function(){
    this.$el.html(this.template(this.model.toJSON()));
    return this;
  },
  show: function() {
    Backbone.history.navigate("spots/"+this.model.get('id'), true)
  }
});
