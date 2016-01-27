<?php
$file =  $_GET["file_path"];
$file_1 = $file.'.1.file';
$file_2 = $file.'.2.file';
$file_3 = $file.'.3.file';
rename($file_1,$file.'.1.file.bak');
rename($file_2,$file.'.2.file.bak');
rename($file_3,$file.'.3.file.bak');
$tmp_file_array = explode('/',$file);
$file_id = end($tmp_file_array);
array_pop($tmp_file_array);
$path = implode('/',$tmp_file_array);
$file_idx_file = $path.'/file.idx';
system("sed -i '/$file_id/d' $file_idx_file");
?>
<script>
  location.href=document.referrer
</script>
