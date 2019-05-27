
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
    <h1 align="center" class="display-4 mb-5">Редактировать профиль</h1>
    <div style="width:40%; margin: 25px auto" >
        <form action="/profiles"  method="post">
            <@spring.bind "user"/>
            <div class="form-group">
                <label>Email</label>
                 <@spring.bind "user.email"/>
                <input readonly value="${currentUser.email!}" type="email" class="form-control form-control-lg" id="email" name="email" placeholder="Введите email" required="true" >
                <span class="text-danger"><@spring.showErrors ""/></span>
            </div>
            <div class="form-group">
                <label>Имя</label>
                 <@spring.bind "user.name"/>
                <input value="${currentUser.name!}"type="text" class="form-control form-control-lg" id="name" name="name" placeholder="Имя" required="true" autofocus="true">
                <span class="text-danger"><@spring.showErrors ""/></span>
            </div>
            <div class="form-group">
                <label>Пароль</label>
                <@spring.bind "user.password"/>
                <input type="password" class="form-control form-control-lg" id="password" name="password" placeholder="Введите пароль" required="true">
                <span class="text-danger"><@spring.showErrors ""/></span>
            </div>
            <div class="form-group">
                <label>Телефонный номер</label>
                <@spring.bind "user.phone"/>
                <input value="${currentUser.phone!}" type="text" class="form-control form-control-lg" id="phone" name="phone" placeholder="" required="true">
                <span class="text-danger"><@spring.showErrors ""/></span>
            </div>
            <div class="form-group">
                <label>Адресс доставки</label>
                <@spring.bind "user.address"/>
                <input value="${currentUser.address!}" type="text" class="form-control form-control-lg" id="address" name="address" placeholder="" required="true">
                <span class="text-danger"><@spring.showErrors ""/></span>
            </div>
            <@spring.bind "user.role"/>
            <input hidden type="text" name="role" value="ROLE_MANAGER">
            <@spring.bind "user.role"/>
            <input hidden type="checkbox" name="active" value="1" checked>
            <div class="form-group">
                <input type="submit" class="btn btn-lg btn-primary btn-block" value="Submit"/>
            </div>
        </form>
    </div>
</div>

<#--<script src="/js/jquery-3.2.1.min.js"></script>-->
<#--<script src="/styles/bootstrap4/popper.js"></script>-->
<#--<script src="/styles/bootstrap4/bootstrap.min.js"></script>-->
<#--<script src="/plugins/Isotope/isotope.pkgd.min.js"></script>-->
<#--<script src="/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>-->
<#--<script src="/plugins/easing/easing.js"></script>-->
<#--<script src="/js/custom.js"></script>-->
</body>
</html>
