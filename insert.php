<?php 
include_once('db_config.php');
session_start();
$i=0;
 if(!empty($_FILES['file']['name']))
{
    if($_FILES["file"]["size"] > 0)
    {
        $date = new DateTime();
        $date = $date->getTimestamp();
        $filename = explode('.',$_FILES["file"]["name"]) ;
        $exts = end($filename);
        $tmp_name = $_FILES["file"]["tmp_name"];
        $name1 = $date.".".$exts;
        $arr=$name1;
        $z=move_uploaded_file($tmp_name, "docs/".$name1);
      }
}else{

}
$file = fopen("docs/".$arr, "r");
 while (($getData = fgetcsv($file, 100000, ",")) !== FALSE)
	         {
	         	if($i!=0)
	         	{
 				$sql = "INSERT INTO `tbl_pill_list`(`name`, `protein`, `description`) VALUES ('".$getData[0]."','".$getData[1]."','".$getData[2]."')";
                $result1 = mysqli_query($con,$sql);
	         	}
				$i++;
      		}
if($result1)
{
        header('Location:index.php'); 
        $_SESSION['ok'] = 'UPLOAD SUCCESSFULL!';
}else{
    header('Location:upload.php');
        $_SESSION['ok'] = 'UPLOAD UN-SUCCESSFULL! PLEASE CHECK YOUR FILE FORMAT';
}
?>