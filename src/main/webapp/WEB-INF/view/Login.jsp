<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Login</title>
    <style type="text/css">
        .flex-center {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            height: 100%;
        }

        .flex-column {
            -ms-flex-direction: column !important;
            -webkit-box-orient: vertical !important;
            -webkit-box-direction: normal !important;
            flex-direction: column !important;
        }

        .login {
            width: 100%;
            height: 100vh;
            background: #e9ebee;
            font-family: "Open Sans", sans-serif;
        }

        .login .card {
            border: 0;
        }

        .login .card .card-header {
            background: none;
            border-bottom: 2px solid #e9ebee;
        }

        .login .card .card-body .form-control {
            font-size: 14px;
            height: 40px;
        }

        .login .card .card-body .btn {
            color: #ffffff;
            background: rgb(131, 145, 255);
            background: linear-gradient(90deg,
            rgba(131, 145, 255, 1) 0%,
            rgba(102, 184, 252, 1) 68%);
        }

        .login .card .card-body p {
            font-size: 14px;
        }

        @media (max-width: 576px) {
            .login .card {
                width: 95%;
            }
        }

        @media (min-width: 576px) {
            .login .card {
                width: 450px;
            }
        }
    </style>
</head>

<body>

<div class="login">
    <div class="flex-center flex-column">
        <div class="card">
            <div class="card-header text-center py-4">
                <h5 class="mb-0">Login</h5>
            </div>
            <div class="card-body py-5">


                <form form action="login_teacher" method="post">
                    <div class="form-group mb-4">
                        <small class="text-muted">E-mail*</small>
                        <input type="text" name="email" class="form-control rounded-0 shadow-none"
                               placeholder="Enter e-mail">
                    </div>
                    <div class="form-group mb-4">
                        <small class="text-muted">Password*</small>
                        <input type="password" name="password" class="form-control rounded-0 shadow-none"
                               placeholder="Enter password">
                    </div>
                    <button type="submit" class="btn btn-block rounded-0 shadow-none">Login</button>
                </form>


                <div class="text-center pt-4">
                    <p class="mb-0">Have no account ? <a href="registration.html">Registration</a></p>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>

</html>