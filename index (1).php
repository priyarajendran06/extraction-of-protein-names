<!DOCTYPE HTML>
<?php
include_once('db_config.php');
$sql = "SELECT * FROM `tbl_pill_list` WHERE `status` = 1 ";
$result = mysqli_query($con,$sql);
if(isset($_GET['med']))
{
    $sql1 = "SELECT * FROM `tbl_pill_list` WHERE `name` LIKE '%".$_GET['med']."%' OR `protein` LIKE '%".$_GET['med']."%' OR `description` LIKE '%".$_GET['med']."%' ";
    $result1 = mysqli_query($con,$sql1);
    $num=mysqli_num_rows($result1);
}else{   }
 ?>
<html>

<head>
  <title>colour_green</title>
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">Protein_<span class="logo_colour">names</span></a></h1>
          <h2>with their description</h2>
        </div>
      </div>
    </div>
    <div id="site_content" class="text-center">
      <div id="">
        <!-- insert the page content here -->
        <h1>Extraction of protein names</h1>
        <p>Enter A Medicine Name Below to know about it</p>
        <form action="index.php" method="GET">
          <input  type="text" name="med" id="med" list="meds" class="form-control" required="">
        <datalist id="meds">
          <?php while($row = mysqli_fetch_array($result)){ ?>
            <option><?php echo $row['name']; ?></option>
          <?php } ?>
        </datalist>
        <button type="submit" class="submit" name="search" value="1">Submit</button>
        </form>
        <?php if(isset($_GET['med']))
        { if($num != 0){ ?>
        <br>
        <h2>Search Results For <b>'<?php echo $_GET['med']; ?>'</b></h2>
        <table>
          <thead>
            <th>Name</th>
            <th>Proteins</th>
            <th>Description</th>
          </thead>
          <tbody>
            <?php while($detail = mysqli_fetch_array($result1)){ ?>
            <tr>
            <td><?php echo $detail['name']; ?></td>
            <td><?php echo $detail['protein']; ?></td>
            <td><?php echo $detail['description']; ?></td>
            </tr>
          <?php } ?>
          </tbody>
        </table>
      <?php }else{ ?> 

        <h2>Sorry! No Details for your Search.</h2>
      <?php } } ?>
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
       </a>
    </div>
  </div>
</body>
</html>
