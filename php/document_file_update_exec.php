<?php
$update_num = $_GET["update_id"];
if ($update_num == 1) {
 $file_path = $_GET["file_path"];
 $file_val  = $_GET["file1_val"];
 echo $file_path;
 echo $file_val;
 $file_1_path = $file_path.'.1.file';
 
 file_put_contents($file_1_path,$file_val);
}

if ($update_num == 2) {
 $file_path = $_GET["file_path"];
 $file_val  = $_GET["file1_val"];
 echo $file_path;
 echo $file_val;
 $file_2_path = $file_path.'.2.file';

 file_put_contents($file_2_path,$file_val);
}

?>
