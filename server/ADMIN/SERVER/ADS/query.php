<?php

include('../../../include/connect.php');

        $sql=mysql_query("select * from message where Status not like '%Seen%' order by ID asc");
        $comment_count=mysql_num_rows($sql);
        if($comment_count!=0)
        {
        echo $comment_count;
        }
        else {
            echo "0" ;
        }
      ?>