<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <style>
    
    .card-image:after {
		background-color:#FFFFFF !important;
		opacity: 0% !important;
    }


  </style>

<!-- ================================
    START HERO-WRAPPER AREA
================================= -->

<section class="hero-wrapper hero-wrapper4">
    <div class="hero-overlay"></div><!-- end hero-overlay -->
    <div class="video-bg">
        <video src="video/slice-video.mp4" autoplay="true" muted loop="true"></video>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="hero-heading">
                    <div class="section-heading">
                        <h2 class="sec__title">You camp? We camp!</h2>
                        <p class="sec__desc">
                           머물고 쉬다 갈 캠핑장 찾아볼까요?
                        </p>
                    </div>
                </div><!-- end hero-heading -->
                <div class="main-search-input">
                    <div class="main-search-input-item">
                        <div class="contact-form-action">
                            <form action="#">
                                <div class="form-group mb-0">
                                    <span class="la la-search form-icon"></span>
                                    <input class="form-control" type="text" placeholder="What are you looking for?">
                                </div>
                            </form>
                        </div>
                    </div><!-- end main-search-input-item -->
                    <div class="main-search-input-item location">
                        <select class="select-option-field">
                            <option value>Select a Location</option>
                            <option value="AF">Afghanistan</option>
                            <option value="AX">Åland Islands</option>
                            <option value="AL">Albania</option>
                            <option value="DZ">Algeria</option>
                            <option value="AD">Andorra</option>
                            <option value="AO">Angola</option>
                            <option value="AI">Anguilla</option>
                            <option value="AQ">Antarctica</option>
                            <option value="AG">Antigua &amp; Barbuda</option>
                            <option value="AR">Argentina</option>
                            <option value="AM">Armenia</option>
                            <option value="AW">Aruba</option>
                            <option value="AC">Ascension Island</option>
                            <option value="AU">Australia</option>
                            <option value="AT">Austria</option>
                            <option value="AZ">Azerbaijan</option>
                            <option value="BS">Bahamas</option>
                            <option value="BH">Bahrain</option>
                            <option value="BD">Bangladesh</option>
                            <option value="BB">Barbados</option>
                            <option value="BY">Belarus</option>
                            <option value="BE">Belgium</option>
                            <option value="BZ">Belize</option>
                            <option value="BJ">Benin</option>
                            <option value="BM">Bermuda</option>
                            <option value="BT">Bhutan</option>
                            <option value="BO">Bolivia</option>
                            <option value="BA">Bosnia &amp; Herzegovina</option>
                            <option value="BW">Botswana</option>
                            <option value="BV">Bouvet Island</option>
                            <option value="BR">Brazil</option>
                            <option value="IO">British Indian Ocean Territory</option>
                            <option value="VG">British Virgin Islands</option>
                            <option value="BN">Brunei</option>
                            <option value="BG">Bulgaria</option>
                            <option value="BF">Burkina Faso</option>
                            <option value="BI">Burundi</option>
                            <option value="KH">Cambodia</option>
                            <option value="CM">Cameroon</option>
                            <option value="CA">Canada</option>
                            <option value="CV">Cape Verde</option>
                            <option value="BQ">Caribbean Netherlands</option>
                            <option value="KY">Cayman Islands</option>
                            <option value="CF">Central African Republic</option>
                            <option value="TD">Chad</option>
                            <option value="CL">Chile</option>
                            <option value="CN">China</option>
                            <option value="CO">Colombia</option>
                            <option value="KM">Comoros</option>
                            <option value="CG">Congo - Brazzaville</option>
                            <option value="CD">Congo - Kinshasa</option>
                            <option value="CK">Cook Islands</option>
                            <option value="CR">Costa Rica</option>
                            <option value="CI">Côte d’Ivoire</option>
                            <option value="HR">Croatia</option>
                            <option value="CW">Curaçao</option>
                            <option value="CY">Cyprus</option>
                            <option value="CZ">Czechia</option>
                            <option value="DK">Denmark</option>
                            <option value="DJ">Djibouti</option>
                            <option value="DM">Dominica</option>
                            <option value="DO">Dominican Republic</option>
                            <option value="EC">Ecuador</option>
                            <option value="EG">Egypt</option>
                            <option value="SV">El Salvador</option>
                            <option value="GQ">Equatorial Guinea</option>
                            <option value="ER">Eritrea</option>
                            <option value="EE">Estonia</option>
                            <option value="SZ">Eswatini</option>
                            <option value="ET">Ethiopia</option>
                            <option value="FK">Falkland Islands</option>
                            <option value="FO">Faroe Islands</option>
                            <option value="FJ">Fiji</option>
                            <option value="FI">Finland</option>
                            <option value="FR">France</option>
                            <option value="GF">French Guiana</option>
                            <option value="PF">French Polynesia</option>
                            <option value="TF">French Southern Territories</option>
                            <option value="GA">Gabon</option>
                            <option value="GM">Gambia</option>
                            <option value="GE">Georgia</option>
                            <option value="DE">Germany</option>
                            <option value="GH">Ghana</option>
                            <option value="GI">Gibraltar</option>
                            <option value="GR">Greece</option>
                            <option value="GL">Greenland</option>
                            <option value="GD">Grenada</option>
                            <option value="GP">Guadeloupe</option>
                            <option value="GU">Guam</option>
                            <option value="GT">Guatemala</option>
                            <option value="GG">Guernsey</option>
                            <option value="GN">Guinea</option>
                            <option value="GW">Guinea-Bissau</option>
                            <option value="GY">Guyana</option>
                            <option value="HT">Haiti</option>
                            <option value="HN">Honduras</option>
                            <option value="HK">Hong Kong SAR China</option>
                            <option value="HU">Hungary</option>
                            <option value="IS">Iceland</option>
                            <option value="IN">India</option>
                            <option value="ID">Indonesia</option>
                            <option value="IR">Iran</option>
                            <option value="IQ">Iraq</option>
                            <option value="IE">Ireland</option>
                            <option value="IM">Isle of Man</option>
                            <option value="IL">Israel</option>
                            <option value="IT">Italy</option>
                            <option value="JM">Jamaica</option>
                            <option value="JP">Japan</option>
                            <option value="JE">Jersey</option>
                            <option value="JO">Jordan</option>
                            <option value="KZ">Kazakhstan</option>
                            <option value="KE">Kenya</option>
                            <option value="KI">Kiribati</option>
                            <option value="XK">Kosovo</option>
                            <option value="KW">Kuwait</option>
                            <option value="KG">Kyrgyzstan</option>
                            <option value="LA">Laos</option>
                            <option value="LV">Latvia</option>
                            <option value="LB">Lebanon</option>
                            <option value="LS">Lesotho</option>
                            <option value="LR">Liberia</option>
                            <option value="LY">Libya</option>
                            <option value="LI">Liechtenstein</option>
                            <option value="LT">Lithuania</option>
                            <option value="LU">Luxembourg</option>
                            <option value="MO">Macao SAR China</option>
                            <option value="MG">Madagascar</option>
                            <option value="MW">Malawi</option>
                            <option value="MY">Malaysia</option>
                            <option value="MV">Maldives</option>
                            <option value="ML">Mali</option>
                            <option value="MT">Malta</option>
                            <option value="MQ">Martinique</option>
                            <option value="MR">Mauritania</option>
                            <option value="MU">Mauritius</option>
                            <option value="YT">Mayotte</option>
                            <option value="MX">Mexico</option>
                            <option value="MD">Moldova</option>
                            <option value="MC">Monaco</option>
                            <option value="MN">Mongolia</option>
                            <option value="ME">Montenegro</option>
                            <option value="MS">Montserrat</option>
                            <option value="MA">Morocco</option>
                            <option value="MZ">Mozambique</option>
                            <option value="MM">Myanmar (Burma)</option>
                            <option value="NA">Namibia</option>
                            <option value="NR">Nauru</option>
                            <option value="NP">Nepal</option>
                            <option value="NL">Netherlands</option>
                            <option value="NC">New Caledonia</option>
                            <option value="NZ">New Zealand</option>
                            <option value="NI">Nicaragua</option>
                            <option value="NE">Niger</option>
                            <option value="NG">Nigeria</option>
                            <option value="NU">Niue</option>
                            <option value="MK">North Macedonia</option>
                            <option value="NO">Norway</option>
                            <option value="OM">Oman</option>
                            <option value="PK">Pakistan</option>
                            <option value="PS">Palestinian Territories</option>
                            <option value="PA">Panama</option>
                            <option value="PG">Papua New Guinea</option>
                            <option value="PY">Paraguay</option>
                            <option value="PE">Peru</option>
                            <option value="PH">Philippines</option>
                            <option value="PN">Pitcairn Islands</option>
                            <option value="PL">Poland</option>
                            <option value="PT">Portugal</option>
                            <option value="PR">Puerto Rico</option>
                            <option value="QA">Qatar</option>
                            <option value="RE">Réunion</option>
                            <option value="RO">Romania</option>
                            <option value="RU">Russia</option>
                            <option value="RW">Rwanda</option>
                            <option value="WS">Samoa</option>
                            <option value="SM">San Marino</option>
                            <option value="ST">São Tomé &amp; Príncipe</option>
                            <option value="SA">Saudi Arabia</option>
                            <option value="SN">Senegal</option>
                            <option value="RS">Serbia</option>
                            <option value="SC">Seychelles</option>
                            <option value="SL">Sierra Leone</option>
                            <option value="SG">Singapore</option>
                            <option value="SX">Sint Maarten</option>
                            <option value="SK">Slovakia</option>
                            <option value="SI">Slovenia</option>
                            <option value="SB">Solomon Islands</option>
                            <option value="SO">Somalia</option>
                            <option value="ZA">South Africa</option>
                            <option value="GS">South Georgia &amp; South Sandwich Islands</option>
                            <option value="KR">South Korea</option>
                            <option value="SS">South Sudan</option>
                            <option value="ES">Spain</option>
                            <option value="LK">Sri Lanka</option>
                            <option value="BL">St. Barthélemy</option>
                            <option value="SH">St. Helena</option>
                            <option value="KN">St. Kitts &amp; Nevis</option>
                            <option value="LC">St. Lucia</option>
                            <option value="MF">St. Martin</option>
                            <option value="PM">St. Pierre &amp; Miquelon</option>
                            <option value="VC">St. Vincent &amp; Grenadines</option>
                            <option value="SR">Suriname</option>
                            <option value="SJ">Svalbard &amp; Jan Mayen</option>
                            <option value="SE">Sweden</option>
                            <option value="CH">Switzerland</option>
                            <option value="TW">Taiwan</option>
                            <option value="TJ">Tajikistan</option>
                            <option value="TZ">Tanzania</option>
                            <option value="TH">Thailand</option>
                            <option value="TL">Timor-Leste</option>
                            <option value="TG">Togo</option>
                            <option value="TK">Tokelau</option>
                            <option value="TO">Tonga</option>
                            <option value="TT">Trinidad &amp; Tobago</option>
                            <option value="TA">Tristan da Cunha</option>
                            <option value="TN">Tunisia</option>
                            <option value="TR">Turkey</option>
                            <option value="TM">Turkmenistan</option>
                            <option value="TC">Turks &amp; Caicos Islands</option>
                            <option value="TV">Tuvalu</option>
                            <option value="UG">Uganda</option>
                            <option value="UA">Ukraine</option>
                            <option value="AE">United Arab Emirates</option>
                            <option value="GB">United Kingdom</option>
                            <option value="US">United States</option>
                            <option value="UY">Uruguay</option>
                            <option value="UZ">Uzbekistan</option>
                            <option value="VU">Vanuatu</option>
                            <option value="VA">Vatican City</option>
                            <option value="VE">Venezuela</option>
                            <option value="VN">Vietnam</option>
                            <option value="WF">Wallis &amp; Futuna</option>
                            <option value="EH">Western Sahara</option>
                            <option value="YE">Yemen</option>
                            <option value="ZM">Zambia</option>
                            <option value="ZW">Zimbabwe</option>
                        </select>
                    </div><!-- end main-search-input-item -->
                    <div class="main-search-input-item category">
                        <select class="select-option-field-2">
                            <option value >Select a Category</option>
                            <option value="1">Shops</option>
                            <option value="2">Hotels</option>
                            <option value="3">Foods & Restaurants</option>
                            <option value="4">Fitness</option>
                            <option value="5">Travel</option>
                            <option value="6">Salons</option>
                            <option value="7">Event</option>
                            <option value="8">Business</option>
                        </select>
                    </div><!-- end main-search-input-item -->
                    <div class="main-search-input-btn">
                        <button class="button theme-btn" type="submit">Search</button>
                    </div><!-- end main-search-input-btn -->
                </div><!-- end main-search-input -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
    <div class="hero-svg-content text-center">
        <i class="fa fa-angle-down"></i>
    </div>
