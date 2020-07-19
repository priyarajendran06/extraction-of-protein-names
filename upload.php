<!DOCTYPE HTML>
<?php
include_once('db_config.php');
session_start();
 ?>
<html>

<head>
  <title>Protein Names</title>
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
</head>

<body>
<?php include_once 'include/header.php'; ?>
    <div id="site_content" class="text-center">
        <!-- insert the page content here -->
        <h1>Upload A .CSV file</h1>
        <form action="insert.php" method="POST" enctype="multipart/form-data"> 
          <?php if(isset($_SESSION['ok'])) { ?>
        <h4 style="color: red"><?php print_r($_SESSION['ok']); unset($_SESSION['ok']); ?></h4>
      <?php } ?>
          <input type="file" name="file" accept=".csv" required="">
        <button type="submit" class="submit" name="search" value="1">Submit</button>
        </form>
    </div>
</body>
</html>
