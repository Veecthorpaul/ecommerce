
<?php
include('include/config.php');
$categories=$_GET["categories"];
$subcategory= $_GET["subcategories"];


if($categories!="")
{
    $query=mysqli_query($con,"SELECT * FROM subcategory WHERE categoryid=$countries");
    echo "<select id='subcategorydd' onchange='change_subcategory()'>";
    echo "<option>"; echo "Select Subcategory"; echo "</option>";
     while($row=mysqli_fetch_array($query))
     {
         echo "<option value='$row[id]' selected >"; echo $row['subcategoryName']; echo "</option>";
     }
    echo "</select>";
}


if($subcategories!="")
{
    $query=mysqli_query($con,"SELECT * FROM brands WHERE subcategoryid=$subcategories");
    echo "<select>";
    echo "<option>"; echo "Select"; echo "</option>";
    
     while($row=mysqli_fetch_array($query))
     {
         echo "<option value='$row[id]' selected >"; echo $row['productCompany']; echo "</option>";
     }
    echo "</select>";
}

?>
