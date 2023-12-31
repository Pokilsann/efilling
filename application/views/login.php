<!DOCTYPE html>
<html lang="en">
    <head>
        <script nonce="c235ea0c-f50c-449d-b8cd-16e6b2ca2b01">
            (function (w, d) {
                !function (a, e, t, r) {
                    a.zarazData = a.zarazData || {},
                    a.zarazData.executed = [],
                    a.zarazData.tracks = [],
                    a.zaraz = {
                        deferred: []
                    },
                    a.zaraz.track = (e, t) => {
                        for (key in a.zarazData.tracks.push(e), t) 
                            a.zarazData["z_" + key] = t[key]
                    },
                    a.zaraz._preSet = [],
                    a.zaraz.set = (e, t, r) => {
                        a.zarazData["z_" + e] = t,
                        a
                            .zaraz
                            ._preSet
                            .push([e, t, r])
                    },
                    a.addEventListener("DOMContentLoaded", (() => {
                        var t = e.getElementsByTagName(r)[0],
                            z = e.createElement(r),
                            n = e.getElementsByTagName("title")[0];
                        n && (a.zarazData.t = e.getElementsByTagName("title")[0].text),
                        a.zarazData.w = a.screen.width,
                        a.zarazData.h = a.screen.height,
                        a.zarazData.j = a.innerHeight,
                        a.zarazData.e = a.innerWidth,
                        a.zarazData.l = a.location.href,
                        a.zarazData.r = e.referrer,
                        a.zarazData.k = a.screen.colorDepth,
                        a.zarazData.n = e.characterSet,
                        a.zarazData.o = (new Date).getTimezoneOffset(),
                        z.defer = !0,
                        z.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(
                            encodeURIComponent(JSON.stringify(a.zarazData))
                        ),
                        t
                            .parentNode
                            .insertBefore(z, t)
                    }))
                }(w, d, 0, "script");
            })(window, document);
        </script>
        <base href="https://colorlib.com/etc/lf/Login_v9/?>">
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="icon" type="image/png" href="<?php echo base_url();?>assets/img/icons8-letter-32.png"/>

        <link
            rel="stylesheet"
            type="text/css"
            href="vendor/bootstrap/css/bootstrap.min.css">

        <link
            rel="stylesheet"
            type="text/css"
            href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">

        <link
            rel="stylesheet"
            type="text/css"
            href="fonts/iconic/css/material-design-iconic-font.min.css">

        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">

        <link
            rel="stylesheet"
            type="text/css"
            href="vendor/css-hamburgers/hamburgers.min.css">

        <link
            rel="stylesheet"
            type="text/css"
            href="vendor/animsition/css/animsition.min.css">

        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">

        <link
            rel="stylesheet"
            type="text/css"
            href="vendor/daterangepicker/daterangepicker.css">

        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">

        <meta name="robots" content="noindex, follow">
    </head>
    <body>
        <div
            class="container-login100"
            style="background-color: #ff7090;">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
                <form action="<?php echo base_url().'index.php/login/auth' ?>" method="post" class="login100-form validate-form">
                    <span class="login100-form-title p-b-37">
						E-Filling System <br>
                        Log In
                    </span>
                    <div
                        class="wrap-input100 validate-input m-b-20"
                        data-validate="Enter username or email">
                        <input
                            class="input100"
                            type="text"
                            name="nip"
                            placeholder="NIP">
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100 validate-input m-b-25" data-validate="Enter password">
                        <input class="input100" type="password" name="pass" placeholder="Password">
                        <span class="focus-input100"></span>
                    </div>
                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn">
                            Log In
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <div id="dropDownSelect1"></div>

        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>

        <script src="vendor/animsition/js/animsition.min.js"></script>

        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

        <script src="vendor/select2/select2.min.js"></script>

        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>

        <script src="vendor/countdowntime/countdowntime.js"></script>

        <script src="js/main.js"></script>

        <script
            async="async"
            src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-23581568-13');
        </script>
        <script
            defer="defer"
            src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194"
            integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw=="
            data-cf-beacon='{"rayId":"6ee4321c0a864b56","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2021.12.0","si":100}'
            crossorigin="anonymous"></script>
    </body>
</html>