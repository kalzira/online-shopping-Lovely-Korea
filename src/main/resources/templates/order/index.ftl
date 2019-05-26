<html>
<#include "../partials/_header.ftl">
<body>
<div class="container ">
    <#include "../partials/_nav.ftl">
    <h1 align="center" class="display-4 mb-5">Заказы</h1>

    <table class="table table-striped text-center">
        <thead>
        <tr>
            <th scope="col">Заказ #</th>
            <th scope="col">Имя клиента</th>
            <th scope="col">Email клиента</th>
            <th scope="col">Телефонный номер клиента</th>
            <th scope="col">Адресс доставки</th>
            <th scope="col">Сумма</th>
            <th scope="col">Дата заказа</th>
            <th scope="col">Статус</th>
            <th scope="col">Действие</th>
        </tr>
        </thead>
        <tbody>
        <#list orders.content as order>
        <tr>
            <th class="align-middle" scope="row">
                ${order.getOrderId()?c}
            </th>
            <td class="align-middle">${order.getBuyerName()}</td>
            <td class="align-middle">${order.getBuyerEmail()}</td>
            <td class="align-middle">${order.getBuyerPhone()}</td>
            <td class="align-middle">${order.getBuyerAddress()}</td>
            <td class="align-middle">${order.getOrderAmount()?string.сом}</td>
            <td class="align-middle">${order.getCreateTime()}</td>
            <td class="align-middle">${statusArray[order.getOrderStatus()]}</td>
            <td class="align-middle">
                <#--New Order has actions-->
                    <#if !(currentUser.role == "ROLE_CUSTOMER" && currentUser.email != order.getBuyerEmail())>
                        <a style="display: block" href="/order/show/${order.getOrderId()}">
                            Показать</a>
                        <#if order.getOrderStatus() == 0>
                            <a style="display: block" href="/order/cancel/${order.getOrderId()}">
                                Отменить</a>
                        </#if>
                    </#if>

                    <#if currentUser.role != "ROLE_CUSTOMER" && order.getOrderStatus() == 0>
                        <a style="display: block" href="/order/finish/${order.getOrderId()}">
                            Завершить</a>
                    </#if>


            </td>

        </tr>
        </#list>
        </tbody>
    </table>

    <#--pagination-->
    <div class="col-md-12 column">
        <ul class="pagination justify-content-end">
                    <#if currentPage lte 1>
                           <li class="page-item disabled">
                               <a class="page-link" href="#">Назад</a>
                           </li>
                    <#else>
                           <li class="page-item">
                               <a class="page-link" href="?page=${currentPage - 1}&size=${size}">Назад</a>
                           </li>
                    </#if>


                    <#list 1..orders.getTotalPages() as index>
                        <#if currentPage == index>
                           <li class="page-item active ">
                               <a class="page-link" href="#">${index}</a>
                           </li>
                        <#elseif index != 0>
                            <li class="page-item">
                                <a class="page-link" href="?page=${index}&size=${size}">${index}</a>
                            </li>
                        </#if>
                    </#list>

                    <#if currentPage gte orders.getTotalPages()>
                            <li class="page-item disabled">
                                <a class="page-link" href="#">Вперед</a>
                            </li>
                    <#else>
                            <li class="page-item">
                                <a class="page-link" href="?page=${currentPage + 1}&size=${size}">Вперед</a>
                            </li>
                    </#if>
        </ul>
    </div>
</div>
<#include "../partials/_footer.ftl">
</body>
</html>
