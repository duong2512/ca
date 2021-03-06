<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>EstateAgency Bootstrap Template - Index</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="/assets/img/favicon.png" rel="icon">
    <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <!-- Template Main CSS File -->
    <link href="/assets/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- =======================================================
    * Template Name: EstateAgency - v4.7.0
    * Template URL: https://bootstrapmade.com/real-estate-agency-bootstrap-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
</head>

<body>

<!-- ======= Property Search Section ======= -->
<div class="click-closed"></div>
<!--/ Form Search Star /-->
<div class="box-collapse">
    <div class="title-box-d">
        <h3 class="title-d">Search Property</h3>
    </div>
    <span class="close-box-collapse right-boxed bi bi-x"></span>
    <div class="box-collapse-wrap form">
        <form class="form-a" action="/property" method="post">
            <div class="row">
                <div class="col-md-12 mb-2">
                    <div class="form-group">
                        <label class="pb-2" for="Type">Keyword</label>
                        <input type="text" class="form-control form-control-lg form-control-a" placeholder="Keyword">
                    </div>
                </div>
                <div class="col-md-6 mb-2">
                    <div class="form-group mt-3">
                        <label class="pb-2" for="Type">Khu V???c</label>
                        <select class="form-control form-select form-control-a" id="Type">
                            <option>T???t C???</option>
                            <option>Theo Qu???n</option>
                            <option>Theo Huy???n</option>
                            <option>Theo X??</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-6 mb-2">
                    <div class="form-group mt-3">
                        <label class="pb-2" for="city">Gi??</label>
                        <select class="form-control form-select form-control-a" id="city">
                            <option>All City</option>
                            <option>Alabama</option>
                            <option>Arizona</option>
                            <option>California</option>
                            <option>Colorado</option>
                        </select>
                    </div>
                </div>
                <%--          <div class="col-md-6 mb-2">--%>
                <%--            <div class="form-group mt-3">--%>
                <%--              <label class="pb-2" for="bedrooms">Bedrooms</label>--%>
                <%--              <select class="form-control form-select form-control-a" id="bedrooms">--%>
                <%--                <option>Any</option>--%>
                <%--                <option>01</option>--%>
                <%--                <option>02</option>--%>
                <%--                <option>03</option>--%>
                <%--              </select>--%>
                <%--            </div>--%>
                <%--          </div>--%>
                <%--          <div class="col-md-6 mb-2">--%>
                <%--            <div class="form-group mt-3">--%>
                <%--              <label class="pb-2" for="garages">Garages</label>--%>
                <%--              <select class="form-control form-select form-control-a" id="garages">--%>
                <%--                <option>Any</option>--%>
                <%--                <option>01</option>--%>
                <%--                <option>02</option>--%>
                <%--                <option>03</option>--%>
                <%--                <option>04</option>--%>
                <%--              </select>--%>
                <%--            </div>--%>
                <%--          </div>--%>
                <%--          <div class="col-md-6 mb-2">--%>
                <%--            <div class="form-group mt-3">--%>
                <%--              <label class="pb-2" for="bathrooms">Bathrooms</label>--%>
                <%--              <select class="form-control form-select form-control-a" id="bathrooms">--%>
                <%--                <option>Any</option>--%>
                <%--                <option>01</option>--%>
                <%--                <option>02</option>--%>
                <%--                <option>03</option>--%>
                <%--              </select>--%>
                <%--            </div>--%>
                <%--          </div>--%>
                <%--          <div class="col-md-6 mb-2">--%>
                <%--            <div class="form-group mt-3">--%>
                <%--              <label class="pb-2" for="price">Min Price</label>--%>
                <%--              <select class="form-control form-select form-control-a" id="price">--%>
                <%--                <option>Unlimite</option>--%>
                <%--                <option>$50,000</option>--%>
                <%--                <option>$100,000</option>--%>
                <%--                <option>$150,000</option>--%>
                <%--                <option>$200,000</option>--%>
                <%--              </select>--%>
                <%--            </div>--%>
                <%--          </div>--%>
                <div class="col-md-12">
                    <button type="submit" class="btn btn-b" >Search Property</button>
                </div>
            </div>
        </form>
    </div>
