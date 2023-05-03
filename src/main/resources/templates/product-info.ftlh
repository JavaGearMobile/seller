<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Seller</title>
</head>
<body>
    <h1>hello from seller!</h1>
    <h2>Product details</h2>
    <ul>
        <li>Product title ${product.title}</li>
        <li>Product description ${product.description}</li>
        <li>Product price ${product.price}</li>
        <li>Product city ${product.city}</li>
        <li>Product author ${product.author}</li>
    </ul>
    <form action="/product/remove/${product.id}" method="post">
        <button type="submit">Remove product</button>
    </form>
</body>
</html>