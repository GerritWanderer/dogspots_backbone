window.CommentsView = Backbone.View.extend({

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

    renderOne: function(comment){
        var commentView = new CommentView({model: comment});
        this.$el.append(commentView.render().el);
    }
});
