#!/bin/bash
echo "Content-type: text/html"  
echo "" 

. document_parse_url.sh

echo '<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.0.min.js" charset="utf-8"></script>'
echo '<script type="text/javascript" src="../js/gk-base.js" charset="utf-8"></script>'

file_1_content=`cat ${FROM_path}.1.file`
file_2_content=`cat ${FROM_path}.2.file`
echo "
<div><textarea id='file1' rows='10' cols='200'>$file_1_content</textarea></div>
<div><textarea id='file2' rows='10' cols='200'>$file_2_content</textarea></div>
<button onclick='content_update()'>Save</button>
"
