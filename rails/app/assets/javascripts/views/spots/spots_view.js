window.SpotsView = Backbone.View.extend({
  initialize: function(){
    this.collection.on('add', this.renderOne, this);
    this.collection.on('reset', this.renderAll, this);
  },

  render: function(){
    this.renderAll()
    return this;
  },
  renderAll: function(){
    this.$el.html($('<ul data-role="listview"></ul>'));
    this.collection.forEach(this.renderOne, this);
  },
  renderOne: function(spot){
    var spotView = new SpotIndexView({model: spot});
    $($(this.$el).children("ul")).append(spotView.render().el);
  }
});