</section><!-- end hero-wrapper -->
<!-- ================================
    END HERO-WRAPPER AREA
================================= -->

<!-- ================================
    START CARD AREA
================================= -->
<section class="card-area text-center padding-top-100px padding-bottom-100px">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-heading">
                
                    <h2 class="sec__title before-none pt-0">가장 많이 예약한 캠핑장</h2>
                    <br/><div
					  class="fb-like"
					  data-share="true"
					  data-width="450"
					  data-show-faces="true">
					</div>
                    <p class="sec__desc">
                        Morbi convallis bibendum urna ut viverra. Maecenas quis consequat libero, <br>
                        a feugiat eros. Nunc ut lacinia tortors.
                    </p>
                </div><!-- end section-heading -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="card-carousel mt-5">
                    <div class="card-item">
                        <a href="listing-details.html" class="card-image-wrap">
                            <div class="card-image">
                                <img src="images/img28.jpg" class="card__img" alt="">
                                <span class="badge">now open</span>
                                <span class="badge-toggle" data-toggle="tooltip" data-placement="bottom" title="22 Likes">
                                    <i class="la la-heart-o"></i>
                                </span>
                            </div>
                        </a>
                        <div class="card-content-wrap">
                            <div class="card-content">
                                <a href="listing-details.html">
                                    <h5 class="card-meta"><span class="la la-cutlery"></span> Restaurant</h5>
                                    <h4 class="card-title">Favorite Place Food Bank
                                        <i class="fa fa-check-circle" data-toggle="tooltip" data-placement="top" title="Claimed"></i>
                                    </h4>
                                    <p class="card-sub">Bishop Avenue, New York</p>
                                </a>
                                <a href="#" class="author-img">
                                    <img src="images/small-team1.jpg" alt="author-img">
                                </a>
                                <ul class="info-list padding-top-20px">
                                    <li><span class="la la-phone"></span> (416) 551-0589</li>
                                    <li><span class="la la-link"></span>
                                        <a href="#"> www.mysitelink.com</a>
                                    </li>
                                    <li><span class="la la-calendar-check-o"></span>
                                        Posted 1 month ago
                                    </li>
                                </ul>
                            </div>
                            <div class="rating-row">
                                <div class="rating-rating">
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star-half-full"></span>
                                    <span class="la la-star last-star"></span>
                                    <span class="rating-count">4.5</span>
                                </div>
                                <div class="listing-info">
                                    <ul>
                                        <li><span class="la la-eye info__count"></span> 247</li>
                                        <li><span class="la la-heart-o info__save" data-toggle="tooltip" data-placement="top" title="Bookmark"></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!-- end card-content-wrap -->
                    </div><!-- end card-item -->
                    <div class="card-item">
                        <a href="listing-details.html" class="card-image-wrap">
                            <div class="card-image">
                                <img src="images/img29.jpg" class="card__img" alt="">
                                <span class="badge badge-closed">closed</span>
                                <span class="badge-toggle" data-toggle="tooltip" data-placement="bottom" title="22 Likes">
                                    <i class="la la-heart-o"></i>
                                </span>
                            </div>
                        </a>
                        <div class="card-content-wrap">
                            <div class="card-content">
                                <a href="listing-details.html">
                                    <h5 class="card-meta"><span class="la la-plane"></span> travel</h5>
                                    <h4 class="card-title">beach blue boardwalk</h4>
                                    <p class="card-sub">Bishop Avenue, New York</p>
                                </a>
                                <a href="#" class="author-img">
                                    <img src="images/small-team2.jpg" alt="author-img">
                                </a>
                                <ul class="info-list padding-top-20px">
                                    <li><span class="la la-phone"></span> (416) 551-0589</li>
                                    <li><span class="la la-link"></span>
                                        <a href="#"> www.mysitelink.com</a>
                                    </li>
                                    <li><span class="la la-calendar-check-o"></span>
                                        Posted 1 month ago
                                    </li>
                                </ul>
                            </div>
                            <div class="rating-row">
                                <div class="rating-rating">
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star-half-full"></span>
                                    <span class="la la-star last-star"></span>
                                    <span class="rating-count">4.6</span>
                                </div>
                                <div class="listing-info">
                                    <ul>
                                        <li><span class="la la-eye info__count"></span> 247</li>
                                        <li><span class="la la-heart-o info__save" data-toggle="tooltip" data-placement="top" title="Bookmark"></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!-- end card-content-wrap -->
                    </div><!-- end card-item -->
                    <div class="card-item">
                        <a href="listing-details.html" class="card-image-wrap">
                            <div class="card-image">
                                <img src="images/img30.jpg" class="card__img" alt="">
                                <span class="badge">now open</span>
                                <span class="badge-toggle" data-toggle="tooltip" data-placement="bottom" title="22 Likes">
                                    <i class="la la-heart-o"></i>
                                </span>
                            </div>
                        </a>
                        <div class="card-content-wrap">
                            <div class="card-content">
                                <a href="listing-details.html">
                                    <h5 class="card-meta"><span class="la la-hotel"></span> hotel</h5>
                                    <h4 class="card-title">
                                        hotel govendor <i class="fa fa-check-circle" data-toggle="tooltip" data-placement="top" title="Claimed"></i>
                                    </h4>
                                    <p class="card-sub">Bishop Avenue, New York</p>
                                </a>
                                <a href="#" class="author-img">
                                    <img src="images/small-team3.jpg" alt="author-img">
                                </a>
                                <ul class="info-list padding-top-20px">
                                    <li><span class="la la-phone"></span> (416) 551-0589</li>
                                    <li><span class="la la-link"></span>
                                        <a href="#"> www.mysitelink.com</a>
                                    </li>
                                    <li><span class="la la-calendar-check-o"></span>
                                        Posted 1 month ago
                                    </li>
                                </ul>
                            </div>
                            <div class="rating-row">
                                <div class="rating-rating">
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star-half-full"></span>
                                    <span class="la la-star last-star"></span>
                                    <span class="rating-count">4.7</span>
                                </div>
                                <div class="listing-info">
                                    <ul>
                                        <li><span class="la la-eye info__count"></span> 247</li>
                                        <li><span class="la la-heart-o info__save" data-toggle="tooltip" data-placement="top" title="Bookmark"></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!-- end card-content-wrap -->
                    </div><!-- end card-item -->
                    <div class="card-item">
                        <a href="listing-details.html" class="card-image-wrap">
                            <div class="card-image">
                                <img src="images/img31.jpg" class="card__img" alt="">
                                <span class="badge">now open</span>
                                <span class="badge-toggle" data-toggle="tooltip" data-placement="bottom"
                                      title="22 Likes">
                                    <i class="la la-heart-o"></i>
                                </span>
                            </div>
                        </a>
                        <div class="card-content-wrap">
                            <div class="card-content">
                                <a href="listing-details.html">
                                    <h5 class="card-meta"><span class="la la-music"></span> event</h5>
                                    <h4 class="card-title">sticky band party</h4>
                                    <p class="card-sub">Bishop Avenue, New York</p>
                                </a>
                                <a href="#" class="author-img">
                                    <img src="images/small-team4.jpg" alt="author-img">
                                </a>
                                <ul class="info-list padding-top-20px">
                                    <li><span class="la la-phone"></span> (416) 551-0589</li>
                                    <li><span class="la la-link"></span>
                                        <a href="#"> www.mysitelink.com</a>
                                    </li>
                                    <li><span class="la la-calendar-check-o"></span>
                                        Posted 1 month ago
                                    </li>
                                </ul>
                            </div>
                            <div class="rating-row">
                                <div class="rating-rating">
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star-half-full"></span>
                                    <span class="la la-star last-star"></span>
                                    <span class="rating-count">4.5</span>
                                </div>
                                <div class="listing-info">
                                    <ul>
                                        <li><span class="la la-eye info__count"></span> 247</li>
                                        <li><span class="la la-heart-o info__save" data-toggle="tooltip" data-placement="top" title="Bookmark"></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!-- end card-content-wrap -->
                    </div><!-- end card-item -->
                    <div class="card-item">
                        <a href="listing-details.html" class="card-image-wrap">
                            <div class="card-image">
                                <img src="images/img32.jpg" class="card__img" alt="">
                                <span class="badge badge-closed">closed</span>
                                <span class="badge-toggle" data-toggle="tooltip" data-placement="bottom" title="22 Likes">
                                    <i class="la la-heart-o"></i>
                                </span>
                            </div>
                        </a>
                        <div class="card-content-wrap">
                            <div class="card-content">
                                <a href="listing-details.html">
                                    <h5 class="card-meta"><span class="la la-shopping-cart"></span> shop</h5>
                                    <h4 class="card-title">Sena Clothing Shopping Mall</h4>
                                    <p class="card-sub">Bishop Avenue, New York</p>
                                </a>
                                <a href="#" class="author-img">
                                    <img src="images/small-team5.jpg" alt="author-img">
                                </a>
                                <ul class="info-list padding-top-20px">
                                    <li><span class="la la-phone"></span> (416) 551-0589</li>
                                    <li><span class="la la-link"></span>
                                        <a href="#"> www.mysitelink.com</a>
                                    </li>
                                    <li><span class="la la-calendar-check-o"></span>
                                        Posted 1 month ago
                                    </li>
                                </ul>
                            </div>
                            <div class="rating-row">
                                <div class="rating-rating">
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star-half-full"></span>
                                    <span class="la la-star last-star"></span>
                                    <span class="rating-count">4.6</span>
                                </div>
                                <div class="listing-info">
                                    <ul>
                                        <li><span class="la la-eye info__count"></span> 247</li>
                                        <li><span class="la la-heart-o info__save" data-toggle="tooltip" data-placement="top" title="Bookmark"></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!-- end card-content-wrap -->
                    </div><!-- end card-item -->
                    <div class="card-item">
                        <a href="listing-details.html" class="card-image-wrap">
                            <div class="card-image">
                                <img src="images/img30.jpg" class="card__img" alt="">
                                <span class="badge">now open</span>
                                <span class="badge-toggle" data-toggle="tooltip" data-placement="bottom" title="22 Likes">
                                    <i class="la la-heart-o"></i>
                                </span>
                            </div>
                        </a>
                        <div class="card-content-wrap">
                            <div class="card-content">
                                <a href="listing-details.html">
                                    <h5 class="card-meta"><span class="la la-hotel"></span> hotel</h5>
                                    <h4 class="card-title">
                                        hotel govendor <i class="fa fa-check-circle" data-toggle="tooltip" data-placement="top" title="Claimed"></i>
                                    </h4>
                                    <p class="card-sub">Bishop Avenue, New York</p>
                                </a>
                                <a href="#" class="author-img">
                                    <img src="images/small-team6.jpg" alt="author-img">
                                </a>
                                <ul class="info-list padding-top-20px">
                                    <li><span class="la la-phone"></span> (416) 551-0589</li>
                                    <li><span class="la la-link"></span>
                                        <a href="#"> www.mysitelink.com</a>
                                    </li>
                                    <li><span class="la la-calendar-check-o"></span>
                                        Posted 1 month ago
                                    </li>
                                </ul>
                            </div>
                            <div class="rating-row">
                                <div class="rating-rating">
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star-half-full"></span>
                                    <span class="la la-star last-star"></span>
                                    <span class="rating-count">4.7</span>
                                </div>
                                <div class="listing-info">
                                    <ul>
                                        <li><span class="la la-eye info__count"></span> 247</li>
                                        <li><span class="la la-heart-o info__save" data-toggle="tooltip" data-placement="top" title="Bookmark"></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!-- end card-content-wrap -->
                    </div><!-- end card-item -->
                </div><!-- end card-carousel -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end card-area -->
