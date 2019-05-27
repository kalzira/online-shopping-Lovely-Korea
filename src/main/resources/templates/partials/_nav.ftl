<meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="/styles/bootstrap4/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Oswald&display=swap" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="/styles/main_styles.css">
    <link rel="stylesheet" type="text/css" href="/styles/responsive.css">

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
                            <li><a class="nav-item nav-link <#if category?? && category.categoryType == 12>active</#if>"
                                   href="/category/13">Новинки!</a></li>
                            <li><a href="#">Доставка</a></li>
                            <li><a href="contact.html">contact</a></li>
                            </#if>
                        </ul>
                        <ul class="navbar_user">
                            <div class="navbar-nav ml-auto col-lg-6">
                                <#if !currentUser?? || currentUser.role=="ROLE_CUSTOMER"  >
                                    <li><a class="nav-item nav-link " href="/cart">
                                        <i class="fa fa-shopping-cart"></i>
                                        Корзина
                                    </a>
                                    </li>
                                </#if>
                                <#if currentUser?? >
                                    <li><a class="nav-item nav-link " href="/order">
                                        <i class="fa fa-list-ul"></i>
                                        Заказы
                                    </a>
                                    </li>
                                   <li><a class="nav-item nav-link " href="/profiles">
                                        ${currentUser.name}
                                       </a></li>
                                   <li><a class="nav-item nav-link " href="/logout">
                                        Выйти
                                    </a>
                                   </li>
                                </#if>
                                <li class="nav-item nav-link "><a href="#"><i class="fa fa-user" aria-hidden="true"></i></a></li>
                        </ul>
                        <div class="hamburger_container col-sm-4">
                            <i class="fa fa-bars" aria-hidden="true"></i>
                        </div>
                            </div>


                    </nav>
                </div>
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
                        usd
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="menu_selection">
                        <li><a href="#">cad</a></li>
                        <li><a href="#">aud</a></li>
                        <li><a href="#">eur</a></li>
                        <li><a href="#">gbp</a></li>
                    </ul>
                </li>
                <li class="menu_item has-children">
                    <a href="#">
                        English
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="menu_selection">
                        <li><a href="#">French</a></li>
                        <li><a href="#">Italian</a></li>
                        <li><a href="#">German</a></li>
                        <li><a href="#">Spanish</a></li>
                    </ul>
                </li>
                <li class="menu_item has-children">
                    <a href="#">
                        My Account
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="menu_selection">
                        <li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i>Sign In</a></li>
                        <li><a href="#"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a></li>
                    </ul>
                </li>
                <li class="menu_item">
                    <a href="#">home</a>
                </li>
                <li class="menu_item"><a href="#">shop</a></li>
                <li class="menu_item"><a href="#">promotion</a></li>
                <li class="menu_item"><a href="#">pages</a></li>
                <li class="menu_item"><a href="#">blog</a></li>
                <li class="menu_item"><a href="#">contact</a></li>
            </ul>
        </div>
    </div>

<script src="/js/jquery-3.2.1.min.js"></script>
<script src="/styles/bootstrap4/popper.js"></script>
<script src="/styles/bootstrap4/bootstrap.min.js"></script>
<script src="/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="/plugins/easing/easing.js"></script>
<script src="/js/custom.js"></script>

<#--set all integer without comma-->
<#setting number_format="computer">
