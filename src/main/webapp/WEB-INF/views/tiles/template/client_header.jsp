<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- start per-loader -->
<div class="loader-container">
    <div class="loader-ripple">
        <div></div>
        <div></div>
    </div>
</div>
<!-- end per-loader -->

<!-- ================================
            START HEADER AREA
================================= -->
<header class="header-area">
    <div class="header-menu-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="menu-full-width">
                        <div class="logo">
                            <a href="index.html"><img src="/images/logo.png" alt="logo"></a>
                        </div><!-- end logo -->
                        <div class="main-menu-content">
                            <nav>
                                <ul>
                                    <li>
                                        <a href="#">home <span class="la la-angle-down"></span></a>
                                        <ul class="dropdown-menu-item">
                                            <li><a href="index.html">home one</a></li>
                                            <li><a href="index2.html">home two</a></li>
                                            <li><a href="index3.html">home three</a></li>
                                            <li><a href="index4.html">home four <span class="new-page-badge">new</span></a></li>
                                            <li><a href="index5.html">home five <span class="new-page-badge">new</span></a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">categories <span class="la la-angle-down"></span></a>
                                        <ul class="dropdown-menu-item">
                                            <li><a href="all-categories.html">all categories</a></li>
                                            <li><a href="all-locations.html">all locations</a></li>
                                            <li><a href="top-place.html">top places </a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">listings <span class="la la-angle-down"></span></a>
                                        <ul class="dropdown-menu-item">
                                            <li><a href="listing-grid.html">listing grid</a></li>
                                            <li><a href="list-map-view.html">map view </a></li>
                                            <li><a href="list-map-view2.html">map view 2 </a></li>
                                            <li><a href="listing-list.html">listing list </a></li>
                                            <li><a href="list-left-sidebar.html">left sidebar  </a></li>
                                            <li><a href="list-right-sidebar.html">right sidebar  </a></li>
                                            <li><a href="listing-details.html">listing details</a></li>
                                            <li><a href="add-listing.html">add listing</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">pages <span class="la la-angle-down"></span></a>
                                        <ul class="dropdown-menu-item">
                                            <li><a href="user-profile.html">user profile</a></li>
                                            <li><a href="top-author.html">top authors </a></li>
                                            <li><a href="mypage/myPage.do">dashboard</a></li>
                                            <li><a href="wecamp/booking.do">booking  </a></li>
                                            <li><a href="booking-confirmation.html">booking confirmation </a></li>
                                            <li><a href="invoice.html">invoice</a></li>
                                            <li><a href="pricing.html">pricing</a></li>
                                            <li><a href="about.html">about</a></li>
                                            <li><a href="faq.html">faq</a></li>
                                            <li><a href="contact.html">contact</a></li>
                                            <li><a href="page-404.html">404 page</a></li>
                                            <li><a href="recover.html">recover pass <span class="new-page-badge">new</span></a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">blog <span class="la la-angle-down"></span></a>
                                        <ul class="dropdown-menu-item">
                                            <li><a href="blog-full-width.html">full width <span class="new-page-badge">new</span></a></li>
                                            <li><a href="blog-grid.html">blog grid</a></li>
                                            <li><a href="blog-left-sidebar.html">left sidebar </a></li>
                                            <li><a href="blog-right-sidebar.html">right sidebar </a></li>
                                            <li><a href="blog-single.html">blog detail</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                        </div><!-- end main-menu-content -->
                        <div class="logo-right-content">
                            <ul class="author-access-list">
                                <li>
                                    <a href="login.html">login</a>
                                    <span class="or-text">or</span>
                                    <a href="sign-up.html">sign up</a>
                                </li>
                                <li>
                                    <a href="add-listing.html" class="theme-btn">
                                        <span class="la la-plus-circle"></span>
                                        add listing
                                    </a>
                                </li>
                            </ul>
                            <div class="side-menu-open">
                                <span class="menu__bar"></span>
                                <span class="menu__bar"></span>
                                <span class="menu__bar"></span>
                            </div><!-- end side-menu-open -->
                            <div class="side-user-menu-open">
                                <span class="la la-user"></span>
                            </div><!-- end side-user-menu-open -->
                        </div><!-- end logo-right-content -->
                    </div><!-- end menu-full-width -->
                </div><!-- end col-lg-12 -->
            </div><!-- end row -->
        </div><!-- end container-fluid -->
    </div><!-- end header-menu-wrapper -->
    <div class="side-nav-container">
        <div class="humburger-menu">
            <div class="humburger-menu-lines side-menu-close"></div><!-- end humburger-menu-lines -->
        </div><!-- end humburger-menu -->
        <div class="side-menu-wrap">
            <ul class="side-menu-ul">
                <li>
                    <a href="#">home <span class="la la-angle-down"></span></a>
                    <ul class="dropdown-menu-item">
                        <li><a href="index.html">home one</a></li>
                        <li><a href="index2.html">home two  </a></li>
                        <li><a href="index3.html">home three</a></li>
                        <li><a href="index4.html">home four <span class="new-page-badge">new</span></a></li>
                        <li><a href="index5.html">home five <span class="new-page-badge">new</span></a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">categories <span class="la la-angle-down"></span></a>
                    <ul class="dropdown-menu-item">
                        <li><a href="all-categories.html">all categories</a></li>
                        <li><a href="all-locations.html">all locations</a></li>
                        <li><a href="top-place.html">top places </a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">listings <span class="la la-angle-down"></span></a>
                    <ul class="dropdown-menu-item">
                        <li><a href="listing-grid.html">listing grid</a></li>
                        <li><a href="list-map-view.html">map view  </a></li>
                        <li><a href="list-map-view2.html">map view 2  </a></li>
                        <li><a href="listing-list.html">listing list  </a></li>
                        <li><a href="list-left-sidebar.html">left sidebar  </a></li>
                        <li><a href="list-right-sidebar.html">right sidebar </a></li>
                        <li><a href="listing-details.html">listing details</a></li>
                        <li><a href="add-listing.html">add listing</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">pages <span class="la la-angle-down"></span></a>
                    <ul class="dropdown-menu-item">
                        <li><a href="user-profile.html">user profile</a></li>
                        <li><a href="top-author.html">top authors </a></li>
                        <li><a href="dashboard.html">dashboard</a></li>
                        <li><a href="booking.html">booking  </a></li>
                        <li><a href="booking-confirmation.html">booking confirmation </a></li>
                        <li><a href="invoice.html">invoice</a></li>
                        <li><a href="pricing.html">pricing</a></li>
                        <li><a href="about.html">about</a></li>
                        <li><a href="faq.html">faq</a></li>
                        <li><a href="contact.html">contact</a></li>
                        <li><a href="page-404.html">404 page</a></li>
                        <li><a href="recover.html">recover pass<span class="new-page-badge">new</span></a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">blog <span class="la la-angle-down"></span></a>
                    <ul class="dropdown-menu-item">
                        <li><a href="blog-full-width.html">full width <span class="new-page-badge">new</span></a></li>
                        <li><a href="blog-grid.html">blog grid</a></li>
                        <li><a href="blog-left-sidebar.html">left sidebar </a></li>
                        <li><a href="blog-right-sidebar.html">right sidebar </a></li>
                        <li><a href="blog-single.html">blog detail</a></li>
                    </ul>
                </li>
            </ul>
            <div class="side-nav-button">
                <a href="login.html" class="theme-btn">login</a>
                <a href="sign-up.html" class="theme-btn">sign up</a>
            </div><!-- end side-nav-button -->
        </div><!-- end side-menu-wrap -->
    </div><!-- end side-nav-container -->
    <div class="side-user-panel">
        <div class="humburger-menu">
            <div class="humburger-menu-lines side-menu-close"></div><!-- end humburger-menu-lines -->
        </div><!-- end humburger-menu -->
        <div class="side-menu-wrap side-user-menu-wrap">
            <div class="side-user-img">
                <img src="/images/team2.jpg" alt="image">
                <h4 class="su__name">Mark Williamson</h4>
                <span class="su__meta">Joined 3 years ago</span>
                <div class="avatar-icon">
                    <a href="dashboard.html" data-toggle="tooltip" data-placement="top" title="Change Avatar"> <i class="fa fa-plus"></i></a>
                </div>
            </div>
            <ul class="side-menu-ul">
                <li><a href="dashboard.html"><span class="la la-user user-icon"></span> My Profile</a></li>
                <li><a href="dashboard.html"><span class="la la-list-alt user-icon"></span> My Listings</a></li>
                <li><a href="dashboard.html"><span class="la la-bookmark-o user-icon"></span> My Bookmarks</a></li>
                <li><a href="dashboard.html"><span class="la la-plus-circle user-icon"></span> add listing</a></li>
                <li><div class="dropdown-divider"></div></li>
                <li><a href="#"><span class="la la-question user-icon"></span> help</a></li>
                <li><a href="#"><span class="la la-gear user-icon"></span> Settings</a></li>
                <li><a href="#"><span class="la la-power-off user-icon"></span> Sign Out</a></li>
            </ul>
            <div class="side-user-search contact-form-action">
                <form method="post">
                    <div class="form-group mb-0">
                        <span class="la la-search form-icon"></span>
                        <input class="form-control" type="search" name="search-field" placeholder="Search by keywords">
                    </div>
                    <button type="button" class="theme-btn border-0">
                        Search
                    </button>
                </form>
            </div><!-- end sidebar-widget -->
        </div><!-- end side-menu-wrap -->
    </div><!-- end side-user-panel -->
</header>
<!-- ================================
         END HEADER AREA
================================= -->
