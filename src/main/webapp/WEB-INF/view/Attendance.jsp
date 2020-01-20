<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
    <link rel="stylesheet" href="font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
          integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <link rel="stylesheet" href="text/css">
    <title>Patien Profile</title>
    <style>
        body {
            background: url('back.jpg');
            background-size: cover;
            background-repeat: no-repeat;
        }

        #baby {
            background: url('back22.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            min-height: 300px;
        }

        #baby2 {
            background: url('back1.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            min-height: 300px;
        }

        #btns ul {
            margin: 0px -13px;
            padding: 0;
        }

        #btns ul li {
            float: left;
            list-style: none;
        }

        #btns ul li a {
            color: white;
            padding: 0px 7px;
        }

        #btns ul li a:hover {
            text-decoration: none;
            background: #2563c6;
        }

        #table {
            color: white;
            background-color: rgba(0, 0, 0, 0.4);
        }

        thead td {
            font-weight: bold;
        }


    </style>
<body>
<div class="container py-3">
    <div class="row">
        <div class="col-12 mb-3">
            <h5>Today's attendance</h5>
        </div>
        <div class="col-12">
            <div class="card border-0">

                <div class="card-body">


                    <div class="rounded mt-1" id="baby2">
                        <div class="container">

                            <form action="savebookingn" method="post" id="from">
                                <div class="table-responsive-md" id="table">
                                    <table table class="table table-bordered table-sm table-hover responsive-md">
                                        <thead>
                                        <tr>
                                            <th scope="col">Status</th>
                                            <th scope="col">Student ID</th>
                                            <th scope="col">Student Name</th>
                                            <th scope="col">Department</th>
                                            <th scope="col">Section</th>
                                            <th scope="col">Subject</th>
                                            <th scope="col">Subject Code</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="student" items="${students}">

                                            <tr>
                                                <td><input type="checkbox" name="" value=""></td>
                                                <td>${student.id}</td>
                                                <td>${student.name}</td>
                                                <td>${student.department}</td>
                                                <td>${student.section}</td>
                                                <td>${student.subject}</td>
                                                <td>${student.subject_Code}</td>


                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </form>
                        </div>
                        <div class="col-3"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="JS/bootstrap.min.js"></script>
</body>
</html>