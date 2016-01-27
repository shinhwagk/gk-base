<meta charset="utf8" />
<script src="document/js/epiceditor/js/epiceditor.js" type="text/javascript"></script>
<script src="document/js/jquery-2.1.3.min.js" type="text/javascript"></script>
<div style="display:none" id="show_optimization">
  <div id="epiceditor"></div>
    <textarea style="display:display" id="epiceditor_textarea"><?php $file_3 = $_GET["markdown"]; echo file_get_contents($file_3);?></textarea>
</div>
<script>
var h = 700
var opts ={
        container: 'epiceditor',
        textarea: 'epiceditor_textarea',
        basePath: 'document/js/epiceditor',
        clientSideStorage: false,
        autogrow:{
     		minHeight:h
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
config.text = "MathJax.Hub.Config({tex2jax: {inlineMath: [['$','$']], displayMath: [['$$','$$']], processEscapes: true}});";
previewer.body.appendChild(config);
editor.on('preview', function() {
    editor.getElement('previewerIframe').contentWindow.eval(
        'MathJax.Hub.Queue(["Typeset",MathJax.Hub]);');
});
$("#show_optimization").show();//直接显示会有抖动，所以做此全部输出完毕.在显示.

//function saveDocumentText(){
//  var documentText = encodeURIComponent(editor.exportFile())
//  var url = "document_markdown_update_exec.edit.php?path=<?php echo $_GET["markdown"]; ?>&markdown_text="+documentText
//  $.post(url,function(data,status){ if(status !== "success"){alert(status)}})
//}
setInterval(saveDocumentText,3000)


function saveDocumentText(){
 var documentText = editor.exportFile();
$.post("document_markdown_update_exec.edit.php",
  {
    path:"<?php echo $_GET["markdown"]; ?>",
    markdown_text:documentText
  },
  function(data,status){if(status !== "success"){alert(status)} });
}
</script>

