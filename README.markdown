# Hobo FCKeditor

This is a simple Rails plugin to be used in conjunction with [Hobo](http://hobocentral.net). It adds the ability to use the FCKeditor Rich Editor in place of simple textareas for fields with the type 'html'.

The plugin includes FCKeditor v2.6.3.


## Installing

Install with

    ruby script/plugin install git://github.com/GertThiel/hobofckeditor.git
    
The plugin has an install script which will copy some assets to your public directory (which is known to be buggy).
Please copy the assets inside the public folder of the plugin into the public folder of your application.

You then need to include the taglib, e.g. in application.dryml:

    <include src="hobofckeditor" plugin="hobofckeditor"/>

Finally you need to activate the JavaScript in any pages where you want the editor. To do this site wide, you can extend the `<page>` tag (in application.dryml):
    
    <extend tag="page">
      <old-page merge>
        <append-head:><fckeditor-assets /></append-head:>
      </old-page>
    </extend>

application.dryml is in your app/views/taglibs folder.
    
You should now have a FCKeditor Rich Editor for any `<input:foo>` where the field `foo` is declared with the `:html` type (HoboFields::HtmlString) in your model.


## Licensing

FCKeditor is available under the [GPL, LGPL and MPL open source licenses](http://www.fckeditor.net/license).

Hobo FCKeditor is available under the [MIT open source license](http://www.opensource.org/licenses/mit-license.php).


## The MIT License

Copyright (c) 2008 Gert Thiel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.


## More Information

For more information see: [FCKeditor](http://www.fckeditor.net/)

I used the code of [Hobo YUI](http://github.com/tablatom/hoboyui/) to quickstart this plugin. Thank you, Tom.
