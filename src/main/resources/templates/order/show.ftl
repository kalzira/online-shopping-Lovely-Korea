<html>
<#--<html>-->
<#--<meta name="viewport" content="width=device-width, initial-scale=1">-->

<#--<link rel="stylesheet" type="text/css" href="/styles/bootstrap4/bootstrap.min.css">-->
<#--<link href="https://fonts.googleapis.com/css?family=Oswald&display=swap" rel="stylesheet">-->

<#--<link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/owl.carousel.css">-->
<#--<link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">-->
<#--<link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/animate.css">-->
<#--<link rel="stylesheet" type="text/css" href="/styles/main_styles.css">-->
<#--<link rel="stylesheet" type="text/css" href="/styles/responsive.css">-->
<#include "../partials/_header.ftl">
<body>
<div class="container ">
    <#include "../partials/_nav.ftl">
    <h3 align="center">Детали заказа</h3>

<#--Cart Detail Table-->
    <table class="table table-striped text-center">
        <thead>
        <tr>
            <th scope="col">Фото</th>
            <th scope="col">Название</th>
            <th scope="col">Описание</th>
            <th scope="col">Цена</th>
            <th scope="col">Количество</th>
            <th scope="col">Сумма</th>

        </tr>
        </thead>
        <tbody>
        <#list items as item>
        <tr>
            <th class="align-middle" scope="row">
                <img height="100px" src="${item.getProductIcon()}">
            </th>
            <td class="align-middle">${item.getProductName()}</td>
            <td class="align-middle">${item.getProductDescription()}</td>
            <td class="align-middle">${item.getProductPrice()}сом</td>
            <td class="align-middle">${item.getProductQuantity()}</td>
            <td class="align-middle">${(item.getProductPrice() * item.getProductQuantity())}сом</td>
        </tr>
        </#list>
        </tbody>
    </table>
</div>
<#include "../partials/_footer.ftl">
</body>
</html>