</div><!-- End Property Search Section -->>

<!-- ======= Header/Navbar ======= -->
<nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
    <div class="container">
        <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarDefault" aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span></span>
            <span></span>
            <span></span>
        </button>
        <a class="navbar-brand text-brand"><img src="https://staticfile.batdongsan.com.vn/images/logo/h-logo.svg" alt=""></a>

        <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
            <ul class="navbar-nav">

                <li class="nav-item">
                    <a class="nav-link active" href="/login?id=${username}">Trang Ch???</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link " href="/login?action=nhadangban&id=${username}">Nh?? ????ng B??n</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link" href="#">
                        Xin Ch??o ${username}
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item " href="/login?action=logout">????ng Xu???t</a>
                        <a class="dropdown-item " href="#">Ch???nh s???a th??ng tin</a>
                    </div>
                </li>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="#">--%>
<%--                        Xin Ch??o ${username}--%>
<%--                    </a>--%>
<%--                </li>--%>
                <li class="nav-item dropdown">

                        <a href="/login?action=createch" methods="post" class="nav-link">T???o b??i ????ng</a>
                </li>

            </ul>
        </div>

        <button type="button" class="btn btn-b-n navbar-toggle-box navbar-toggle-box-collapse" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01">
            <i class="bi bi-search"></i>
        </button>

    </div>
</nav><!-- End Header/Navbar -->

<!-- ======= Intro Section ======= -->
<div class="intro intro-carousel swiper position-relative">

    <div class="swiper-wrapper">

        <div class="swiper-slide carousel-item-a intro-item bg-image" style="background-image: url(https://file4.batdongsan.com.vn/resize/745x510/2022/06/27/20220627225903-c75e_wm.jpg)">
            <div class="overlay overlay-a"></div>
            <div class="intro-content display-table">
                <div class="table-cell">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="intro-body">
                                    <h1 class="intro-title mb-4 ">
                                        <span class="color-b">204 </span>
                                        <br> Olive Road Two
                                    </h1>
                                    <p class="intro-subtitle intro-price">
                                        <a href="#"><span class="price-a">rent | $ 12.000</span></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="swiper-slide carousel-item-a intro-item bg-image" style="background-image: url(https://file4.batdongsan.com.vn/resize/745x510/2022/06/30/20220630091934-57f9_wm.jpg)">
            <div class="overlay overlay-a"></div>
            <div class="intro-content display-table">
                <div class="table-cell">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="intro-body">
                                    <p class="intro-title-top">Doral, Florida
                                        <br> 78345
                                    </p>
                                    <h1 class="intro-title mb-4">
                                        <span class="color-b">204 </span> Rino
                                        <br> Venda Road Five
                                    </h1>
                                    <p class="intro-subtitle intro-price">
                                        <a href="#"><span class="price-a">rent | $ 12.000</span></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="swiper-slide carousel-item-a intro-item bg-image" style="background-image: url(https://file4.batdongsan.com.vn/resize/745x510/2020/09/30/dYAiw5Kr/20200930140148-a366_wm.jpg)">
            <div class="overlay overlay-a"></div>
            <div class="intro-content display-table">
                <div class="table-cell">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="intro-body">
                                    <p class="intro-title-top">Doral, Florida
                                        <br> 78345
                                    </p>
                                    <h1 class="intro-title mb-4">
                                        <span class="color-b">204 </span> Alira
                                        <br> Roan Road One
                                    </h1>
                                    <p class="intro-subtitle intro-price">
                                        <a href="#"><span class="price-a">rent | $ 12.000</span></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="swiper-pagination"></div>
</div><!-- End Intro Section -->

