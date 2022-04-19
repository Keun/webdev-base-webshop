<?php
    
    // onderstaand bestand wordt ingeladen
    include('../core/header.php');
    include('../core/checklogin_admin.php');
?>

<h1>Product toevoegen</h1>

<?php
    if (isset($_POST['product_name']) && $_POST['product_name'] != "") {
        $product_name = $con->real_escape_string($_POST['product_name']);
        $price = $con->real_escape_string($_POST['price']);
        $category = $con->real_escape_string($_POST['category']);

        $liqry = $con->prepare("INSERT INTO product (name,category_id,price) VALUES (?,?,?)");
        if($liqry === false) {
           echo mysqli_error($con);
        } else{
            $liqry->bind_param('sss',$product_name,$category,$price);
            if($liqry->execute()){
                echo "Toegevoegd.";
                
            }else{
                echo mysqli_error($con);
            }
        }
        $liqry->close();

    }
?>

<form action="" method="POST">
product naam: <input type="text" name="product_name" value=""><br><br>
product prijs: <input type="number" name="price" value=""><br><br>
product categorie: <input type="text" name="category" value=""><br><br>
<input type="submit" name="submit" value="Toevoegen">
</form>



<?php
    include('../core/footer.php');
?>
