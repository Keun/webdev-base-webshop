<?php
    include('core/header.php');
?>
Overzicht van producten met ProductNaam, ProductPrijs, ProductAfbeelding en ProductCategorie

<h2>Producten overzicht</h2>
<!-- Willekeurig 3 producten nodig; product naam, product prijs en categorie titel -->
<?php
$productsql = "SELECT product.name AS productName, product.price, category.name AS categoryName, product_image.image FROM product INNER JOIN category ON product.category_id = category.category_id INNER JOIN product_image ON product.product_id = product_image.product_id WHERE category.active = 1 AND product.active = 1";

$productqry = $con->prepare($productsql);
if($productqry === false) {
    echo mysqli_error($con);
} else{
    $productqry->bind_result($productName, $productPrice, $categoryNameProduct, $productImage);
    if($productqry->execute()){
        $productqry->store_result();
        while($productqry->fetch()){
            ?>
            <article>
                <h3><?php echo $productName;?></h3>
                <div>
                    <figure>
                        <img src="assets/upload/<?php echo $productImage;?>" alt="" />
                        <figcaption>Dit is een productafbeelding</figcaption>
                    </figure>
                    <?php echo $categoryNameProduct;?><br>
                    &euro; <?php echo $productPrice;?>
                </div>
            </article>
            <?php
        }
    }
    $productqry->close();
}
?>

<?php
    include('core/footer.php');
?>