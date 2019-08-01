<?php include('../../../include/connect.php') ?>
<style type="text/css">
<!--

a:link {
  color: #000000;
  text-decoration: none;
}
a:visited {
  text-decoration: none;
  color: #000000;
}
a:hover {
  text-decoration: none;
  color: #000000;
}
a:active {
  text-decoration: none;
  color: #000000;
}
-->
</style>

<script>
function myFunction()
{
        var printButton = document.getElementById("printpagebutton");
        printButton.style.visibility = 'hidden';
        printButton.style.visibility = 'hidden';
        window.print()
}

</script>
    
<!-- sdas -->


  
   
<a href="" id="printpagebutton" onclick="myFunction()">Print</a>

                    <div align="center" style="margin-top:40px; height:80px;"><img src="../../../../img/dreamstar.gif" width="355" height="101"><br /> 
 <B>Assigned Equipments Report</B> </div>
 <br/>
 <br/> <br/> <br/> <br/>
<table border="1" align="center" cellpadding="0" cellspacing="0" style="width:100%">
   <?php

              function formatMoney($number, $fractional=false) {
                if ($fractional) {
                  $number = sprintf('%.2f', $number);
                }
                while (true) {
                  $replaced = preg_replace('/(-?\d+)(\d\d\d)/', '$1,$2', $number);
                  if ($replaced != $number) {
                    $number = $replaced;
                  } else {
                    break;
                  }
                }
                return $number;
              } 
        ?>
          <thead>
            <tr bgcolor="#cccccc" style="margin-bottom:10px;">

              <th><div align="center">Item Type</div></th>
               <th><div align="center">Employee</div></th>
                <th><div align="center">Item Code</div></th>
                <th><div align="center">Description</div></th>
                <th><div align="center">Price</div></th>
            </tr>
          </thead>
          <tbody>
      <?php
          $query = mysql_query("select * from tb_equipment");                
            while($row = mysql_fetch_array($query))
              {
                $item=$row['item_category'];
            $query1= mysql_query("select * from item_category where category_id='$item'");
            $row1=mysql_fetch_array($query1);
                  echo '<tr>';
                  echo '<td><div align="center">'.$row1['item_name'].'</div></td>';
                  echo '<td><div align="center">'.$row['employee_id'].'</div></td>';
                  echo '<td><div align="center">'.$row['item_code'].'</td>';
                   echo '<td><div align="center">'.$row['item_name'].'</td>';
                    echo '<td><div align="center">$'.formatMoney($row['price'],2).'</td>';
                  echo '</tr>';
                  }
        
      ?>
         
          
          </tbody>
</table>
                 