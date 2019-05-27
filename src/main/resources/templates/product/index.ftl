<html>
<#include "../partials/_header.ftl">
<body>
<div class="container ">
    <#include "../partials/_nav.ftl">
    <!-- Slider -->

    <div class="main_slider" style="background-image:url(img/slider.jpg); background-size: 50%">
        <div class="container fill_height">
            <div class="row align-items-center fill_height">
                <div class="col">
                    <div class="main_slider_content">
                        <h6>Lovely Korea</h6>
                        <h1>Товары из Кореи</h1>
                        <div class="red_button shop_now_button"><a href="#">shop now</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <#include "../partials/_cards.ftl">
    <#include "../partials/_pagination.ftl">
</div>
<#include "../partials/_footer.ftl">
</body>
</html>
