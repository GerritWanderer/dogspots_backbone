document.addEventListener("deviceready", onDeviceReady, false);
function onDeviceReady() {
  $(".spot_image_thumb").live("click", function(){
    navigator.camera.getPicture(onCameraSuccess, onCameraFail, { quality: 50,
      destinationType: Camera.DestinationType.DATA_URL
    });
  });
}
function onCameraSuccess(imageData) {
    var image = $(".spot_image_thumb")
    image.src = "data:image/jpeg;base64," + imageData;
}
function onCameraFail(message) {
    alert('Failed because: ' + message);
}
