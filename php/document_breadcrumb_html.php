<?php
  system("/bin/bash document_breadcrumb_html.sh $s_path");
  echo " | <button onclick='dir_rename()'>U</button><button onclick='dir_move()'>M</button><button>D</button>";
?>
<script>
function dir_rename(){
  var new_dir_name = prompt("New Name:")
  window.location.href="document_dir_rename.edit.php?newname="+new_dir_name+"&dirnamefile=<?php echo "$s_path/dir.name"; ?>"
}
function dir_move(){
  var new_dir_location = prompt("New Location:")
  alert('<?php echo $s_path;?>')
}
</script>
