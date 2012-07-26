window.SpotNewView = Backbone.View.extend({
    template: HandlebarsTemplates['spots/new'],

    events: {
      "submit #new-spot": "save"
    },
    initialize: function(){
      this.model = new this.collection.model()
      this.model.on('change:errors', this.render, this);
    },
    save: function(e){
    	e.preventDefault()
      e.stopPropagation()
      this.model.unset("errors")
      this.collection.create(this.model.toJSON(), {
      	success: function (model, response) {
          this.model = spot
      	  window.location.hash = "/#"+this.model.id
        },
        error: function (model, response) {
          model.set({errors: $.parseJSON(jqXHR.responseText)})
        }
      })
    }, 
    render: function(){
    	this.$el.html(this.template(this.model.toJSON()));
      return this;
    },
});
