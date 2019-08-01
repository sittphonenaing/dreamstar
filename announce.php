<?php

include('include/connect.php');

        $sql=mysql_query("select * from tb_announcement where status not like '%seen%' order by announcementID asc");
        $comment_count=mysql_num_rows($sql);
        if($comment_count!=0)
        {
        echo $comment_count;
        }
        else {
        	echo "0" ;
        }
      ?>