<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 10/14/2021
  Time: 9:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HomePage</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <%--    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .menu li {
            margin-right: 110px;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-3">
                <img style="width: 30%;padding: 15px"
                     src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQlTaPPCcmHWMt6vGZ5QyfBTCSLcbmOys20dg&usqp=CAU">
            </div>
            <div class="col-3"></div>
            <div class="col-3"></div>
            <div class="col-3" style="display: flex;align-items: center">
                <h3 style="color: white">LogIn</h3>
            </div>
        </div>
    </div>
</div>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

            <ul class="nav justify-content-center">

                <li class="nav-item">
                    <a class="nav-link" href="/employee?action=employee">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/customer?action=customer">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/service?action=service">Service</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/contract?action=contract">Contract</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/contract_detail?action=contract_detail">Contract Detail</a>
                </li>
            </ul>

        <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
    </div>
</nav>


<div class="row ">
    <div class="col-3 bg-body">
        <div class="row">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/33mvV5Y_2qI"
                    title="YouTube video player" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
            <h4>Giới thiệu Ariyana Furama Condotel Đà Nẵng</h4>

        </div>
        <div class="row">
            <div class="col-12">
                <iframe src="https://www.youtube.com/embed/VzDrgGaXBjY"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                <h4>FURAMA RESORT DANANG, VIETNAM, 5 SAO BEACH RESORT</h4>

            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/b3Ysjcmpqg8"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                <h4>Vẻ đẹp của thành phố đấng sống. Đà Nẵng Việt Nam</h4>

            </div>
        </div>

    </div>
    <div class="col-9 bg-light ">
        <div class="row">
            <div class="col-12 text-center">
                <img class="img-fluid"
                     src="https://danangfantasticity.com/wp-content/uploads/2015/12/furama-resort-da-nang-04-1024x768.jpg"
                     alt="">
                <p>Hướng ra bãi biển Đà Nẵng trải dài cát trắng, Furama Resort Đà Nẵng là cửa ngõ đến với 3 di sản văn
                    hoá thế giới: Hội An (20 phút), Mỹ Sơn (90 phút) và Huế (2 tiếng. 196 phòng hạng sang cùng với 70
                    căn biệt thự từ hai đến bốn phòng ngủ có hồ bơi riêng đều được trang trí trang nhã, theo phong cách
                    thiết kế truyền thống của Việt Nam và kiến trúc thuộc địa của Pháp, biến Furama thành khu nghỉ dưỡng
                    danh giá nhất tại Việt Nam – vinh dự được đón tiếp nhiều người nổi tiếng, giới hoàng gia, chính
                    khách, ngôi sao điện ảnh và các nhà lãnh đạo kinh doanh quốc tế.</p>

            </div>
        </div>
    </div>
</div>


<div id="footer" class="footer">
    <div class="container">
        <p class="text-center">Copyright &copy; Furama</p>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

</body>
</html>
