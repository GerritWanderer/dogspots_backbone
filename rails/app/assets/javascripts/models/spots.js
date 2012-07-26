window.Spot = Backbone.RelationalModel.extend({
  urlRoot: '/spots',
  idAttribute: 'id',
  relations: [{
    type: Backbone.HasMany,
    key: 'comments',
    relatedModel: 'window.Comment',
    reverseRelation: {
      key: 'spot',
      includeInJSON: 'id',
    },
  }]
});
