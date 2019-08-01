<?php
include('include/connect.php');
        $sql=mysql_query("select * from reply_message where CustomerID='$ses_id' and Status not like '%Seen%' order by Primary_key asc");
        $comment_count=mysql_num_rows($sql);
        if($comment_count!=0)
        {
        echo $comment_count;
        }
        else {
            echo "0" ;
        }
      ?>