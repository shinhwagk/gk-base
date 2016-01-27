<button id="dir_add">新增</button>

<script>
$("#dir_add").click(function(){
  var dir_name = prompt("输入目录名:")
  if(dir_name === ""){//检查填入的目录名是否为空
    exit();
    alert("text");//测试是否继续执行
  }
  var path= "<?php echo $_GET["path"];?>"
  $.get("<?php echo 'document_dir_add_exec.edit.php' ?>?dir_path="+path+"&dir_name="+dir_name,function(data,status){
    if(status === "success"){
      location.reload() //刷新当前页面显示新建的目录
    }else{
      alert(status)
    }
  })
})
</script>
