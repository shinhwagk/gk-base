<?php
$path = $_GET["path"];
$all_dir = shell_exec("/bin/find ../data -type d");
$dir_array = explode("\n",$all_dir);

$tmp_check_var = 0;
foreach($dir_array as $dir) {
  if ($dir == $path){
    $tmp_check_var = 1;
  }
}

if($tmp_check_var == 0){
    exit("你提供的路径不存在");
}else{
    $s_path = $path;
}
?>
