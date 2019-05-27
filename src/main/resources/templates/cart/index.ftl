<html xmlns="http://www.w3.org/1999/html">

<#include "../partials/_header.ftl">
<body>
<div class="container ">
    <#include "../partials/_nav.ftl">
    <h1 align="center" class="display-4 mb-5">Моя корзина</h1>

<#--Cart Detail Table-->
    <table class="table table-striped text-center">
        <thead>
        <tr>
            <th scope="col">Фото</th>
            <th scope="col">Название</th>
            <th scope="col">Цена</th>
            <th scope="col">Количество</th>
            <th scope="col">Сумма</th>
            <th scope="col">Действие</th>

        </tr>
        </thead>
        <tbody>
        <#list items as item>
        <tr>
            <th class="align-middle" scope="row">
                <img height="100px" src="${item.getProductInfo().getProductIcon()}">
            </th>
            <td class="align-middle">${item.getProductInfo().getProductName()}</td>
            <td class="align-middle">${item.getProductInfo().getProductPrice()?string.сом}</td>
            <td class="align-middle">
                <a href="/cart/change?product_id=${item.getProductInfo().getProductId()}&quantity=${item.getQuantity()-1}"><i
                        class="fas fa-minus"></i></a>
                <input min="1" id="${item.getProductInfo().getProductId()}"
                       max="${(productInfo.getProductStock())!"1"}" type="text" size="5" value="${item.getQuantity()}"
                       name='count' onkeyup="change(this)">
                <a href="/cart/change?product_id=${item.getProductInfo().getProductId()}&quantity=${item.getQuantity()+1}">
                    <i class="fas fa-plus"></i></a>
            </td>
            <td class="align-middle">${(item.getProductInfo().getProductPrice() * item.getQuantity())?string.сом}</td>
            <td class="align-middle">
                <a href="/cart/remove?product_id=${item.getProductInfo().getProductId()}">Удалить</a>
            </td>

        </tr>
        </#list>
        </tbody>
    </table>

<#--Check Out -->
    <#if items?has_content >
        <div>
            <h5 style="display: inline;">Итог: ${total?string.сом}</h5>
            <form action ="/cart/checkout" method="post">
                <button type="submit" class="btn btn-warning float-right">Заказать</button>
            </form>
        </div>
    <#else>
    <#--Empty Cart-->
        <div>
            <h4 class="text-muted text-center">Корзина пустая</h4>
        </div>
    </#if>



</div>
<#include "../partials/_footer.ftl">
</body>
<script>
    var timeout = null;
    function change(element)
    {   clearTimeout(timeout);
        var quantity = element.value;
        var id = element.id;
        var theUrl = "/cart/change?product_id=" + id + "&quantity=" + quantity;
        timeout = setTimeout(function(){location.href = theUrl} , 1000);
    }
</script>

</html>