<!-- ================================
    END CARD AREA
================================= -->


<div class="section-block"></div>

<!-- ================================
       START BLOG AREA
================================= -->
<section class="blog-area padding-top-100px before-none after-none padding-bottom-80px">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-heading text-center">
                    <h2 class="sec__title before-none pt-0">최근 게시물</h2>
                    <p class="sec__desc">
                        WeCamp의 소식을 인스타그램에서도 만나보세요!
                    </p>
                </div><!-- end section-heading -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
        <div class="row mt-5">
            <div class="col-lg-4 column-td-6">
                <div class="card-item blog-card">
                    <a href="blog-single.html" class="card-image-wrap" id="instaLink0">
                        <div class="card-image">
                            <img id="insta0" src="images/img31.jpg" alt="blog image" class="card__img">
                        </div><!-- end card-image -->
                    </a>
                    <div class="card-content pl-0 pr-0">
                        <ul class="card-meta pl-0 d-flex justify-content-between align-items-center mt-2">
                            <li id="instaTime0">25 Dec, 2018</li>
                            <li></a></li>
                        </ul>
                        <p class="card-sub mt-3" id="instaContent0">
                            Sed ut perspiciatis unde omnis iste natus error sit
                            voluptatem eaque ipsa quae ab illo inventore
                            incididunt ut labore et dolore magna
                        </p>
                    </div><!-- end blog-post-body -->
                </div><!-- end card-item -->
            </div><!-- end col-lg-4 -->
            
            <div class="col-lg-4 column-td-6">
                <div class="card-item blog-card">
                    <a href="blog-single.html" class="card-image-wrap" id="instaLink1">
                        <div class="card-image">
                            <img id="insta1" src="images/img31.jpg" alt="blog image" class="card__img">
                        </div><!-- end card-image -->
                    </a>
                    <div class="card-content pl-0 pr-0">
                        <ul class="card-meta pl-0 d-flex justify-content-between align-items-center mt-2">
                            <li id="instaTime1">25 Dec, 2018</li>
                            <li></a></li>
                        </ul>
                        <p class="card-sub mt-3" id="instaContent1">
                            Sed ut perspiciatis unde omnis iste natus error sit
                            voluptatem eaque ipsa quae ab illo inventore
                            incididunt ut labore et dolore magna
                        </p>
                    </div><!-- end blog-post-body -->
                </div><!-- end card-item -->
            </div><!-- end col-lg-4 -->
            
            <div class="col-lg-4 column-td-6">
                <div class="card-item blog-card">
                    <a href="blog-single.html" class="card-image-wrap" id="instaLink2">
                        <div class="card-image">
                            <img id="insta2" src="images/img31.jpg" alt="blog image" class="card__img">
                        </div><!-- end card-image -->
                    </a>
                    <div class="card-content pl-0 pr-0">
                        <ul class="card-meta pl-0 d-flex justify-content-between align-items-center mt-2">
                            <li id="instaTime2">25 Dec, 2018</li>
                            <li></a></li>
                        </ul>
                        <p class="card-sub mt-3" id="instaContent2">
                            Sed ut perspiciatis unde omnis iste natus error sit
                            voluptatem eaque ipsa quae ab illo inventore
                            incididunt ut labore et dolore magna
                        </p>

                    </div><!-- end blog-post-body -->
                </div><!-- end card-item -->
            </div><!-- end col-lg-4 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end blog-area -->
