<?php
  $s_path = $_GET["path"];
  exec('date +%s',$output);
  $file_1 = $s_path."/"."$output[0]".".1.file";
  $file_2 = $s_path."/"."$output[0]".".2.file";
  $file_3 = $s_path."/"."$output[0]".".3.file";
  shell_exec("touch $file_1");
  shell_exec("touch $file_2");
  shell_exec("touch $file_3");
  shell_exec("echo $output[0] >> $s_path/file.idx");
?>
<script>
  location.href=document.referrer
</script>
