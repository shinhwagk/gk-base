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
  <tr>
     <td style="width:30%">
       <?php require 'document_dir_list_html.php' ?>
     </td>
    <td style="BORDER-LEFT: 1px solid;padding:15px;width:70%">
      <?php require 'document_content_html.php' ?>
    </td>
  </tr>
</table>
</body>
</html>
