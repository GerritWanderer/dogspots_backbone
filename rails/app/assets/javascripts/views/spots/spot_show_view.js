window.SpotShowView = Backbone.View.extend({
  tagName: 'div',
  template: HandlebarsTemplates['spots/show'],

  initialize: function(){
    this.model.on('change', this.render, this);
  },

  render: function(){
    this.$el.html(this.template(this.model.toJSON()));
    return this;
  }
});
