<?php

  if(!empty($s_path)){
    $dir_path_str_array = array_slice(explode("/", $s_path),2);
    $href_dir_path="";
    foreach($dir_path_str_array as $dir_path){
      $href_dir_path = $href_dir_path.'/'.$dir_path;
      $dir_name = exec("cat "."../data$href_dir_path"."/dir.name");
      $link = "<a href='?path=../data$href_dir_path'>$dir_name</a>";
      echo '/'.$link;
    }
      echo "</h3> | <button onclick='dir_rename()'>U</button><button onclick='dir_move()'>M</button><button>D</button>";
  }
?>
<script>
function dir_rename(){
  var new_dir_name = prompt("New Name:")
  window.location.href="document_dir_rename.edit.php?newname="+new_dir_name+"&dirnamefile=<?php echo "../data$href_dir_path/dir.name"; ?>"
}
function dir_move(){
  var new_dir_location = prompt("New Location:")
  alert('<?php echo $href_dir_path;?>')
}
</script>
