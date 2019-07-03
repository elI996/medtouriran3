function tinymce_init_callback(editor)
{
      editor.remove();
      editor = null;

       tinymce.init({
        menubar: true,
        selector:'textarea.richTextBox',
        skin: 'voyager',
        min_height: 600,
        resize: 'vertical',
        plugins: 'link, image, code, youtube, giphy, table, textcolor, lists',
        external_plugins: {
          'template': '/vendor/tcg/voyager/assets/js/plugins/template/plugin.js',
      },
        extended_valid_elements : 'input[id|name|value|type|class|style|required|placeholder|autocomplete|onclick]',
        file_browser_callback: function(field_name, url, type, win) {
                if(type =='image'){
                  $('#upload_file').trigger('click');
                }
            },
        toolbar: 'template |styleselect bold italic underline | forecolor backcolor | alignleft aligncenter alignright | bullist numlist outdent indent | link image table youtube giphy | code | fontsizeselect',
        convert_urls: false,
        image_caption: true,
        image_title: true,
        templates : [
                        {
                          title: "Services Template",
                          url: "http://127.0.0.1:8000/vendor/tinymce/templates/services-en.html",
                          description: "Services Template English"
                        },
                        {
                          title: "Package Template",
                          url: "http://127.0.0.1:8000/vendor/tinymce/templates/package-en.html",
                          description: "Services Template English"
                        },
                        {
                          title: "Procedure Template",
                          url: "http://127.0.0.1:8000/vendor/tinymce/templates/procedure-en.html",
                          description: "Services Template English"
                        }
                     ],
      });
}