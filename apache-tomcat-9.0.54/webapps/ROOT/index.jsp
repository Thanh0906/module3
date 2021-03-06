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
            <h4>Gi???i thi???u Ariyana Furama Condotel ???? N???ng</h4>

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
                <h4>V??? ?????p c???a th??nh ph??? ?????ng s???ng. ???? N???ng Vi???t Nam</h4>

            </div>
        </div>

    </div>
    <div class="col-9 bg-light ">
        <div class="row">
            <div class="col-12 text-center">
                <img class="img-fluid"
                     src="https://danangfantasticity.com/wp-content/uploads/2015/12/furama-resort-da-nang-04-1024x768.jpg"
                     alt="">
                <p>H?????ng ra b??i bi???n ???? N???ng tr???i d??i c??t tr???ng, Furama Resort ???? N???ng l?? c???a ng?? ?????n v???i 3 di s???n v??n
                    ho?? th??? gi???i: H???i An (20 ph??t), M??? S??n (90 ph??t) v?? Hu??? (2 ti???ng. 196 ph??ng h???ng sang c??ng v???i 70
                    c??n bi???t th??? t??? hai ?????n b???n ph??ng ng??? c?? h??? b??i ri??ng ?????u ???????c trang tr?? trang nh??, theo phong c??ch
                    thi???t k??? truy???n th???ng c???a Vi???t Nam v?? ki???n tr??c thu???c ?????a c???a Ph??p, bi???n Furama th??nh khu ngh??? d?????ng
                    danh gi?? nh???t t???i Vi???t Nam ??? vinh d??? ???????c ????n ti???p nhi???u ng?????i n???i ti???ng, gi???i ho??ng gia, ch??nh
                    kh??ch, ng??i sao ??i???n ???nh v?? c??c nh?? l??nh ?????o kinh doanh qu???c t???.</p>

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
