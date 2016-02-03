/*
 * add dir click
 */
function dir_add(path){
  var dir_name = prompt("Dir Name: ")
    if( dir_name === null ){
      alert(path)
    }else{
      $.get("document_w_dir_add.sh?path="+path+"&name="+dir_name+"&opt=dir_add",function(data,status){
        if(status === "success"){
          alert(data)
          location.reload() //刷新当前页面显示新建的目录
        }else{
          alert(status)
        }
     })
   }
}

function dir_del(path){
  if (confirm("你确定提交吗？")) {  
            alert("点击了确定");  
        }  
        else {  
            alert("点击了取消");  
        }
}
/*
 * content operation
 */
function content_add(path){
  alert(path)
}
