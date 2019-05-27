<#--<meta name="viewport" content="width=device-width, initial-scale=1">-->

<#--<link rel="stylesheet" type="text/css" href="/styles/bootstrap4/bootstrap.min.css">-->
<#--<link href="https://fonts.googleapis.com/css?family=Oswald&display=swap" rel="stylesheet">-->

<#--<link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/owl.carousel.css">-->
<#--<link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">-->
<#--<link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/animate.css">-->
<#--<link rel="stylesheet" type="text/css" href="/styles/main_styles.css">-->
<#--<link rel="stylesheet" type="text/css" href="/styles/responsive.css">-->

<!-- Top Navigation -->

<div class="top_nav">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="top_nav_left"></div>
            </div>
            <div class="col-md-6 text-right">
                <div class="top_nav_right">
                    <ul class="top_nav_menu">

                        <!--  / Language / My Account -->


                        <li class="language">
                            <a href="/login">
                                Login

                            </a>
                        </li>
                        <li class="language">
                            <a href="/register">
                                Sign Up

                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Main Navigation -->



<div class="main_nav_container">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-sm-12 col-md-12 text-right">
                <div class="logo_container">
                    <img src="/img/logo_main.png" width="60" height="60" class="d-inline-block align-top" alt="">
                    <img src="/img/logo_text.png" width="60" height="60" class="d-inline-block align-top" alt="">
                </div>
                <nav class="navbar">
                    <ul class="navbar_menu">

                        <#if !currentUser?? || currentUser.role=="ROLE_CUSTOMER">
                            <li><div class="dropdown show">
                                    <a class="nav-item nav-link  dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Каталог
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">

                                        <a style="margin-left: 2%; font-size: 9px; font-weight: bold">Уходовая косметика</a>

                                        <a class="dropdown-item <#if category?? && category.categoryType == 0>active</#if>"
                                           href="/category/0">
                                            Снятие макияжа
                                        </a>
                                        <a class="dropdown-item <#if category?? && category.categoryType == 1>active</#if>"
                                           href="/category/1">
                                            Очищение
                                        </a>
                                        <a class="dropdown-item <#if category?? && category.categoryType == 2>active</#if>"
                                           href="/category/2">
                                            Пиллинги, Скрабы
                                        </a>
                                        <a class="dropdown-item <#if category?? && category.categoryType == 3>active</#if>"
                                           href="/category/3">
                                            Тонеры, Эмульсии, Сыворотки
                                        </a>
                                        <a class="dropdown-item <#if category?? && category.categoryType == 4>active</#if>"
                                           href="/category/4">
                                            Маски для лица
                                        </a>
                                        <a class="dropdown-item <#if category?? && category.categoryType == 5>active</#if>"
                                           href="/category/5">
                                            Крем для лица
                                        </a>
                                        <a style="margin-left: 2%; font-size: 9px; font-weight: bold">Декоративная косметика</a>
                                        <a class="dropdown-item <#if category?? && category.categoryType == 6>active</#if>"
                                           href="/category/6">
                                            BB, CC крема
                                        </a>
                                        <a class="dropdown-item <#if category?? && category.categoryType == 7>active</#if>"
                                           href="/category/7">
                                            Пудры
                                        </a>
                                        <a class="dropdown-item <#if category?? && category.categoryType == 8>active</#if>"
                                           href="/category/8">
                                            Глаза
                                        </a>
                                        <a class="dropdown-item <#if category?? && category.categoryType == 9>active</#if>"
                                           href="/category/9">
                                            Губы
                                        </a>
                                        <a class="dropdown-item <#if category?? && category.categoryType == 10>active</#if>"
                                           href="/category/10">
                                            Продукты питания
                                        </a>

                                        <a class="dropdown-item <#if category?? && category.categoryType == 11>active</#if>"
                                           href="/category/11">
                                            Уход за волосами
                                        </a>

                                        <a class="dropdown-item <#if category?? && category.categoryType == 12>active</#if>"
                                           href="/category/12">
                                            Хиты продаж!
                                        </a>

                                        <a class="dropdown-item <#if category?? && category.categoryType == 13>active</#if>"
                                           href="/category/13">
                                            Новинки
                                        </a>

                                        <a class="dropdown-item <#if category?? && category.categoryType == 14>active</#if>"
                                           href="/category/14">
                                            Товары для дома
                                        </a>
                                        <a class="dropdown-item <#if category?? && category.categoryType == 15>active</#if>"
                                           href="/category/15">
                                            Гаджеты
                                        </a>
                                    </div>
                                </div>
                            </li>
                        </#if>
                        <#if !currentUser?? || currentUser.role=="ROLE_CUSTOMER">
                            <li><a class="nav-item nav-link <#if category?? && category.categoryType == 11>active</#if>"
                                   href="/category/11">Уход за волосами</a></li>
                            <li><a class="nav-item nav-link <#if category?? && category.categoryType == 12>active</#if>"
                                   href="/category/12">Хиты продаж!</a></li>
                            <li><a class="nav-item nav-link <#if category?? && category.categoryType == 13>active</#if>"
                                   href="/category/13">Новинки!</a></li>
                            <li><a href="/delivery">Доставка</a></li>
                            <li><a href="contact.html">contact</a></li>
                        </#if>
                    </ul>
                    <ul class="navbar_user">
                            <#if !currentUser?? || currentUser.role=="ROLE_CUSTOMER"  >
                                <li><a class="nav-item nav-link " href="/cart">
                                        <i class="fa fa-shopping-cart"></i>
                                    </a>
                                </li>
                            </#if>
                            <#if !currentUser?? || currentUser.role!="ROLE_CUSTOMER"  >
                                <li><a class="nav-item nav-link " href="/order">
                                        Заказы
                                    </a>
                                </li>
                            </#if>
                            <#if currentUser?? >
                                <li><a class="nav-item nav-link " href="/profiles"><i class="fa fa-user" aria-hidden="true"></i>
                                        ${currentUser.name}
                                    </a></li>
                                <li><a class="nav-item nav-link " href="/logout">
                                        Выйти
                                    </a>
                                </li>
                            </#if>
                            <#if !currentUser?? || currentUser.role!="ROLE_CUSTOMER"  >
                            <li class="nav-item nav-link"><a href="/seller">Товары</a></li></#if>
                            <div class="hamburger_container col-sm-4">
                                <i class="fa fa-bars" aria-hidden="true"></i>
                            </div>
                    </ul>

            </div>


            </nav>
        </div>
    </div>
