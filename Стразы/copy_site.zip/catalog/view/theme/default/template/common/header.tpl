<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
    <!--<![endif]-->
    <head>
	<meta name="msvalidate.01" content="25E378F7CB1D470F939AF32B3CBFF008" />
<meta name='wmail-verification' content='d860d2ba74a30706e6b3d64aba8e3204' />
<meta name='yandex-verification' content='64bceccbf4fcc573' />
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><?php echo $title; ?></title>
        <base href="<?php echo $base; ?>" />
        <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>" />
        <?php } ?>
        <?php if ($keywords) { ?>
        <meta name="keywords" content= "<?php echo $keywords; ?>" />
        <?php } ?>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name='yandex-verification' content='46d768c764347233' />
        <?php if ($icon) { ?>
        <link href="<?php echo $icon; ?>" rel="icon" />
        <?php } ?>
        <?php foreach ($links as $link) { ?>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
        <?php } ?>
        <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
        <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />

        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
		<link href="styles.css" rel="stylesheet">
        <!--<script src="js/modernizr.custom.js"></script>-->
<!--        <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>-->
        <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
        <link href="catalog/view/theme/default/stylesheet/stylesheet.css?17122015" rel="stylesheet">
        <?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
        <?php } ?>
<!--        <script src="catalog/view/javascript/common.js" type="text/javascript"></script>-->
        <?php foreach ($scripts as $script) { ?>
        <script src="<?php echo $script; ?>" type="text/javascript"></script>
        <?php } ?>
        <?php echo $google_analytics; ?>

        <link href="divbox.css" rel="stylesheet" type="text/css" media="screen" />
<!--        <script src="divbox.js" type="text/javascript"></script>-->
        <script type="text/javascript">
                    $(document).ready(function () {
            $('a.lightbox').divbox({width: 620, height: 415, caption: false});
                    $('a.iframe').divbox({width: 200, height: 200, caption: false});
                    $('a.ajax').divbox({type: 'ajax', width: 200, height: 200, caption: false, api: {
                        afterLoad: function (o) {
                            $(o).find('a.close').click(function () {
                                o.closed();
                                return false;
            });
                    $(o).find('a.resize').click(function () {
            o.resize(200, 50);
                    return false;
            });
            }
            }});
            });        </script>


        <link rel="stylesheet" type="text/css" href="/css/fancybox2.css?13082015" />
<!--        <script type="text/javascript" src="/js/fancybox2.pack.js?13082015"></script>
        <script type="text/javascript" src="catalog/view/javascript/fast_order.js?13082015"></script>-->
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/fast_order.css" />

        <!-- Yandex.Metrika counter -->
        <script type="text/javascript">
                    (function (d, w, c) {
                    (w[c] = w[c] || []).push(function () {
                    try {
                    w.yaCounter33552278 = new Ya.Metrika({id:33552278,
                            webvisor:true,
                            clickmap:true,
                            trackLinks:true,
                            accurateTrackBounce:true});
                    } catch (e) {
                    }
                    });
                            var n = d.getElementsByTagName("script")[0],
                            s = d.createElement("script"),
                            f = function () {
                            n.parentNode.insertBefore(s, n);
                            };
                            s.type = "text/javascript";
                            s.async = true;
                            s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";
                            if (w.opera == "[object Opera]") {
                    d.addEventListener("DOMContentLoaded", f, false);
                    } else {
                    f();
                    }
                    })(document, window, "yandex_metrika_callbacks");        </script>
        <!-- /Yandex.Metrika counter -->

        <!-- Rating@Mail.ru counter -->
        <script type="text/javascript">
                    var _tmr = _tmr || [];
                    _tmr.push({id: "2709403", type: "pageView", start: (new Date()).getTime()});
                    (function (d, w, id) {
                    if (d.getElementById(id))
                            return;
                            var ts = d.createElement("script");
                            ts.type = "text/javascript";
                            ts.async = true;
                            ts.id = id;
                            ts.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//top-fwz1.mail.ru/js/code.js";
                            var f = function () {var s = d.getElementsByTagName("script")[0]; s.parentNode.insertBefore(ts, s);}
                            ;
                                    if (w.opera == "[object Opera]") {
                            d.addEventListener("DOMContentLoaded", f, false);
                            } else {
                    f();
                    }
                    })(document, window, "topmailru-code");
        </script>
        <!-- //Rating@Mail.ru counter -->

        <style>
            #cart img{width:<?php echo $image_cart_width;?>px;}
        </style>


    </head>
    <body class="<?php echo $class; ?>">
        <nav id="top">
            <div class="container">
                <?php echo $currency; ?>
                <?php echo $language; ?>
                <div id="top-links" class="nav pull-right">
                    <ul class="list-inline">

                        <li><a href="http://ceostore.ru/">Главная</a></li>
                        <!--<li><a href="http://ceostore.ru/kak_sozdat_tovar.html">Помощь</a></li>-->
                        <li><a href="/index.php?route=information/information&information_id=7">Помощь</a></li>
                        <li><a href="http://ceostore.ru/index.php?route=information/information&information_id=6">Доставка</a></li>
                        <li><a href="http://ceostore.ru/index.php?route=information/information&information_id=3">Способы оплаты</a></li>

                        <li><a href="http://ceostore.ru/index.php?route=information/information&information_id=4">Опт</a></li>
                        <li><a href="http://ceostore.ru/index.php?route=information/contact">Контакты</a></li>
                        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <?php if ($logged) { ?>
                                <li>Вход<a href="<?php echo $account; ?>"><?php echo $text_account; ?>Вход</a></li>
                                <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                                <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                                <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                                <?php } else { ?>
                                <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                                <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                                <?php } ?>
                            </ul>
                        </li>
                        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
                        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
                        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <header>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="col-sm-4">
                            <div id="logo">
                                <?php if ($logo) { ?>
                                <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                                <?php } else { ?>
                                <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="col-sm-5">

                            <div class="phoner_" style="font-weight: bold; white-space: nowrap;">
                                <div class="col-xs-12" style="padding: 0;">
                                    <img alt="" class="pull-left" style="margin: -5px 10px 0 15px;" src="http://ceostore.ru/image/cache/catalog/slider/telefono.png">
                                    8(391) 287-00-44, 8-902-950-51-50 </div>
                            </div>
                            <div class="col-xs-12" style="padding: 20px 0 0 30px; font-weight: bold; color:#ff1502; white-space: nowrap; ">Белинского 8. ТРК КОМСОМОЛЛ, 3 этаж.</div>

                        </div>

                        <div class="col-sm-3"><?php echo $cart; ?></div>
                    </div>
                </div>
            </div>
        </header>
        <div class="text-center">
            <?php if ($categories) { ?>
            <div class="container">
                <nav id="menu" class="navbar">
                    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
                        <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                    </div>
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <ul class="nav navbar-nav">
                            <?php foreach ($categories as $category) { ?>
                            <?php if ($category['children']) { ?>
                            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>

                            </li>
                            <?php } else { ?>
                            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                            <?php } ?>
                            <?php } ?>
                        </ul>
                    </div>
                </nav>
            </div>
            <?php } ?></div>
