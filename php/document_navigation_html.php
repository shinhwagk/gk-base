<?php
  system('cat ../data/dir.idx | while read line; do echo "<a href=?path=../data/$line>`cat ../data/$line/dir.name`</a>"; done');
?>
