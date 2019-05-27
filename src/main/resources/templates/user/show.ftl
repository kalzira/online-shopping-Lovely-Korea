
<#import "/spring.ftl" as spring />
<html>
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
</body>
</html>