<!-- ================================
       START BLOG AREA
================================= -->

<div class="section-block"></div>

	<div class="playon-instagarm"></div>

<div class="section-block"></div>

<!-- ================================
       START CLIENTLOGO AREA
================================= -->
<section class="clientlogo-area padding-top-80px padding-bottom-80px">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="client-logo text-center">
                    <div class="client-logo-item">
                        <img src="images/client-logo.png" alt="brand image">
                    </div><!-- end client-logo-item -->
                    <div class="client-logo-item">
                        <img src="images/client-logo.png" alt="brand image">
                    </div><!-- end client-logo-item -->
                    <div class="client-logo-item">
                        <img src="images/client-logo.png" alt="brand image">
                    </div><!-- end client-logo-item -->
                    <div class="client-logo-item">
                        <img src="images/client-logo.png" alt="brand image">
                    </div><!-- end client-logo-item -->
                    <div class="client-logo-item">
                        <img src="images/client-logo.png" alt="brand image">
                    </div><!-- end client-logo-item -->
                    <div class="client-logo-item">
                        <img src="images/client-logo.png" alt="brand image">
                    </div><!-- end client-logo-item -->
                </div><!-- end client-logo -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end clientlogo-area -->
<!-- ================================
       START CLIENTLOGO AREA
================================= -->
<!-- ================================
       START INSTAGRAM AREA
================================= -->
<script type="text/javascript" language="javascript" 
	 src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script type="text/javascript">

		   $(document).ready(function(){ 
			   console.log("hello world");
			   
			   $.ajax({
				   url: "insta/getGrid.json", 
				   type: "GET",
				   contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				   success: function(responseData){
					  //var jsObj = JSON.parse(responseData); //jQuery 버젼을 올려서 필요 없음
					  //encodeURIComponent(responseData);
					  //alert(responseData);
                      if(!responseData){
						  return false;
					  }else{
						  for(i=0;i<3;i++){
							 $("#insta"+i).attr('src', responseData.data[i].media_url);
							 $("#instaLink"+i).attr('href', responseData.data[i].permalink);
							 var time = responseData.data[i].timestamp.split("T");
							 $("#instaTime"+i).html(time[0]);
							 $("#instaContent"+i).html(responseData.data[i].caption);

								//alert("good");
						  }
					  }
				   },
				 error: function(request, status, error){
					 alert(request);
					 alert(status);
					 alert(error);
				 }
			   });
			   
			});
		
		   
	</script>

</body>
</html>