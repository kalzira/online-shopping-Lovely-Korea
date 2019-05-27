<html>
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
</html>
