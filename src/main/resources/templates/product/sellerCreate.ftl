<#import "/spring.ftl" as spring />
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
    <h1 align="center" class="display-4 mb-5">Добавить Товар</h1>
<#--<div class="text-center justify-content-center">-->
    <div style="width:40%; margin: 25px auto">
        <form action="/seller/product/new" method="post">
            <@spring.bind "product"/>
        <#--Id-->
            <div class="form-group">
                <label>Код</label>
                 <@spring.bind "product.productId"/>
                <input  value="${product.productId!}" placeholder="Required" type="text" class="form-control form-control-lg"
                       id="productId" name="productId" required="true">
                <span class="text-danger"><@spring.showErrors ""/></span>
            </div>
        <#--Photo-->
            <div class="form-group">
                <label>Ссылка на изображение</label>
                <@spring.bind "product.productIcon"/>
                <input value="${product.productIcon!}" placeholder="Optional" type="text" class="form-control form-control-lg" id="productIcon"
                       name="productIcon">
                <span class="text-danger"><@spring.showErrors ""/></span>
            </div>

        <#--Name-->
            <div class="form-group">
                <label>Название</label>
                 <@spring.bind "product.productName"/>
                <input value="${product.productName!}"  placeholder="Required" type="text" class="form-control form-control-lg" id="productName"
                       name="productName" required="true">
                <span class="text-danger"><@spring.showErrors ""/></span>
            </div>

        <#--Category-->
            <div class="form-group">
                <label>Категория</label>
                <select class="custom-select custom-select-lg " id="categoryType" name="categoryType"
                        required="true">
                    <option value="0">Снятие макияжа</option>
                    <option value="1">Очищение</option>
                    <option value="2">Пиллинги, Скрабы</option>
                    <option value="3">Тонеры, Эмульсии, Сыворотки</option>
                    <option value="4">Маски для лица</option>
                    <option value="5">Крем для лица</option>
                    <option value="6">BB, CC крема</option>
                    <option value="7">Пудры</option>
                    <option value="8">Глаза</option>
                    <option value="9">Губы</option>
                    <option value="10">Продукты питания</option>
                    <option value="11">Уход за волосами</option>
                    <option value="12">Хиты продаж!</option>
                    <option value="13">Новинки</option>
                    <option value="14">Товары для дома</option>
                    <option value="15">Гаджеты</option>
                    

                </select>
            </div>

        <#--Description-->
            <div class="form-group">
                <label>Описание</label>
                <@spring.bind "product.productDescription"/>
                <textarea class="form-control form-control-lg text-left"
                          id="productDescription" name="productDescription"
                          placeholder="Optional">${product.productDescription!}</textarea>
                <span class="text-danger"><@spring.showErrors ""/></span>
            </div>
        <#--Price-->
            <div class="form-group">
                <label>Цена</label>
                <@spring.bind "product.productPrice"/>
                <input class="form-control form-control-lg"
                       type="number"
                       id="productPrice"
                       name="productPrice"
                       step="0.01"
                       value="${product.productPrice!'5.00'}"
                       required="true">
                <span class="text-danger"><@spring.showErrors ""/></span>
            </div>
        <#--Stock-->
            <div class="form-group">
                <label>Количество</label>
                <@spring.bind "product.productStock"/>
                <input class="form-control form-control-lg"
                       type="number"
                       id="productStock"
                       name="productStock"
                       min="0"
                       value="${product.productStock!'50'}"
                       required="false">
                <span class="text-danger"><@spring.showErrors ""/></span>
            </div>
        <#--Status-->
            <div class="form-group">
                <label>Статус</label>
                <select class="custom-select custom-select-lg " id="productStatus" name="productStatus" required="true">
                    <option value="0">В наличии</option>
                    <option value="1">Нет в наличии</option>
                </select>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-lg btn-primary btn-block" value="Submit"/>
            </div>
        </form>
    <#--</div>-->

    </div>
</div>
<#include "../partials/_footer.ftl">

<#--<script src="/js/jquery-3.2.1.min.js"></script>-->
<#--<script src="/styles/bootstrap4/popper.js"></script>-->
<#--<script src="/styles/bootstrap4/bootstrap.min.js"></script>-->
<#--<script src="/plugins/Isotope/isotope.pkgd.min.js"></script>-->
<#--<script src="/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>-->
<#--<script src="/plugins/easing/easing.js"></script>-->
<#--<script src="/js/custom.js"></script>-->
</body>
</html>
