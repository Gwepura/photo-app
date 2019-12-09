class Dropbox
  constructor: -> 
    @options =
      success: @success
      cancel: ->
        # Do something
      linkType: 'direct'
      multiselect: true
      extentsions: [
        '.jpg'
        '.png'
        '.gif'
      ]
    @bind()
    
  bind: ->
    @(document).on 'click', '#dropbox', =>
      window.Dropbox.choose(@options)
  
  success: (files) =>
    @upload file.link for file in files
    
  upload: (file_path) ->
    @.post("/images",
      remote_image_url: file_path
    ).done (images) -> 
      console.log images