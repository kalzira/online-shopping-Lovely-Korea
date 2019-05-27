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
<#include "partials/_header.ftl">
<body>
<div class="container ">
    <#include "partials/_nav.ftl">
    <h1 align="center" class="display-4 mb-5">Войти</h1>
    <div style="width:40%; margin: 25px auto" >
        <#if (RequestParameters.error)??>
            <div class="alert alert-danger">
                Неправильно введен пароль или имя.
            </div>
        </#if>
        <#if (RequestParameters.logout)??>
        <div class="alert alert-info">
            Вы вышли из аккаунта.
        </div>
        </#if>

        <form action="/login" method="post">
            <div class="form-group">
                <label>Email</label>
                <input type="text" class="form-control form-control-lg" id="email" name="email" placeholder="Введите email..." required="true" autofocus="true">
            </div>

            <div class="form-group">
                <label>Пароль</label>
                <input type="password" class="form-control form-control-lg" id="password" name="password" placeholder="Введите пароль..." required="true">
            </div>

            <div class="form-group">
                <div>
                    <input type="checkbox" id="remember_me" name="remember-me">
                    <label for="remember_me" class="inline">Запомнить меня</label>
                    <a class="float-right" href="/register">Зарегистрироваться</a>
                </div>
            </div>

            <div class="form-group">
                <input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign In"/>
            </div>
        </form>



        <#--Sample Testing-->


    </div>



</div>
</body>
<#include "partials/_footer.ftl">
<script>
    function fillLoginFields(u, p) {
        document.getElementById("email").value = u;
        document.getElementById("password").value = p;
        document.forms[0].submit();
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
