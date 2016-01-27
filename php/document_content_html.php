<?php
  $dir_path = $_GET["path"];
  if(!empty($dir_path)){
    $fileIdx= $dir_path.'/file.idx';
    $fileList = file("$fileIdx");
    $record_number = count($fileList);

   if ($record_number > 0){
    echo "<table border='1' style='width:100%'>";
    foreach($fileList as $file){
     $file = str_replace("\n","",$file);

     $file_1_path = $dir_path.'/'.$file.'.1.file';
     $file_1_data = file_get_contents($file_1_path);

     $file_2_path = $dir_path.'/'.$file.'.2.file';
     $file_2_data = file_get_contents($file_2_path);

     $file_3_path = $dir_path.'/'.$file.'.3.file';
     echo "<tr><td><pre>".htmlEscape($file_1_data)."</pre></td><td><pre>$file_2_data</pre></td>";
     echo "<td><a href='document_markdown_view.php?markdown=$file_3_path' target='_blank' >view</a></td>";
/* admin */ echo "<td><a href='document_markdown_update.edit.php?markdown=$file_3_path' target='_blank'>edit</a></td>";
/* admin */ echo "<td><a href='document_file_update.php?file_path=$dir_path/$file'>OOOOOO</a></td>";
/* admin */ echo "<td><a href='document_file_delete.php?file_path=$dir_path/$file'>X</a></td>";
     echo "</tr>";
    }
    echo "</table>";
  }
}
function htmlEscape($string){
  $string = str_replace('<','&lt;',$string);
  $string = str_replace('>','&gt;',$string);
	return $string;
}
?>