</div>





<div class="fs_menu_overlay"></div>
<div class="hamburger_menu">
    <div class="hamburger_close"><i class="fa fa-times" aria-hidden="true"></i></div>
    <div class="hamburger_menu_content text-center">
        <ul class="menu_top_nav">
            <li class="menu_item has-children">
                <a href="#">
                   Каталог
                    <i class="fa fa-angle-down"></i>
                </a>
                <ul class="menu_selection">
                    <li>
                        <a class="<#if category?? && category.categoryType == 0>active</#if>"
                           href="/category/0">
                            Снятие макияжа
                        </a>
                    </li>
                    <li>
                    <a class=" <#if category?? && category.categoryType == 1>active</#if>"
                       href="/category/1">
                        Очищение
                    </a>
                    </li>
                    <li>
                    <a class=" <#if category?? && category.categoryType == 2>active</#if>"
                       href="/category/2">
                        Пиллинги, Скрабы
                    </a>
                    </li>
                    <li>
                    <a class=" <#if category?? && category.categoryType == 3>active</#if>"
                       href="/category/3">
                        Тонеры, Эмульсии, Сыворотки
                    </a>
                    </li>
                    <li>
                    <a class=" <#if category?? && category.categoryType == 4>active</#if>"
                       href="/category/4">
                        Маски для лица
                    </a>
                    </li>
                    <li>
                    <a class=" <#if category?? && category.categoryType == 5>active</#if>"
                       href="/category/5">
                        Крем для лица
                    </a>
                    </li>
                    <li>
                    <a class=" <#if category?? && category.categoryType == 6>active</#if>"
                       href="/category/6">
                        BB, CC крема
                    </a>
                    </li>
                    <li>
                    <a class=" <#if category?? && category.categoryType == 7>active</#if>"
                       href="/category/7">
                        Пудры
                    </a>
                    </li>
                    <li>
                    <a class=" <#if category?? && category.categoryType == 8>active</#if>"
                       href="/category/8">
                        Глаза
                    </a>
                    </li>
                    <li>
                    <a class="<#if category?? && category.categoryType == 9>active</#if>"
                       href="/category/9">
                        Губы
                    </a>
                    </li>
                    <li>
                    <a class=" <#if category?? && category.categoryType == 10>active</#if>"
                       href="/category/10">
                        Продукты питания
                    </a>
                    </li>
                    <li>
                    <a class=" <#if category?? && category.categoryType == 11>active</#if>"
                       href="/category/11">
                        Уход за волосами
                    </a>
                    </li>
                    <li>
                    <a class=" <#if category?? && category.categoryType == 12>active</#if>"
                       href="/category/12">
                        Хиты продаж!
                    </a>
                    </li>
                    <li>
                    <a class="<#if category?? && category.categoryType == 13>active</#if>"
                       href="/category/13">
                        Новинки
                    </a>
                    </li>
                    <li>
                    <a class="<#if category?? && category.categoryType == 14>active</#if>"
                       href="/category/14">
                        Товары для дома
                    </a>
                    </li>
                    <li>
                    <a class="<#if category?? && category.categoryType == 15>active</#if>"
                       href="/category/15">
                        Гаджеты
                    </a>
                    </li>
                    </ul>
                    </li>
                    <li class="menu_item has-children">
                        <a href="#">
                            Войти
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="menu_selection">
                            <li><a href="/login"><i class="fa fa-sign-in" aria-hidden="true"></i>Войти</a></li>
                            <li><a href="/register"><i class="fa fa-user-plus" aria-hidden="true"></i>Регистрация</a></li>
                        </ul>
                    </li>

        </ul>
    </div>
</div>

<#--<script src="/js/jquery-3.2.1.min.js"></script>-->
<#--<script src="/styles/bootstrap4/popper.js"></script>-->
<#--<script src="/styles/bootstrap4/bootstrap.min.js"></script>-->
<#--<script src="/plugins/Isotope/isotope.pkgd.min.js"></script>-->
<#--<script src="/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>-->
<#--<script src="/plugins/easing/easing.js"></script>-->
<#--<script src="/js/custom.js"></script>-->

<#--set all integer without comma-->
<#setting number_format="computer">
