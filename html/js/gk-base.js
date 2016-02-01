/*
 * add dir click
 */
function dir_add(path){
  var dir_name = prompt("Dir Name: ")
    if( dir_name === null ){
      alert(path)
    }else{
      $.get("document_w_dir_add.sh?path="+path+"&name="+dir_name,function(data,status){
        if(status === "success"){
alert(data)
          location.reload() //刷新当前页面显示新建的目录
        }else{
          alert(status)
        }
     })
   }
}
/*
 * content operation
 */
$(document).ready(function(){
  $("#content_del").click(function(){
    alert("abc1")
  });
  $("#content_add").click(function(){
    
    alert("abc2")
  });
  $("#content_update").click(function(){
    alert("abc2")
  });
  $("#content_move").click(function(){
    alert("abc2")
  });
});

/*
* rename dir click
*  */


