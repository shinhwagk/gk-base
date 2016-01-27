<?php
 $text = $_POST["markdown_text"];
 #$text = urldecode($text);
 $file = $_POST["path"];
 file_put_contents($file,$text);
?>
