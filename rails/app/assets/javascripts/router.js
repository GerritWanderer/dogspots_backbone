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
        this.spots.reset($("#container").data("spots"));
    },
    show: function(id) {
      var spot = new window.Spot({id: id});
      var spotView = new SpotShowView({model: spot});
      $("#container").html(spotView.render().el);
      spot.fetch();
    },

    start: function(){
        Backbone.history.start();
    }
}));