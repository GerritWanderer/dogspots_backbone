window.Dogspots = new (Backbone.Router.extend({
  routes: {
    "": "index",
    "spots/:id": "show",
    "new": "newSpot"
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
    this.commentsView = new CommentsView({collection: this.spot.get("comments")});
    $("#container").html(this.spotView.render().el);
    $('#container').append(this.commentsView.render().el);
    this.spot.fetch();
  },
  newSpot: function(id) {
    this.spotNewView = new SpotNewView({collection: this.spots});
    $("#container").html(this.spotNewView.render().el)
  },

  start: function(){
    Backbone.history.start();
  }
}));
