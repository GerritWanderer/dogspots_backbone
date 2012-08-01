window.SpotNewView = Backbone.View.extend({
  template: HandlebarsTemplates['spots/new'],

  events: {
    "submit #new-spot": "save"
  },
  initialize: function(){
    this.model = new this.collection.model();

    try {
      navigator.geolocation.getCurrentPosition(onGeolocationSuccess, onGeolocationError);
    } catch(error) {}

    $("form .spot_image_thumb").live("click", function(){
      navigator.camera.getPicture(onCameraSuccess, onCameraFail, {
        quality: 50,
        destinationType: Camera.DestinationType.DATA_URL,
        sourceType : Camera.PictureSourceType.PHOTOLIBRARY
      });
    });
  },

  save: function(e){
    e.preventDefault();
    attributes = {
      spot: Backbone.Syphon.serialize(this),
      spot_image: $(".spot_image_thumb").attr("src")
    };
    this.collection.create(attributes, {
      success: function (model, response) {
        $("form .spot_image_thumb").die("click") // remove camera event-handler
        this.model = model
        Backbone.history.navigate("spots/"+this.model.get('id'), true)
      }
    })
  },

  render: function(){
  this.$el.html(this.template(this.model.toJSON()));
  return this;
  }
});



function onCameraSuccess(imageData) {
  $(".spot_image_thumb").attr("src", "data:image/jpeg;base64," + imageData);
}
function onCameraFail(message) {
  alert('Failed because: ' + message);
}
function onGeolocationSuccess(position) {
  $("#latitude").val(position.coords.latitude);
  $("#longitude").val(position.coords.longitude);
};
function onGeolocationError(error) {
    alert('code: '    + error.code    + '\n' +
          'message: ' + error.message + '\n');
}