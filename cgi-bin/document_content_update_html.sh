#!/bin/bash
echo "Content-type: text/html"  
echo "" 

echo "
<div>
  <textarea id='file1' rows='10' cols='200'>a</textarea>
</div>
<div>
  <textarea id='file2' rows='10' cols='200'>b</textarea>
</div>
 <button onclick='file_tot_save()'>Save</button>
"
