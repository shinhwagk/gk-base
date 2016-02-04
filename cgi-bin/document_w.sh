#!/bin/bash
echo '<tr><td>'
echo "
<div>
  <button onclick=\"javascript:dir_add('${FROM_path}')\">add</button>
  <button id='dir_add'>rename</button>
  <button id='dir_add'>move</button>
  <button onclick=\"javascript:dir_del('${QUERY_STRING:5}')\">del</button>
</div>"
echo '</td>'
echo '<td>'
echo "<div>
        <button onclick=\"javascript:content_add('${FROM_path}')\">add</button>
      </div>"
echo '</td></tr>'
