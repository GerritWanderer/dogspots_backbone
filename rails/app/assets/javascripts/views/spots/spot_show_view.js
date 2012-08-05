window.SpotShowView = Backbone.View.extend({
  tagName: 'div',
  template: HandlebarsTemplates['spots/show'],

  initialize: function(){
    this.model.on('change', this.render, this);
  },

  render: function(){
    $("span#view-title").html(this.model.get("title"));
    $("a#back-button").css("display", "inline-block");
    this.$el.html(this.template(this.model.toJSON()));
    return this;
  }
});

