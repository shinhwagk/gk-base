
<?php
  $new_dir = $_GET["dir_path"];
  $dir_name = $_GET["dir_name"];
  if(!empty($new_dir) && !empty($dir_name)){

    exec('date +%s',$output);
    mkdir($new_dir.'/'.$output[0]);
    shell_exec("echo $output[0] >> $new_dir'/dir.idx'");

    $new_file=fopen($new_dir.'/'.$output[0].'/file.idx', "w") or die("Unable to open file!");
    fclose($new_file);
    $new_dir_path = $new_dir.'/'.$output[0].'/dir.name';
    shell_exec("echo '$dir_name' > $new_dir_path");
  }

?>
