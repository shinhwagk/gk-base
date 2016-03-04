/*
 * Dir Operation
 */
//add
function dir_add(path){
  var dir_name = prompt("Dir Name: ")
    if( dir_name === null ){
      alert(path)
    }else{
      $.get("document_w_dir.sh?path="+path+"&name="+dir_name+"&opt=dir_add",function(data,status){
        if(status === "success"){
          location.reload() //刷新当前页面显示新建的目录
        }else{
          alert("error: " + status)
        }
     })
   }
}
//del
function dir_del(path){
  if (confirm("你确定提交吗？")) {  
   $.get("document_w_dir.sh?path="+path+"&opt=dir_del",function(data,status){
        if(status === "success"){
          self.location="document.sh?path="+data;
        }else{
          alert("error: " + status)
        }
     })
  } else {  
    alert("点击了取消");  
  }
}

/*
 * Content 0peration
 */
//add
function content_add(path){
  $.get("document_w_content.sh?path="+path+"&opt=content_add",function(data,status){
    if(status === "success"){
      location.reload() //佈·彖°弾S佉~M页轝¢彘¾示彖°建潚~D潛®弾U
    }else{
      alert("error: " + status)
    }
  })
}

//update
function content_update(){
  alert($("#file1").val)
}
