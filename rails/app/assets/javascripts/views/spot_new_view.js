window.SpotNewView = Backbone.View.extend({
  template: HandlebarsTemplates['spots/new'],

  events: {
    "submit #new-spot": "save"
  },
  initialize: function(){
    this.model = new this.collection.model();
  },

  save: function(e){
    e.preventDefault();
    attributes = {spot: Backbone.Syphon.serialize(this)};
    this.collection.create(attributes, {
      success: function (model, response) {
        this.model = model
        Backbone.history.navigate("spots/"+this.model.get('id'), true)
      }
    })
  },

  render: function(){
  this.$el.html(this.template(this.model.toJSON()));
  return this;
  }
});
