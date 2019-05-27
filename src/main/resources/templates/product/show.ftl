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
<div class="container  ">
    <#include "../partials/_nav.ftl">
    <h1 align="center" class="display-4 mb-5">Детали товара</h1>
    <div class="row text-center justify-content-center">
        <div class="col-lg-6 ">
            <div class="card mb-4 ">
                <img height="100px" class="card-img-top" src="${productInfo.getProductIcon()}">
                <div class="card-body">
                    <h4 class="card-title ">${productInfo.getProductName()}</h4>
                    <form method="post" action="/cart">
                        <div class="text-left">
                            <input hidden name="productId" value="${productInfo.getProductId()}">
                            <p class="card-test"><strong>Description: </strong>${productInfo.getProductDescription()}
                            </p>
                            <p class="card-text">
                                <strong>Цена: </strong>
                                <label id="price"
                                       value="${productInfo.getProductPrice()}">${productInfo.getProductPrice()}сом</label>
                            </p>
                            <p class="card-text"><strong>Stock: </strong>${productInfo.getProductStock()}</p>

                            <label class="card-text" for="quantity">
                                <strong>Количество: </strong>
                            </label>
                            <input type="number"
                                   id="quantity"
                                   name="quantity"
                                   value="1"
                                   min="1"
                                   max="${productInfo.getProductStock()}"
                                   oninput="chageSubtotal()">
                            <p class="card-text"><strong>Сумма: </strong>
                            <#--For JavaScript inHTML-->
                                <label id="subtotal">${(productInfo.getProductPrice())}<p>сом</p></label>
                            </p>
                        </div>
                        <button type="submit"
                                class="btn btn-primary btn-lg <#if productInfo.getProductStatus()==1>disabled</#if>">
                            Добавить в корзину
                        </button>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
<#include "../partials/_footer.ftl">
<script>
    var price_e = document.getElementById("price");
    var subtotal_e = document.getElementById("subtotal");
    var quantity_e = document.getElementById("quantity");
    var price = parseFloat(document.getElementById("price").innerText.substr(1));
    var unit = price_e.innerHTML.charAt(0);

    function chageSubtotal() {
        var subtotal = (parseFloat(quantity_e.value) * price).toFixed(2);
        subtotal_e.innerHTML = unit + subtotal;

    }
</script>

<#--<script src="/js/jquery-3.2.1.min.js"></script>-->
<#--<script src="/styles/bootstrap4/popper.js"></script>-->
<#--<script src="/styles/bootstrap4/bootstrap.min.js"></script>-->
<#--<script src="/plugins/Isotope/isotope.pkgd.min.js"></script>-->
<#--<script src="/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>-->
<#--<script src="/plugins/easing/easing.js"></script>-->
<#--<script src="/js/custom.js"></script>-->
</html>
