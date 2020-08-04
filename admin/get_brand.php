<?php
include('include/config.php');
if(!empty($_POST["subcat_id"])) 
{
 $id=intval($_POST['subcat_id']);
$query=mysqli_query($con,"SELECT * FROM brand WHERE subcategoryId=$id");
?>
<option value="">Select Product Brand</option>
<?php
 while($row=mysqli_fetch_array($query))
 {
  ?>
  <option value="<?php echo htmlentities($row['id']); ?>"><?php echo htmlentities($row['productCompanyName']); ?></option>
  <?php
 }
}
?>