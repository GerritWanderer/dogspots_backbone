window.Dogspots = new (Backbone.Router.extend({
    initialize: function(){
        this.spots = new Spots();
        this.spotsView = new SpotsView({collection: this.spots});
        this.spotsView.render();
    },

    routes: {
        "": "index",
        "spots/:id": "show"
    },
    index: function(){
        $('#container').html(this.spotsView.el);
        this.spots.fetch();
    },
    show: function(id) {
      var spot = this.spots.get(id);
      var spotView = new SpotView({model: spot});
      $("#container").html(spotView.render().el);
    },

    start: function(){
        Backbone.history.start();
    }
}));