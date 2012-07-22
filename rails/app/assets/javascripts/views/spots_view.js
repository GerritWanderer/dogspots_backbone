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
        this.$el.empty();
        this.collection.forEach(this.renderOne, this);
    },

    renderOne: function(spot){
        var spotView = new SpotView({model: spot});
        this.$el.append(spotView.render().el);
    }
});
