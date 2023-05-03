<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
          name="viewport">
    <meta content="ie=edge" http-equiv="X-UA-Compatible">
    <title>Seller</title>
</head>
<body>
    <h1>hello from seller!</h1>
    <h2>List of Products</h2>
    <#list products as product >
        <ul>
            <li>
                <h4>${product.title}</h4>
                <small>${product.price}</small>
                <div>
                    <a href="/product/${product.id}">Details</a>
                </div>
            </li>
        </ul>
    </#list>
    <h3>Create new product</h3>
    <form action="/product/create" method="post">

        <h4>Product title:</h4>
        <input name="title" type="text"/><br><br>

        <h4>Product description:</h4>
        <input name="description" type="text"/><br><br>

        <h4>Product price:</h4>
        <input name="price" type="number"/><br><br>

        <h4>Product city:</h4>
        <input name="city" type="text"/><br><br>

        <h4>Product author:</h4>
        <input name="author" type="text"/><br><br>

        <input type="submit" value="Add product" />
    </form>
</body>
</html>