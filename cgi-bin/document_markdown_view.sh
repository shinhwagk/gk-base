#!/bin/bash
echo "Content-type: text/html"
echo ""
  . parse_parameter_mk.sh
echo -n "
<meta charset='utf8' />
<script src='../document/js/epiceditor/js/epiceditor.js' type='text/javascript'></script>
<script src='http://code.jquery.com/jquery-2.2.0.min.js' type='text/javascript'></script>
<div style='display:none' id="show_optimization">
  <div id='epiceditor'></div>
  <textarea style='display:none' id='epiceditor_textarea'>`cat $par`</textarea>
</div>

"
echo -n "
<script>
var opts ={
        container: 'epiceditor',
        textarea: 'epiceditor_textarea',
        basePath: 'document/js/epiceditor',
        clientSideStorage: false,
        autogrow:{ minHeight:1 },
        button: {
           bar: false
       }
    }
var editor = new EpicEditor(opts).load();
previewer = editor.getElement('previewer');
var mathjax = previewer.createElement('script');
mathjax.type = 'text/javascript';
mathjax.src = 'http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=default';
previewer.body.appendChild(mathjax);
var config = previewer.createElement('script');
config.type = 'text/x-mathjax-config';
config.text = \"MathJax.Hub.Config({tex2jax: {inlineMath: [['$','$']], displayMath: [['$$','$$']], processEscapes:!0}});\";
previewer.body.appendChild(config);
editor.preview();
editor.on('preview', function() {
    editor.getElement('previewerIframe').contentWindow.eval(
        'MathJax.Hub.Queue([\"Typeset\",MathJax.Hub]);');
});
\$(\"#show_optimization\").show();//ç›´ćŽĄćľç¤şäĽšćś‰ćŠ–ĺŠ¨ďĽŚć‰€ä»Ąĺšć­¤ĺ…¨é¨čľ“ĺ‡şĺ®ŚćŻ•.ĺś
</script>
"
