<?php
$newname = $_GET["newname"];
$dirnamefile = $_GET["dirnamefile"];
shell_exec("echo $newname > $dirnamefile");
?>
<script>
history.back()
</script>
