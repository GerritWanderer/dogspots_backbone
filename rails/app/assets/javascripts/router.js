window.Dogspots = new (Backbone.Router.extend({
    routes: {
        "": "index",
        "spots/:id": "show"
    },    
    initialize: function(){
        this.spots = new Spots();
        this.spotsView = new SpotsView({collection: this.spots});
        this.spotsView.render();
    },

    index: function(){
        $('#container').html(this.spotsView.el);
        this.spots.reset($("#container").data("spots"));
    },
    show: function(id) {
      this.spot = new window.Spot({id: id});
      this.spotView = new SpotShowView({model: this.spot});
      $("#container").html(this.spotView.render().el);
      this.spot.fetch();
      this.commentsView = new CommentsView({collection: this.spot.get("comments")});
      this.commentsView.render();
      $('#container').append(this.commentsView.el);
    },

    start: function(){
        Backbone.history.start();
    }
}));