window.CommentNewView = Backbone.View.extend({
  template: HandlebarsTemplates['comments/new'],

  events: {
    "submit #new-comment": "save"
  },
  initialize: function(){
    this.model = new this.collection.model();
  },

  save: function(e){
    e.preventDefault();
    attributes = {comment: Backbone.Syphon.serialize(this)};
    this.collection.create(attributes, {
      success: function (model, response) {
        this.model = model
        Backbone.history.navigate("spots/"+this.model.get('spot_id'), true)
      }
    })
  },

  render: function(){
    this.$el.html(this.template({spot_id: window.Dogspots.spot.get("id")}));
    return this;
  }
});
