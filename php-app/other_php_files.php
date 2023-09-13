<?php
// Sample PHP file
$products = [
    ['name' => 'Product 1', 'price' => 19.99],
    ['name' => 'Product 2', 'price' => 29.99],
    ['name' => 'Product 3', 'price' => 39.99],
];

// Output product information
foreach ($products as $product) {
    echo "<p>{$product['name']} - \${$product['price']}</p>";
}
?>
