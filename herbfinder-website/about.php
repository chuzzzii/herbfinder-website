<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>about</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- custom admin css file link  -->
    <link rel="stylesheet" href="css/style.css">

</head>

<body>

    <?php @include 'header.php'; ?>

    <section class="heading">
        <h3>about us</h3>
        <p> <a href="home.php">home</a> / about </p>
    </section>


    <section class="about">
        <div class="section-heading">
            <h3>ABOUT US</h3>
            <h4>Welcome to our online herb plant shop</h4>

            <p>In general use, “Herbs” are any plants used for food, flavoring, medicine, or fragrances for their savory
                or
                aromatic properties. Culinary use typically distinguishes herbs from spices. Herbs have a variety of
                uses
                including culinary, medicinal, and in some cases, spiritual. General usage of the term “herb” differs
                between
                culinary herbs and medicinal herbs. In medicinal or spiritual use any of the parts of the plant might be
                considered “herbs”, including leaves, roots, flowers, seeds, root bark and inner bark.
            </p>
        </div>

        <div class="flex">

            <div class="image">
                <img src="images/b1.png" width="200" alt="">
            </div>

            <div class="content">
                <h3>Perfect service</h3>
                <p>Based on the local countryside, we have been collecting and distributing superior quality
                    herbs
                    straight your door step.</p>
                <a href="shop.php" class="btn">shop now</a>
            </div>

        </div>

        <div class="flex">

            <div class="image">
                <img src="images/b2.png" alt="">
            </div>

            <div class="content">
                <h3>Effective Herbs</h3>
                <p>Herbs improves vitality and provides strength.
                    They boost your immunity and increase your natural power of healing.</p>
                <a href="contact.php" class="btn">contact us</a>
            </div>

        </div>


        <div class="flex">

            <div class="image">
                <img src="images/b3.png" alt="">
            </div>

            <div class="content">
                <h3>100% Natural</h3>
                <p>We collect medicinal herbs from farmers who grow them naturally at their home gardens.
                </p>
                <a href="home.php" class="btn">shop here</a>
            </div>

        </div>


        <div class="flex">

            <div class="image">
                <img src="images/b4.png" alt="">
            </div>

            <div class="content">
                <h3>Fresh Arrivals</h3>
                <p>We take special care to ensure that all herbs ordered online arrive at your door in a
                    fresh
                    condition
                    .</p>


            </div>

        </div>
    </section>












    <?php @include 'footer.php'; ?>

    <script src="js/script.js"></script>

</body>

</html>