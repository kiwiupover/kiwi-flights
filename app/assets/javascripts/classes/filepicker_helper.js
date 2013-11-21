App.FilepickerHelper = {
  openPicker: function(modelToUpdate, fieldToSet) {
    filepicker.pick({
      mimetype: 'image/*',
      maxSize: 12*1024*1024, //12 megabytes
      services: ['COMPUTER', 'INSTAGRAM', 'FACEBOOK', 'FLICKR', 'PICASA', 'DROPBOX', 'WEBCAM'],
      openTo: 'COMPUTER'
    },function(fpfile){
      modelToUpdate.set(fieldToSet, fpfile.url);
    });
  }
}
