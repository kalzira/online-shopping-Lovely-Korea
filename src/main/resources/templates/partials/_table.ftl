
<html>
<#--<meta name="viewport" content="width=device-width, initial-scale=1">-->

<#--<link rel="stylesheet" type="text/css" href="/styles/bootstrap4/bootstrap.min.css">-->
<#--<link href="https://fonts.googleapis.com/css?family=Oswald&display=swap" rel="stylesheet">-->

<#--<link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/owl.carousel.css">-->
<#--<link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">-->
<#--<link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/animate.css">-->
<#--<link rel="stylesheet" type="text/css" href="/styles/main_styles.css">-->
<#--<link rel="stylesheet" type="text/css" href="/styles/responsive.css">-->

<table id="table" class="table table-striped text-center" style="width:100%;">
    <thead>
    <tr>

        <th scope="col">Фото</th>
        <th scope="col">Код</th>
        <th scope="col">Название</th>
        <th scope="col">Категория</th>
        <th scope="col">Описание</th>
        <th scope="col">Цена</th>
        <th scope="col">Количество</th>
        <th scope="col">Статус</th>
        <th scope="col">Действие</th>

    </tr>
    </thead>
    <tbody>
        <#list products.content as productInfo>
        <tr>
            <th class="align-middle" scope="row">
                <img height="100px" src="${productInfo.getProductIcon()}">
            </th>
            <td class="align-middle">${productInfo.getProductId()}</td>
            <td class="align-middle">${productInfo.getProductName()}</td>
            <td class="align-middle">${categoryArray[productInfo.getCategoryType()]}</td>
            <td class="align-middle">${productInfo.getProductDescription()}</td>
            <td class="align-middle">${productInfo.getProductPrice()}сом</td>
            <td class="align-middle">${productInfo.getProductStock()}</td>
            <td class="align-middle">${statusArray[productInfo.getProductStatus()]}</td>
            <td class="align-middle">
                <a style="display: block" href="/seller/product/${productInfo.getProductId()}/edit">
                    Редактрировать</a>
                <#if currentUser.role=="ROLE_MANAGER">
                    <a style="display: block" href="/seller/product/${productInfo.getProductId()}/delete">
                        Удалить</a>
                </#if>

            </td>

        </#list>
    </tbody>


</table>

<#--<script src="/js/jquery-3.2.1.min.js"></script>-->
<#--<script src="/styles/bootstrap4/popper.js"></script>-->
<#--<script src="/styles/bootstrap4/bootstrap.min.js"></script>-->
<#--<script src="/plugins/Isotope/isotope.pkgd.min.js"></script>-->
<#--<script src="/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>-->
<#--<script src="/plugins/easing/easing.js"></script>-->
<#--<script src="/js/custom.js"></script>-->