<main id="main">

    <!-- ======= Services Section ======= -->
    <%--    <section class="section-services section-t8">--%>
    <%--      <div class="container">--%>
    <%--        <div class="row">--%>
    <%--          <div class="col-md-12">--%>
    <%--            <div class="title-wrap d-flex justify-content-between">--%>
    <%--              <div class="title-box">--%>
    <%--                <h2 class="title-a">Our Services</h2>--%>
    <%--              </div>--%>
    <%--            </div>--%>
    <%--          </div>--%>
    <%--        </div>--%>
    <%--        <div class="row">--%>
    <%--          <div class="col-md-4">--%>
    <%--            <div class="card-box-c foo">--%>
    <%--              <div class="card-header-c d-flex">--%>
    <%--                <div class="card-box-ico">--%>
    <%--                  <span class="bi bi-cart"></span>--%>
    <%--                </div>--%>
    <%--                <div class="card-title-c align-self-center">--%>
    <%--                  <h2 class="title-c">Lifestyle</h2>--%>
    <%--                </div>--%>
    <%--              </div>--%>
    <%--              <div class="card-body-c">--%>
    <%--                <p class="content-c">--%>
    <%--                  Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa,--%>
    <%--                  convallis a pellentesque--%>
    <%--                  nec, egestas non nisi.--%>
    <%--                </p>--%>
    <%--              </div>--%>
    <%--              <div class="card-footer-c">--%>
    <%--                <a href="#" class="link-c link-icon">Read more--%>
    <%--                  <span class="bi bi-chevron-right"></span>--%>
    <%--                </a>--%>
    <%--              </div>--%>
    <%--            </div>--%>
    <%--          </div>--%>
    <%--          <div class="col-md-4">--%>
    <%--            <div class="card-box-c foo">--%>
    <%--              <div class="card-header-c d-flex">--%>
    <%--                <div class="card-box-ico">--%>
    <%--                  <span class="bi bi-calendar4-week"></span>--%>
    <%--                </div>--%>
    <%--                <div class="card-title-c align-self-center">--%>
    <%--                  <h2 class="title-c">Loans</h2>--%>
    <%--                </div>--%>
    <%--              </div>--%>
    <%--              <div class="card-body-c">--%>
    <%--                <p class="content-c">--%>
    <%--                  Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Mauris blandit--%>
    <%--                  aliquet elit, eget tincidunt--%>
    <%--                  nibh pulvinar a.--%>
    <%--                </p>--%>
    <%--              </div>--%>
    <%--              <div class="card-footer-c">--%>
    <%--                <a href="#" class="link-c link-icon">Read more--%>
    <%--                  <span class="bi bi-calendar4-week"></span>--%>
    <%--                </a>--%>
    <%--              </div>--%>
    <%--            </div>--%>
    <%--          </div>--%>
    <%--          <div class="col-md-4">--%>
    <%--            <div class="card-box-c foo">--%>
    <%--              <div class="card-header-c d-flex">--%>
    <%--                <div class="card-box-ico">--%>
    <%--                  <span class="bi bi-card-checklist"></span>--%>
    <%--                </div>--%>
    <%--                <div class="card-title-c align-self-center">--%>
    <%--                  <h2 class="title-c">Sell</h2>--%>
    <%--                </div>--%>
    <%--              </div>--%>
    <%--              <div class="card-body-c">--%>
    <%--                <p class="content-c">--%>
    <%--                  Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa,--%>
    <%--                  convallis a pellentesque--%>
    <%--                  nec, egestas non nisi.--%>
    <%--                </p>--%>
    <%--              </div>--%>
    <%--              <div class="card-footer-c">--%>
    <%--                <a href="#" class="link-c link-icon">Read more--%>
    <%--                  <span class="bi bi-chevron-right"></span>--%>
    <%--                </a>--%>
    <%--              </div>--%>
    <%--            </div>--%>
    <%--          </div>--%>
    <%--        </div>--%>
    <%--      </div>--%>
    <%--    </section><!-- End Services Section -->--%>

    <!-- ======= Latest Properties Section ======= -->
    <section class="section-property section-t8">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title-wrap d-flex justify-content-between">
                        <div class="title-box">
                            <h2 class="title-a">Latest Properties</h2>
                        </div>
                        <div class="title-link">
                            <a href="showapartment.jsp">All Property
                                <span class="bi bi-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <c:forEach items="${apartments}" var="a">
            <div id="property-carousel" class="swiper">
                <div class="swiper-wrapper">

                    <div class="carousel-item-b swiper-slide">
                        <div class="card-box-a card-shadow">
                            <div class="img-box-a">
                                <img src="assets/img/property-6.jpg" alt="" class="img-a img-fluid">
                            </div>
                            <div class="card-overlay">
                                <div class="card-overlay-a-content">
                                    <div class="card-header-a">
                                        <h5 class="card-title-a">
                                            ${a.address}
                                        </h5>
                                    </div>
                                    <div class="card-body-a">
                                        <div class="price-box d-flex">
                                            <span class="price-a">${a.price} t???</span>
                                        </div>
                                        <a href="/showapartment?action=showchitiet&idCH=${a.idCH}" class="link-a">Xem chi ti???t
                                            <span class="bi bi-chevron-right"></span>
                                        </a>
                                    </div>
                                    <div class="card-footer-a">
                                        <ul class="card-info d-flex justify-content-around">
                                            <li>
                                                <h4 class="card-info-title">Di???n t??ch</h4>
                                                <span>340m
                            <sup>2</sup>
                          </span>
                                            </li>
                                            <li>
                                                <h4 class="card-info-title">Beds</h4>
                                                <span>2</span>
                                            </li>
                                            <li>
                                                <h4 class="card-info-title">Baths</h4>
                                                <span>4</span>
                                            </li>
                                            <li>
                                                <h4 class="card-info-title">Garages</h4>
                                                <span>1</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End carousel item -->

                    <div class="carousel-item-b swiper-slide">
                        <div class="card-box-a card-shadow">
                            <div class="img-box-a">
                                <img src="assets/img/property-3.jpg" alt="" class="img-a img-fluid">
                            </div>
                            <div class="card-overlay">
                                <div class="card-overlay-a-content">
                                    <div class="card-header-a">
                                        <h2 class="card-title-a">
                                            <a href="showchitiet.jsp">157 West
                                                <br /> Central Park</a>
                                        </h2>
                                    </div>
                                    <div class="card-body-a">
                                        <div class="price-box d-flex">
                                            <span class="price-a">rent | $ 12.000</span>
                                        </div>
                                        <a href="showchitiet.jsp" class="link-a">Click here to view
                                            <span class="bi bi-chevron-right"></span>
                                        </a>
                                    </div>
                                    <div class="card-footer-a">
                                        <ul class="card-info d-flex justify-content-around">
                                            <li>
                                                <h4 class="card-info-title">Area</h4>
                                                <span>340m
                            <sup>2</sup>
                          </span>
                                            </li>
                                            <li>
                                                <h4 class="card-info-title">Beds</h4>
                                                <span>2</span>
                                            </li>
                                            <li>
                                                <h4 class="card-info-title">Baths</h4>
                                                <span>4</span>
                                            </li>
                                            <li>
                                                <h4 class="card-info-title">Garages</h4>
                                                <span>1</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End carousel item -->

                    <div class="carousel-item-b swiper-slide">
                        <div class="card-box-a card-shadow">
                            <div class="img-box-a">
                                <img src="assets/img/property-7.jpg" alt="" class="img-a img-fluid">
                            </div>
                            <div class="card-overlay">
                                <div class="card-overlay-a-content">
                                    <div class="card-header-a">
                                        <h2 class="card-title-a">
                                            <a href="showchitiet.jsp">245 Azabu
                                                <br /> Nishi Park let</a>
                                        </h2>
                                    </div>
                                    <div class="card-body-a">
                                        <div class="price-box d-flex">
                                            <span class="price-a">rent | $ 12.000</span>
                                        </div>
                                        <a href="showchitiet.jsp" class="link-a">Click here to view
                                            <span class="bi bi-chevron-right"></span>
                                        </a>
                                    </div>
                                    <div class="card-footer-a">
                                        <ul class="card-info d-flex justify-content-around">
                                            <li>
                                                <h4 class="card-info-title">Area</h4>
                                                <span>340m
                            <sup>2</sup>
                          </span>
                                            </li>
                                            <li>
                                                <h4 class="card-info-title">Beds</h4>
                                                <span>2</span>
                                            </li>
                                            <li>
                                                <h4 class="card-info-title">Baths</h4>
                                                <span>4</span>
                                            </li>
                                            <li>
                                                <h4 class="card-info-title">Garages</h4>
                                                <span>1</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End carousel item -->

                    <div class="carousel-item-b swiper-slide">
                        <div class="card-box-a card-shadow">
                            <div class="img-box-a">
                                <img src="assets/img/property-10.jpg" alt="" class="img-a img-fluid">
                            </div>
                            <div class="card-overlay">
                                <div class="card-overlay-a-content">
                                    <div class="card-header-a">
                                        <h2 class="card-title-a">
                                            <a href="showchitiet.jsp">204 Montal
                                                <br /> South Bela Two</a>
                                        </h2>
                                    </div>
                                    <div class="card-body-a">
                                        <div class="price-box d-flex">
                                            <span class="price-a">rent | $ 12.000</span>
                                        </div>
                                        <a href="showchitiet.jsp" class="link-a">Click here to view
                                            <span class="bi bi-chevron-right"></span>
                                        </a>
                                    </div>
                                    <div class="card-footer-a">
                                        <ul class="card-info d-flex justify-content-around">
                                            <li>
                                                <h4 class="card-info-title">Area</h4>
                                                <span>340m
                            <sup>2</sup>
                          </span>
                                            </li>
                                            <li>
                                                <h4 class="card-info-title">Beds</h4>
                                                <span>2</span>
                                            </li>
                                            <li>
                                                <h4 class="card-info-title">Baths</h4>
                                                <span>4</span>
                                            </li>
                                            <li>
                                                <h4 class="card-info-title">Garages</h4>
                                                <span>1</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End carousel item -->
                </div>
            </div>
            </c:forEach>
            <div class="propery-carousel-pagination carousel-pagination"></div>

        </div>
    </section><!-- End Latest Properties Section -->

    <!-- ======= Agents Section ======= -->
    <section class="section-agents section-t8">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title-wrap d-flex justify-content-between">
                        <div class="title-box">
                            <h2 class="title-a">Best Agents</h2>
                        </div>
                        <div class="title-link">
                            <a href="agents-grid.html">All Agents
                                <span class="bi bi-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="card-box-d">
                        <div class="card-img-d">
                            <img src="assets/img/agent-4.jpg" alt="" class="img-d img-fluid">
                        </div>
                        <div class="card-overlay card-overlay-hover">
                            <div class="card-header-d">
                                <div class="card-title-d align-self-center">
                                    <h3 class="title-d">
                                        <a href="showcustormmer.jsp" class="link-two">Margaret Sotillo
                                            <br> Escala</a>
                                    </h3>
                                </div>
                            </div>
                            <div class="card-body-d">
                                <p class="content-d color-text-a">
                                    Sed porttitor lectus nibh, Cras ultricies ligula sed magna dictum porta two.
                                </p>
                                <div class="info-agents color-a">
                                    <p>
                                        <strong>Phone: </strong> +54 356 945234
                                    </p>
                                    <p>
                                        <strong>Email: </strong> agents@example.com
                                    </p>
                                </div>
                            </div>
                            <div class="card-footer-d">
                                <div class="socials-footer d-flex justify-content-center">
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a href="#" class="link-one">
                                                <i class="bi bi-facebook" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#" class="link-one">
                                                <i class="bi bi-twitter" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#" class="link-one">
                                                <i class="bi bi-instagram" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#" class="link-one">
                                                <i class="bi bi-linkedin" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card-box-d">
                        <div class="card-img-d">
                            <img src="assets/img/agent-1.jpg" alt="" class="img-d img-fluid">
                        </div>
                        <div class="card-overlay card-overlay-hover">
                            <div class="card-header-d">
                                <div class="card-title-d align-self-center">
                                    <h3 class="title-d">
                                        <a href="showcustormmer.jsp" class="link-two">Stiven Spilver
                                            <br> Darw</a>
                                    </h3>
                                </div>
                            </div>
                            <div class="card-body-d">
                                <p class="content-d color-text-a">
                                    Sed porttitor lectus nibh, Cras ultricies ligula sed magna dictum porta two.
                                </p>
                                <div class="info-agents color-a">
                                    <p>
                                        <strong>Phone: </strong> +54 356 945234
                                    </p>
                                    <p>
                                        <strong>Email: </strong> agents@example.com
                                    </p>
                                </div>
                            </div>
                            <div class="card-footer-d">
                                <div class="socials-footer d-flex justify-content-center">
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a href="#" class="link-one">
                                                <i class="bi bi-facebook" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#" class="link-one">
                                                <i class="bi bi-twitter" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#" class="link-one">
                                                <i class="bi bi-instagram" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#" class="link-one">
                                                <i class="bi bi-linkedin" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card-box-d">
                        <div class="card-img-d">
                            <img src="assets/img/agent-5.jpg" alt="" class="img-d img-fluid">
                        </div>
                        <div class="card-overlay card-overlay-hover">
                            <div class="card-header-d">
                                <div class="card-title-d align-self-center">
                                    <h3 class="title-d">
                                        <a href="showcustormmer.jsp" class="link-two">Emma Toledo
                                            <br> Cascada</a>
                                    </h3>
                                </div>
                            </div>
                            <div class="card-body-d">
                                <p class="content-d color-text-a">
                                    Sed porttitor lectus nibh, Cras ultricies ligula sed magna dictum porta two.
                                </p>
                                <div class="info-agents color-a">
                                    <p>
                                        <strong>Phone: </strong> +54 356 945234
                                    </p>
                                    <p>
                                        <strong>Email: </strong> agents@example.com
                                    </p>
                                </div>
                            </div>
                            <div class="card-footer-d">
                                <div class="socials-footer d-flex justify-content-center">
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a href="#" class="link-one">
                                                <i class="bi bi-facebook" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#" class="link-one">
                                                <i class="bi bi-twitter" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#" class="link-one">
                                                <i class="bi bi-instagram" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#" class="link-one">
                                                <i class="bi bi-linkedin" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- End Agents Section -->

    <!-- ======= Latest News Section ======= -->
    <section class="section-news section-t8">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title-wrap d-flex justify-content-between">
                        <div class="title-box">
                            <h2 class="title-a">B???t ?????ng s???n theo ?????a ??i???m</h2>
                        </div>
                        <div class="title-link">
                            <a href="blog-grid.jsp">All News
                                <span class="bi bi-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div id="news-carousel" class="swiper">
                <div class="swiper-wrapper">

                    <div class="carousel-item-c swiper-slide">
                        <div class="card-box-b card-shadow news-box">
                            <div class="img-box-b">
                                <img src="https://www.invert.vn/media/uploads/uploads/04152713-thanh-pho-truc-thuoc-trung-uong-hai-phong.jpg" alt="" class="img-b img-fluid">
                            </div>
                            <div class="card-overlay">
                                <div class="card-header-b">
                                    <div class="card-title-b">
                                        <h4 class="title-2">
                                            <a href="blog-single.html">Th??nh Ph??? H???i Ph??ng</a>
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End carousel item -->

                    <div class="carousel-item-c swiper-slide">
                        <div class="card-box-b card-shadow news-box">
                            <div class="img-box-b">
                                <img src="https://www.invert.vn/media/uploads/uploads/04152844-thanh-pho-truc-thuoc-trung-uong-hcm.jpg" alt="" class="img-b img-fluid">
                            </div>
                            <div class="card-overlay">
                                <div class="card-header-b">
                                    <div class="card-title-b">
                                        <h2 class="title-2">
                                            <a href="blog-single.html">Th??nh Ph??? H??? Ch?? Minh</a>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End carousel item -->

                    <div class="carousel-item-c swiper-slide">
                        <div class="card-box-b card-shadow news-box">
                            <div class="img-box-b">
                                <img src="https://www.invert.vn/media/uploads/uploads/04152617-thanh-pho-truc-thuoc-trung-uong-ha-noi.jpg" alt="" class="img-b img-fluid">
                            </div>
                            <div class="card-overlay">
                                <div class="card-header-b">
                                    <div class="card-title-b">
                                        <h2 class="title-2">
                                            <a href="blog-single.html">Th??nh Ph??? H?? N???i</a>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End carousel item -->

                    <div class="carousel-item-c swiper-slide">
                        <div class="card-box-b card-shadow news-box">
                            <div class="img-box-b">
                                <img src="https://www.invert.vn/media/uploads/uploads/04152916-thanh-pho-can-tho.jpg" alt="" class="img-b img-fluid">
                            </div>
                            <div class="card-overlay">
                                <div class="card-header-b">
                                    <div class="card-title-b">
                                        <h2 class="title-2">
                                            <a href="blog-single.html">Th??nh Ph??? C???n Th??</a>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End carousel item -->

                </div>
            </div>

            <div class="news-carousel-pagination carousel-pagination"></div>
        </div>
    </section><!-- End Latest News Section -->

    <!-- ======= Testimonials Section ======= -->
    <section class="section-testimonials section-t8 nav-arrow-a">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title-wrap d-flex justify-content-between">
                        <div class="title-box">
                            <h2 class="title-a">Testimonials</h2>
                        </div>
                    </div>
                </div>
            </div>

            <div id="testimonial-carousel" class="swiper">
                <div class="swiper-wrapper">

                    <div class="carousel-item-a swiper-slide">
                        <div class="testimonials-box">
                            <div class="row">
                                <div class="col-sm-12 col-md-6">
                                    <div class="testimonial-img">
                                        <img src="assets/img/testimonial-1.jpg" alt="" class="img-fluid">
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-6">
                                    <div class="testimonial-ico">
                                        <i class="bi bi-chat-quote-fill"></i>
                                    </div>
                                    <div class="testimonials-content">
                                        <p class="testimonial-text">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, cupiditate ea nam praesentium
                                            debitis hic ber quibusdam
                                            voluptatibus officia expedita corpori.
                                        </p>
                                    </div>
                                    <div class="testimonial-author-box">
                                        <img src="assets/img/mini-testimonial-1.jpg" alt="" class="testimonial-avatar">
                                        <h5 class="testimonial-author">Albert & Erika</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End carousel item -->

                    <div class="carousel-item-a swiper-slide">
                        <div class="testimonials-box">
                            <div class="row">
                                <div class="col-sm-12 col-md-6">
                                    <div class="testimonial-img">
                                        <img src="assets/img/testimonial-2.jpg" alt="" class="img-fluid">
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-6">
                                    <div class="testimonial-ico">
                                        <i class="bi bi-chat-quote-fill"></i>
                                    </div>
                                    <div class="testimonials-content">
                                        <p class="testimonial-text">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, cupiditate ea nam praesentium
                                            debitis hic ber quibusdam
                                            voluptatibus officia expedita corpori.
                                        </p>
                                    </div>
                                    <div class="testimonial-author-box">
                                        <img src="assets/img/mini-testimonial-2.jpg" alt="" class="testimonial-avatar">
                                        <h5 class="testimonial-author">Pablo & Emma</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End carousel item -->

                </div>
            </div>
            <div class="testimonial-carousel-pagination carousel-pagination"></div>

        </div>
    </section><!-- End Testimonials Section -->

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<section class="section-footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-4">
                <div class="widget-a">
                    <div class="w-header-a">
                        <h3 class="w-title-a text-brand"><img src="https://staticfile.batdongsan.com.vn/images/logo/logo-black.svg" alt=""></h3>
                    </div>
                    <div class="w-body-a">
                        <p class="w-text-a color-text-a">
                            C??NG TY C??? PH???N PROPERTYGURU VI???T NAM
                        </p>
                    </div>
                    <div class="w-footer-a">
                        <ul class="list-unstyled">
                            <li class="color-a">
                                <span class="color-text-a">Address :</span> T???ng 31, Keangnam Hanoi Landmark, Ph???m H??ng, Nam T??? Li??m, H?? N???i
                            </li>
                            <li class="color-a">
                                <span class="color-text-a">Phone :</span> (024) 3562 5939 - (024) 3562 5940
                            </li>
                            <li class="color-a">
                                <span class="color-text-a">Email :</span> batdongsan@gmai.com.vn
                            </li>
                            <li class="color-a">
                                <span class="color-text-a">Hotline :</span> 1900 1881
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-4 section-md-t3">
                <div class="widget-a">
                    <div class="w-header-a">
                        <h3 class="w-title-a text-brand">The Company</h3>
                    </div>
                    <div class="w-body-a">
                        <div class="w-body-a">
                            <ul class="list-unstyled">
                                <li class="item-list-a">
                                    <i class="bi bi-chevron-right"></i> <a href="#">Site Map</a>
                                </li>
                                <li class="item-list-a">
                                    <i class="bi bi-chevron-right"></i> <a href="#">Legal</a>
                                </li>
                                <li class="item-list-a">
                                    <i class="bi bi-chevron-right"></i> <a href="#">Agent Admin</a>
                                </li>
                                <li class="item-list-a">
                                    <i class="bi bi-chevron-right"></i> <a href="#">Careers</a>
                                </li>
                                <li class="item-list-a">
                                    <i class="bi bi-chevron-right"></i> <a href="#">Affiliate</a>
                                </li>
                                <li class="item-list-a">
                                    <i class="bi bi-chevron-right"></i> <a href="#">Privacy Policy</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-4 section-md-t3">
                <div class="widget-a">
                    <div class="w-header-a">
                        <h3 class="w-title-a text-brand">International sites</h3>
                    </div>
                    <div class="w-body-a">
                        <ul class="list-unstyled">
                            <li class="item-list-a">
                                <i class="bi bi-chevron-right"></i> <a href="#">Venezuela</a>
                            </li>
                            <li class="item-list-a">
                                <i class="bi bi-chevron-right"></i> <a href="#">China</a>
                            </li>
                            <li class="item-list-a">
                                <i class="bi bi-chevron-right"></i> <a href="#">Hong Kong</a>
                            </li>
                            <li class="item-list-a">
                                <i class="bi bi-chevron-right"></i> <a href="#">Argentina</a>
                            </li>
                            <li class="item-list-a">
                                <i class="bi bi-chevron-right"></i> <a href="#">Singapore</a>
                            </li>
                            <li class="item-list-a">
                                <i class="bi bi-chevron-right"></i> <a href="#">Philippines</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <nav class="nav-footer">
                    <ul class="list-inline">
                        <li class="list-inline-item">
                            <a href="#">Home</a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">About</a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">Property</a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">Blog</a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">Contact</a>
                        </li>
                    </ul>
                </nav>
                <div class="socials-a">
                    <ul class="list-inline">
                        <li class="list-inline-item">
                            <a href="#">
                                <i class="bi bi-facebook" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">
                                <i class="bi bi-twitter" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">
                                <i class="bi bi-instagram" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">
                                <i class="bi bi-linkedin" aria-hidden="true"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="copyright-footer">
                    <p class="copyright color-text-a">
                        &copy; Copyright
                        <span class="color-a">EstateAgency</span> All Rights Reserved.
                    </p>
                </div>
                <div class="credits">
                    <!--
                    All the links in the footer should remain intact.
                    You can delete the links only if you purchased the pro version.
                    Licensing information: https://bootstrapmade.com/license/
                    Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=EstateAgency
                  -->
                    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </div>
        </div>
    </div>
</footer><!-- End  Footer -->

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>

</body>

</html>