<?php
$file = $_GET["file_path"];
?>
<div>
  <textarea id="file1" rows="10" cols="200"><?php echo file_get_contents($file.".1.file") ?></textarea>
</div>
<div>
  <textarea id="file2" rows="10" cols="200"><?php echo file_get_contents($file.".2.file") ?></textarea>
</div>
 <button onclick="file_tot_save()">Save</button>


<script>
function file_tot_save(){
  save_file_1();
  save_file_2();
  location.href=document.referrer
}

 function save_file_1(){
  var file_1_val = encodeURIComponent(document.getElementById("file1").value)
  var file_path = "<?php echo $file;?>"
  var url = "document_file_update_exec.php?update_id=1&file_path="+file_path+"&file1_val="+file_1_val
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.onreadystatechange=saveecho
  xmlhttp.open("GET",url,true);
  xmlhttp.send(null);

  function saveecho(){
    if (xmlhttp.readyState==4 || xmlhttp.readyState=="complete"){
      //location.href=document.referrer
null
    }
  }
}

 function save_file_2(){
  var file_2_val = encodeURIComponent(document.getElementById("file2").value)
  var file_path = "<?php echo $file;?>"
  var url = "document_file_update_exec.php?update_id=2&file_path="+file_path+"&file1_val="+file_2_val
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.onreadystatechange=saveecho
  xmlhttp.open("GET",url,true);
  xmlhttp.send(null);
  function saveecho(){
    if (xmlhttp.readyState==4 || xmlhttp.readyState=="complete"){
    //  location.href=document.referrer
null
    }
  }
}
</script>
