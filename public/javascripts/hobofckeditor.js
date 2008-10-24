Event.addBehavior({
    'textarea.html' : function() {
        var ed = new FCKeditor( this.id );
        ed.BasePath = "/javascripts/fckeditor/";
        ed.ReplaceTextarea();
    }
})