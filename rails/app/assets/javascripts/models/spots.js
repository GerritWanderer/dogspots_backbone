window.Spot = Backbone.RelationalModel.extend({
  urlRoot: 'http://0.0.0.0:3000/spots',
  idAttribute: 'id',
  relations: [{
    type: Backbone.HasMany,
    key: 'comments',
    relatedModel: 'window.Comment',
    reverseRelation: {
      key: 'spot',
      includeInJSON: 'id',
    },
  },{
    type: Backbone.HasMany,
    key: 'spot_images',
    relatedModel: 'window.SpotImages',
    reverseRelation: {
      key: 'spot',
      includeInJSON: 'id',
    },
  }]
});
