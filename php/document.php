<?php require 'document_path_check.php' ?>
<html>
<head>
  <script src="document/js/jquery-2.1.3.min.js" type="text/javascript"></script>
</head>
<body>
<?php require 'document_navigation_html.php' ?>
<hr>
<?php require 'document_breadcrumb_html.php' ?>
<table style="width:100%">
<!-- /* admin */ -->  <tr>
<!-- /* admin */ -->     <td style="width:20%">
<!-- /* admin */ --> <?php require 'document_dir_add.edit.php' ?>
<!-- /* admin */ -->     </td>
<!-- /* admin */ -->     <td style="width:80%">
<!-- /* admin */ -->       <button onclick="window.location.href='/document_file_add.edit.php?path=<?php echo $s_path;?>'">新增</button>
<!-- /* admin */ -->     </td>
<!-- /* admin */ -->  </tr>
  <tr>
     <td>
       <?php require 'document_dir_list_html.php' ?>
     </td>
    <td style="BORDER-LEFT: 1px solid;padding:15px;">
      <?php require 'document_content_html.php' ?>
    </td>
  </tr>
</table>
</body>
</html>
