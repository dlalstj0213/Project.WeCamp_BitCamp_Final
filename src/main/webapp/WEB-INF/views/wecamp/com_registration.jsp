<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- ================================
    START BREADCRUMB AREA
================================= -->
<section class="breadcrumb-area">
    <div class="breadcrumb-wrap">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-content">
                        <h2 class="breadcrumb__title">add listing</h2>
                        <ul class="breadcrumb__list">
                            <li class="active__list-item"><a href="index.html">home</a></li>
                            <li class="active__list-item">listings</li>
                            <li>add listing</li>
                        </ul>
                    </div><!-- end breadcrumb-content -->
                </div><!-- end col-lg-12 -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end breadcrumb-wrap -->
    <div class="bread-svg">
        <svg viewBox="0 0 500 150" preserveAspectRatio="none">
            <path d="M-4.22,89.30 C280.19,26.14 324.21,125.81 511.00,41.94 L500.00,150.00 L0.00,150.00 Z"></path>
        </svg>
    </div><!-- end bread-svg -->
</section><!-- end breadcrumb-area -->
<!-- ================================
    END BREADCRUMB AREA
================================= -->

<!-- ================================
    START ADD-LISTING AREA
================================= -->
<section class="add-listing-area padding-top-40px padding-bottom-100px">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 mx-auto">
                <div class="billing-form-item">
                    <div class="billing-title-wrap">
                        <h3 class="widget-title pb-0">My 캠핑장 등록</h3>
                        <div class="title-shape margin-top-10px"></div>
                    </div><!-- billing-title-wrap -->
                    <div class="billing-content">
                        <div class="contact-form-action">
                            <form method="post">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">캠핑장 명</label>
                                            <div class="form-group">
                                                <span class="la la-pencil-square-o form-icon"></span>
                                                <input class="form-control" type="text" name="name" placeholder="캠핑장 이름을 입력해주세요.">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">캠핑장 소개
                                            <i class="la la-question tip ml-1" data-toggle="tooltip" data-placement="top" title="최대 30글자까지 입력가능합니다."></i>
                                            </label>
                                            <div class="form-group">
                                                <span class="la la-pencil form-icon"></span>
                                                <textarea class="message-control form-control" style="height:100px"name="message" placeholder="캠핑장 소개글을 입력해주세요."></textarea>
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">주소</label>
                                        </div>
                                        <div class="input-group">
                                            <!-- <input id="addrZip" style="width:500px">
                                            <input type="button" id="bt_addr" onclick="bt_addr_click();" value="주소 찾기">  -->
                                            <input class="form-control" type="text" id="sample5_address"placeholder="주소">
                                            
											<input type="button" onclick="sample5_execDaumPostcode()" class="theme-btn border-0" style="margin-left:20px" value="주소 검색"><br>
										</div>
											<div id="map" style="height:300px;margin-top:10px;display:none"></div>
											
                                            <!-- <div class="form-group mb-0">
                                                <select class="select-option-field-2">
                                                    <option value >Select a Category</option>
                                                    <option value="1">Shops</option>
                                                    <option value="2">Hotels</option>
                                                    <option value="3">Restaurants</option>
                                                    <option value="4">Fitness</option>
                                                    <option value="5">Travel</option>
                                                    <option value="6">Salons</option>
                                                    <option value="7">Event</option>
                                                    <option value="8">Business</option>
                                                </select>
                                            </div>end form-group -->
                                        
                                    </div><!-- end col-lg-12 -->
                                </div><!-- end row -->
                            </form>
                        </div><!-- end contact-form-action -->
                    </div><!-- end billing-content -->
                </div><!-- end billing-form-item -->
                <div class="billing-form-item">
                    <div class="billing-title-wrap">
                        <h3 class="widget-title pb-0">Add Location</h3>
                        <div class="title-shape margin-top-10px"></div>
                    </div><!-- billing-title-wrap -->
                    <div class="billing-content">
                        <div class="contact-form-action">
                            <form method="post">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">Address</label>
                                            <div class="form-group">
                                                <span class="la la-map form-icon"></span>
                                                <input class="form-control" type="text" name="name" placeholder="Your address">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">Temporary Address</label>
                                            <div class="form-group">
                                                <span class="la la-map-signs form-icon"></span>
                                                <input class="form-control" type="text" name="name" placeholder="Temporary address">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">City</label>
                                            <div class="form-group">
                                                <select class="select-option-field-6">
                                                    <option value >Select a City</option>
                                                    <option value="1">New York</option>
                                                    <option value="2">Los Angeles</option>
                                                    <option value="3">Chicago</option>
                                                    <option value="4">Phoenix</option>
                                                    <option value="5">Washington</option>
                                                    <option value="6">Boston</option>
                                                    <option value="7">Philadelphia</option>
                                                    <option value="8">Baltimore</option>
                                                    <option value="9">Seattle</option>
                                                    <option value="10">San Francisco</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">State</label>
                                            <div class="form-group">
                                                <select class="select-option-field-7">
                                                    <option value >Select a State</option>
                                                    <option value="1">California</option>
                                                    <option value="2">Florida</option>
                                                    <option value="3">Texas</option>
                                                    <option value="4">Hawaii</option>
                                                    <option value="5">Arizona</option>
                                                    <option value="6">Michigan</option>
                                                    <option value="7">New Jersey</option>
                                                    <option value="8">Georgia</option>
                                                    <option value="9">South Carolina</option>
                                                    <option value="10">Montana</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <label class="label-text">Country</label>
                                        <div class="form-group">
                                            <select class="select-option-field-8">
                                                <option value>Select a Country</option>
                                                <option value="AF">Afghanistan</option>
                                                <option value="AX">Ãland Islands</option>
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
                                                <option value="CI">CÃ´te dâIvoire</option>
                                                <option value="HR">Croatia</option>
                                                <option value="CW">CuraÃ§ao</option>
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
                                                <option value="RE">RÃ©union</option>
                                                <option value="RO">Romania</option>
                                                <option value="RU">Russia</option>
                                                <option value="RW">Rwanda</option>
                                                <option value="WS">Samoa</option>
                                                <option value="SM">San Marino</option>
                                                <option value="ST">SÃ£o TomÃ© &amp; PrÃ­ncipe</option>
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
                                                <option value="BL">St. BarthÃ©lemy</option>
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
                                        </div>
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">
                                                Zip-Code
                                            </label>
                                            <div class="form-group">
                                                <span class="la la-file-code-o form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="Zip-Code">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-6 -->
                                </div><!-- end row -->
                            </form>
                        </div><!-- end contact-form-action -->
                    </div><!-- end billing-content -->
                </div><!-- end billing-form-item -->
                <div class="billing-form-item">
                    <div class="billing-title-wrap">
                        <h3 class="widget-title pb-0">Full Details</h3>
                        <div class="title-shape margin-top-10px"></div>
                    </div><!-- billing-title-wrap -->
                    <div class="billing-content">
                        <div class="contact-form-action">
                            <form method="post">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">Owner Name</label>
                                            <div class="form-group">
                                                <span class="la la-user form-icon"></span>
                                                <input class="form-control" type="text" name="name" placeholder="Name">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">Email</label>
                                            <div class="form-group">
                                                <span class="la la-envelope-o form-icon"></span>
                                                <input class="form-control" type="email" name="email" placeholder="Email address">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">Phone <span class="text-muted">(optional)</span></label>
                                            <div class="form-group">
                                                <span class="la la-phone form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="Number">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">Website <span class="text-muted">(optional)</span></label>
                                            <div class="form-group">
                                                <span class="la la-link form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="www.techydevs.com">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">Facebook Link <span class="text-muted">(optional)</span></label>
                                            <div class="form-group">
                                                <span class="la la-facebook-f form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="https://www.facebook.com/">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">Twitter Link <span class="text-muted">(optional)</span></label>
                                            <div class="form-group">
                                                <span class="la la-twitter form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="https://www.twitter.com/">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">Google Plus <span class="text-muted">(optional)</span></label>
                                            <div class="form-group">
                                                <span class="la la-google-plus form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="https://plus.google.com">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">Linkedin Link <span class="text-muted">(optional)</span></label>
                                            <div class="form-group">
                                                <span class="la la-linkedin-square form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="www.linkedin.com/">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">Description</label>
                                            <div class="form-group mb-0">
                                                <span class="la la-pencil form-icon"></span>
                                                <textarea class="message-control form-control" name="message" placeholder="Write description"></textarea>
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                </div><!-- end row -->
                            </form>
                        </div><!-- end contact-form-action -->
                    </div><!-- end billing-content -->
                </div><!-- end billing-form-item -->
                <div class="billing-form-item">
                    <div class="billing-title-wrap">
                        <h3 class="widget-title pb-0">Photo</h3>
                        <div class="title-shape margin-top-10px"></div>
                    </div><!-- billing-title-wrap -->
                    <div class="billing-content">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="drag-and-drop-wrap">
                                    <div class="drag-and-drop-file">
                                        <form action="" method="post" enctype="multipart/form-data">
                                            <input type="file" name="files[]" id="filer_input2" multiple="multiple">
                                        </form>
                                    </div><!-- end custom-file -->
                                </div>
                            </div><!-- end col-lg-12 -->
                        </div><!-- end row -->
                    </div><!-- end billing-content -->
                </div><!-- end billing-form-item -->
                <div class="billing-form-item">
                    <div class="billing-title-wrap">
                        <h3 class="widget-title pb-0">Amenities</h3>
                        <div class="title-shape margin-top-10px"></div>
                    </div><!-- billing-title-wrap -->
                    <div class="billing-content">
                        <div class="custom-checkbox">
                            <input type="checkbox" id="chb1">
                            <label for="chb1">Security Cameras</label>
                        </div><!-- end custom-checkbox -->
                        <div class="custom-checkbox">
                            <input type="checkbox" id="chb2">
                            <label for="chb2">Elevator in Building</label>
                        </div><!-- end custom-checkbox -->
                        <div class="custom-checkbox">
                            <input type="checkbox" id="chb3">
                            <label for="chb3">Wireless Internet</label>
                        </div><!-- end custom-checkbox -->
                        <div class="custom-checkbox">
                            <input type="checkbox" id="chb4">
                            <label for="chb4">Wheelchair Accessible</label>
                        </div><!-- end custom-checkbox -->
                        <div class="custom-checkbox">
                            <input type="checkbox" id="chb5">
                            <label for="chb5">Laundry Room in Building</label>
                        </div><!-- end custom-checkbox -->
                        <div class="custom-checkbox">
                            <input type="checkbox" id="chb6">
                            <label for="chb6">Alarm System</label>
                        </div><!-- end custom-checkbox -->
                        <div class="custom-checkbox">
                            <input type="checkbox" id="chb7">
                            <label for="chb7">Smoking Allowed</label>
                        </div><!-- end custom-checkbox -->
                        <div class="custom-checkbox">
                            <input type="checkbox" id="chb8">
                            <label for="chb8">Free Parking on Street</label>
                        </div><!-- end custom-checkbox -->
                        <div class="custom-checkbox">
                            <input type="checkbox" id="chb9">
                            <label for="chb9">Friendly Workspace</label>
                        </div><!-- end custom-checkbox -->
                        <div class="custom-checkbox">
                            <input type="checkbox" id="chb10">
                            <label for="chb10">Electricity</label>
                        </div><!-- end custom-checkbox -->
                        <div class="custom-checkbox">
                            <input type="checkbox" id="chb11">
                            <label for="chb11">Attached Garage</label>
                        </div><!-- end custom-checkbox -->
                        <div class="custom-checkbox">
                            <input type="checkbox" id="chb12">
                            <label for="chb12">Bike Parking</label>
                        </div><!-- end custom-checkbox -->
                        <div class="custom-checkbox">
                            <input type="checkbox" id="chb15">
                            <label for="chb15">Telephone</label>
                        </div><!-- end custom-checkbox -->
                    </div><!-- end billing-content -->
                </div><!-- end billing-form-item -->
                <div class="billing-form-item">
                    <div class="billing-title-wrap">
                        <h3 class="widget-title pb-0">Opening Hours</h3>
                        <div class="title-shape margin-top-10px"></div>
                    </div><!-- billing-title-wrap -->
                    <div class="billing-content">
                        <div class="contact-form-action">
                            <form method="post">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">Monday</label>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <select class="select-option-field-9">
                                                <option value >Opening Time</option>
                                                <option value="open">Open</option>
                                                <option value="1">1:00am</option>
                                                <option value="2">2:00am</option>
                                                <option value="3">3:00am</option>
                                                <option value="4">4:00am</option>
                                                <option value="5">5:00pm</option>
                                                <option value="6">6:00pm</option>
                                                <option value="7">7:00pm</option>
                                                <option value="8">8:00pm</option>
                                                <option value="9">9:00am</option>
                                                <option value="10">10:00am</option>
                                                <option value="11">11:00am</option>
                                                <option value="12">12:00am</option>
                                                <option value="13">1:00pm</option>
                                                <option value="14">2:00pm</option>
                                                <option value="15">3:00pm</option>
                                                <option value="16">4:00pm</option>
                                                <option value="17">5:00pm</option>
                                                <option value="18">6:00pm</option>
                                                <option value="19">7:00pm</option>
                                                <option value="20">8:00pm</option>
                                                <option value="21">9:00pm</option>
                                                <option value="22">10:00pm</option>
                                                <option value="23">11:00pm</option>
                                                <option value="24">12:00pm</option>
                                            </select>
                                        </div><!-- end form-group -->
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <select class="select-option-field-10">
                                                <option value >Closing Time</option>
                                                <option value="closed">Closed</option>
                                                <option value="1">1:00am</option>
                                                <option value="2">2:00am</option>
                                                <option value="3">3:00am</option>
                                                <option value="4">4:00am</option>
                                                <option value="5">5:00pm</option>
                                                <option value="6">6:00pm</option>
                                                <option value="7">7:00pm</option>
                                                <option value="8">8:00pm</option>
                                                <option value="9">9:00am</option>
                                                <option value="10">10:00am</option>
                                                <option value="11">11:00am</option>
                                                <option value="12">12:00am</option>
                                                <option value="13">1:00pm</option>
                                                <option value="14">2:00pm</option>
                                                <option value="15">3:00pm</option>
                                                <option value="16">4:00pm</option>
                                                <option value="17">5:00pm</option>
                                                <option value="18">6:00pm</option>
                                                <option value="19">7:00pm</option>
                                                <option value="20">8:00pm</option>
                                                <option value="21">9:00pm</option>
                                                <option value="22">10:00pm</option>
                                                <option value="23">11:00pm</option>
                                                <option value="24">12:00pm</option>
                                            </select>
                                        </div><!-- end form-group -->
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">Tuesday</label>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <select class="select-option-field-9">
                                                <option value >Opening Time</option>
                                                <option value="open">Open</option>
                                                <option value="1">1:00am</option>
                                                <option value="2">2:00am</option>
                                                <option value="3">3:00am</option>
                                                <option value="4">4:00am</option>
                                                <option value="5">5:00pm</option>
                                                <option value="6">6:00pm</option>
                                                <option value="7">7:00pm</option>
                                                <option value="8">8:00pm</option>
                                                <option value="9">9:00am</option>
                                                <option value="10">10:00am</option>
                                                <option value="11">11:00am</option>
                                                <option value="12">12:00am</option>
                                                <option value="13">1:00pm</option>
                                                <option value="14">2:00pm</option>
                                                <option value="15">3:00pm</option>
                                                <option value="16">4:00pm</option>
                                                <option value="17">5:00pm</option>
                                                <option value="18">6:00pm</option>
                                                <option value="19">7:00pm</option>
                                                <option value="20">8:00pm</option>
                                                <option value="21">9:00pm</option>
                                                <option value="22">10:00pm</option>
                                                <option value="23">11:00pm</option>
                                                <option value="24">12:00pm</option>
                                            </select>
                                        </div><!-- end form-group -->
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <select class="select-option-field-10">
                                                <option value >Closing Time</option>
                                                <option value="closed">Closed</option>
                                                <option value="1">1:00am</option>
                                                <option value="2">2:00am</option>
                                                <option value="3">3:00am</option>
                                                <option value="4">4:00am</option>
                                                <option value="5">5:00pm</option>
                                                <option value="6">6:00pm</option>
                                                <option value="7">7:00pm</option>
                                                <option value="8">8:00pm</option>
                                                <option value="9">9:00am</option>
                                                <option value="10">10:00am</option>
                                                <option value="11">11:00am</option>
                                                <option value="12">12:00am</option>
                                                <option value="13">1:00pm</option>
                                                <option value="14">2:00pm</option>
                                                <option value="15">3:00pm</option>
                                                <option value="16">4:00pm</option>
                                                <option value="17">5:00pm</option>
                                                <option value="18">6:00pm</option>
                                                <option value="19">7:00pm</option>
                                                <option value="20">8:00pm</option>
                                                <option value="21">9:00pm</option>
                                                <option value="22">10:00pm</option>
                                                <option value="23">11:00pm</option>
                                                <option value="24">12:00pm</option>
                                            </select>
                                        </div><!-- end form-group -->
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">Wednesday</label>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <select class="select-option-field-9">
                                                <option value >Opening Time</option>
                                                <option value="open">Open</option>
                                                <option value="1">1:00am</option>
                                                <option value="2">2:00am</option>
                                                <option value="3">3:00am</option>
                                                <option value="4">4:00am</option>
                                                <option value="5">5:00pm</option>
                                                <option value="6">6:00pm</option>
                                                <option value="7">7:00pm</option>
                                                <option value="8">8:00pm</option>
                                                <option value="9">9:00am</option>
                                                <option value="10">10:00am</option>
                                                <option value="11">11:00am</option>
                                                <option value="12">12:00am</option>
                                                <option value="13">1:00pm</option>
                                                <option value="14">2:00pm</option>
                                                <option value="15">3:00pm</option>
                                                <option value="16">4:00pm</option>
                                                <option value="17">5:00pm</option>
                                                <option value="18">6:00pm</option>
                                                <option value="19">7:00pm</option>
                                                <option value="20">8:00pm</option>
                                                <option value="21">9:00pm</option>
                                                <option value="22">10:00pm</option>
                                                <option value="23">11:00pm</option>
                                                <option value="24">12:00pm</option>
                                            </select>
                                        </div><!-- end form-group -->
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <select class="select-option-field-10">
                                                <option value >Closing Time</option>
                                                <option value="closed">Closed</option>
                                                <option value="1">1:00am</option>
                                                <option value="2">2:00am</option>
                                                <option value="3">3:00am</option>
                                                <option value="4">4:00am</option>
                                                <option value="5">5:00pm</option>
                                                <option value="6">6:00pm</option>
                                                <option value="7">7:00pm</option>
                                                <option value="8">8:00pm</option>
                                                <option value="9">9:00am</option>
                                                <option value="10">10:00am</option>
                                                <option value="11">11:00am</option>
                                                <option value="12">12:00am</option>
                                                <option value="13">1:00pm</option>
                                                <option value="14">2:00pm</option>
                                                <option value="15">3:00pm</option>
                                                <option value="16">4:00pm</option>
                                                <option value="17">5:00pm</option>
                                                <option value="18">6:00pm</option>
                                                <option value="19">7:00pm</option>
                                                <option value="20">8:00pm</option>
                                                <option value="21">9:00pm</option>
                                                <option value="22">10:00pm</option>
                                                <option value="23">11:00pm</option>
                                                <option value="24">12:00pm</option>
                                            </select>
                                        </div><!-- end form-group -->
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">Thursday</label>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <select class="select-option-field-9">
                                                <option value >Opening Time</option>
                                                <option value="open">Open</option>
                                                <option value="1">1:00am</option>
                                                <option value="2">2:00am</option>
                                                <option value="3">3:00am</option>
                                                <option value="4">4:00am</option>
                                                <option value="5">5:00pm</option>
                                                <option value="6">6:00pm</option>
                                                <option value="7">7:00pm</option>
                                                <option value="8">8:00pm</option>
                                                <option value="9">9:00am</option>
                                                <option value="10">10:00am</option>
                                                <option value="11">11:00am</option>
                                                <option value="12">12:00am</option>
                                                <option value="13">1:00pm</option>
                                                <option value="14">2:00pm</option>
                                                <option value="15">3:00pm</option>
                                                <option value="16">4:00pm</option>
                                                <option value="17">5:00pm</option>
                                                <option value="18">6:00pm</option>
                                                <option value="19">7:00pm</option>
                                                <option value="20">8:00pm</option>
                                                <option value="21">9:00pm</option>
                                                <option value="22">10:00pm</option>
                                                <option value="23">11:00pm</option>
                                                <option value="24">12:00pm</option>
                                            </select>
                                        </div><!-- end form-group -->
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <select class="select-option-field-10">
                                                <option value >Closing Time</option>
                                                <option value="closed">Closed</option>
                                                <option value="1">1:00am</option>
                                                <option value="2">2:00am</option>
                                                <option value="3">3:00am</option>
                                                <option value="4">4:00am</option>
                                                <option value="5">5:00pm</option>
                                                <option value="6">6:00pm</option>
                                                <option value="7">7:00pm</option>
                                                <option value="8">8:00pm</option>
                                                <option value="9">9:00am</option>
                                                <option value="10">10:00am</option>
                                                <option value="11">11:00am</option>
                                                <option value="12">12:00am</option>
                                                <option value="13">1:00pm</option>
                                                <option value="14">2:00pm</option>
                                                <option value="15">3:00pm</option>
                                                <option value="16">4:00pm</option>
                                                <option value="17">5:00pm</option>
                                                <option value="18">6:00pm</option>
                                                <option value="19">7:00pm</option>
                                                <option value="20">8:00pm</option>
                                                <option value="21">9:00pm</option>
                                                <option value="22">10:00pm</option>
                                                <option value="23">11:00pm</option>
                                                <option value="24">12:00pm</option>
                                            </select>
                                        </div><!-- end form-group -->
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">Friday</label>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <select class="select-option-field-9">
                                                <option value >Opening Time</option>
                                                <option value="open">Open</option>
                                                <option value="1">1:00am</option>
                                                <option value="2">2:00am</option>
                                                <option value="3">3:00am</option>
                                                <option value="4">4:00am</option>
                                                <option value="5">5:00pm</option>
                                                <option value="6">6:00pm</option>
                                                <option value="7">7:00pm</option>
                                                <option value="8">8:00pm</option>
                                                <option value="9">9:00am</option>
                                                <option value="10">10:00am</option>
                                                <option value="11">11:00am</option>
                                                <option value="12">12:00am</option>
                                                <option value="13">1:00pm</option>
                                                <option value="14">2:00pm</option>
                                                <option value="15">3:00pm</option>
                                                <option value="16">4:00pm</option>
                                                <option value="17">5:00pm</option>
                                                <option value="18">6:00pm</option>
                                                <option value="19">7:00pm</option>
                                                <option value="20">8:00pm</option>
                                                <option value="21">9:00pm</option>
                                                <option value="22">10:00pm</option>
                                                <option value="23">11:00pm</option>
                                                <option value="24">12:00pm</option>
                                            </select>
                                        </div><!-- end form-group -->
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <select class="select-option-field-10">
                                                <option value >Closing Time</option>
                                                <option value="closed">Closed</option>
                                                <option value="1">1:00am</option>
                                                <option value="2">2:00am</option>
                                                <option value="3">3:00am</option>
                                                <option value="4">4:00am</option>
                                                <option value="5">5:00pm</option>
                                                <option value="6">6:00pm</option>
                                                <option value="7">7:00pm</option>
                                                <option value="8">8:00pm</option>
                                                <option value="9">9:00am</option>
                                                <option value="10">10:00am</option>
                                                <option value="11">11:00am</option>
                                                <option value="12">12:00am</option>
                                                <option value="13">1:00pm</option>
                                                <option value="14">2:00pm</option>
                                                <option value="15">3:00pm</option>
                                                <option value="16">4:00pm</option>
                                                <option value="17">5:00pm</option>
                                                <option value="18">6:00pm</option>
                                                <option value="19">7:00pm</option>
                                                <option value="20">8:00pm</option>
                                                <option value="21">9:00pm</option>
                                                <option value="22">10:00pm</option>
                                                <option value="23">11:00pm</option>
                                                <option value="24">12:00pm</option>
                                            </select>
                                        </div><!-- end form-group -->
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">Saturday</label>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <select class="select-option-field-9">
                                                <option value >Opening Time</option>
                                                <option value="open">Open</option>
                                                <option value="1">1:00am</option>
                                                <option value="2">2:00am</option>
                                                <option value="3">3:00am</option>
                                                <option value="4">4:00am</option>
                                                <option value="5">5:00pm</option>
                                                <option value="6">6:00pm</option>
                                                <option value="7">7:00pm</option>
                                                <option value="8">8:00pm</option>
                                                <option value="9">9:00am</option>
                                                <option value="10">10:00am</option>
                                                <option value="11">11:00am</option>
                                                <option value="12">12:00am</option>
                                                <option value="13">1:00pm</option>
                                                <option value="14">2:00pm</option>
                                                <option value="15">3:00pm</option>
                                                <option value="16">4:00pm</option>
                                                <option value="17">5:00pm</option>
                                                <option value="18">6:00pm</option>
                                                <option value="19">7:00pm</option>
                                                <option value="20">8:00pm</option>
                                                <option value="21">9:00pm</option>
                                                <option value="22">10:00pm</option>
                                                <option value="23">11:00pm</option>
                                                <option value="24">12:00pm</option>
                                            </select>
                                        </div><!-- end form-group -->
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <select class="select-option-field-10">
                                                <option value >Closing Time</option>
                                                <option value="closed">Closed</option>
                                                <option value="1">1:00am</option>
                                                <option value="2">2:00am</option>
                                                <option value="3">3:00am</option>
                                                <option value="4">4:00am</option>
                                                <option value="5">5:00pm</option>
                                                <option value="6">6:00pm</option>
                                                <option value="7">7:00pm</option>
                                                <option value="8">8:00pm</option>
                                                <option value="9">9:00am</option>
                                                <option value="10">10:00am</option>
                                                <option value="11">11:00am</option>
                                                <option value="12">12:00am</option>
                                                <option value="13">1:00pm</option>
                                                <option value="14">2:00pm</option>
                                                <option value="15">3:00pm</option>
                                                <option value="16">4:00pm</option>
                                                <option value="17">5:00pm</option>
                                                <option value="18">6:00pm</option>
                                                <option value="19">7:00pm</option>
                                                <option value="20">8:00pm</option>
                                                <option value="21">9:00pm</option>
                                                <option value="22">10:00pm</option>
                                                <option value="23">11:00pm</option>
                                                <option value="24">12:00pm</option>
                                            </select>
                                        </div><!-- end form-group -->
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">Sunday</label>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <select class="select-option-field-9">
                                                <option value >Opening Time</option>
                                                <option value="open">Open</option>
                                                <option value="1">1:00am</option>
                                                <option value="2">2:00am</option>
                                                <option value="3">3:00am</option>
                                                <option value="4">4:00am</option>
                                                <option value="5">5:00pm</option>
                                                <option value="6">6:00pm</option>
                                                <option value="7">7:00pm</option>
                                                <option value="8">8:00pm</option>
                                                <option value="9">9:00am</option>
                                                <option value="10">10:00am</option>
                                                <option value="11">11:00am</option>
                                                <option value="12">12:00am</option>
                                                <option value="13">1:00pm</option>
                                                <option value="14">2:00pm</option>
                                                <option value="15">3:00pm</option>
                                                <option value="16">4:00pm</option>
                                                <option value="17">5:00pm</option>
                                                <option value="18">6:00pm</option>
                                                <option value="19">7:00pm</option>
                                                <option value="20">8:00pm</option>
                                                <option value="21">9:00pm</option>
                                                <option value="22">10:00pm</option>
                                                <option value="23">11:00pm</option>
                                                <option value="24">12:00pm</option>
                                            </select>
                                        </div><!-- end form-group -->
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <select class="select-option-field-10">
                                                <option value >Closing Time</option>
                                                <option value="closed">Closed</option>
                                                <option value="1">1:00am</option>
                                                <option value="2">2:00am</option>
                                                <option value="3">3:00am</option>
                                                <option value="4">4:00am</option>
                                                <option value="5">5:00pm</option>
                                                <option value="6">6:00pm</option>
                                                <option value="7">7:00pm</option>
                                                <option value="8">8:00pm</option>
                                                <option value="9">9:00am</option>
                                                <option value="10">10:00am</option>
                                                <option value="11">11:00am</option>
                                                <option value="12">12:00am</option>
                                                <option value="13">1:00pm</option>
                                                <option value="14">2:00pm</option>
                                                <option value="15">3:00pm</option>
                                                <option value="16">4:00pm</option>
                                                <option value="17">5:00pm</option>
                                                <option value="18">6:00pm</option>
                                                <option value="19">7:00pm</option>
                                                <option value="20">8:00pm</option>
                                                <option value="21">9:00pm</option>
                                                <option value="22">10:00pm</option>
                                                <option value="23">11:00pm</option>
                                                <option value="24">12:00pm</option>
                                            </select>
                                        </div><!-- end form-group -->
                                    </div><!-- end col-lg-6 -->
                                </div><!-- end row -->
                            </form>
                        </div><!-- end contact-form-action -->
                    </div><!-- end billing-content -->
                </div><!-- end billing-form-item -->
                <div class="billing-form-item">
                    <div class="billing-title-wrap">
                        <h3 class="widget-title pb-0">Pricing</h3>
                        <div class="title-shape margin-top-10px"></div>
                    </div><!-- billing-title-wrap -->
                    <div class="billing-content">
                        <div class="contact-form-action">
                            <form method="post">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">Title</label>
                                            <div class="form-group">
                                                <spna class="la la-pencil-square form-icon"></spna>
                                                <input class="form-control" type="text" name="text" placeholder="Title">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">Price</label>
                                            <div class="form-group">
                                                <span class="la la-dollar form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="USD Price">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-6 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">Description</label>
                                            <div class="form-group mb-0">
                                                <span class="la la-pencil form-icon"></span>
                                                <textarea class="message-control form-control" name="message" placeholder="Write description"></textarea>
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                </div><!-- end row -->
                            </form>
                        </div><!-- end contact-form-action -->
                    </div><!-- end billing-content -->
                </div><!-- end billing-form-item -->
                <div class="billing-form-item p-0 border-0 mb-0 shadow-none">
                    <div class="billing-content p-0">
                        <div class="custom-checkbox d-block mr-0">
                            <input type="checkbox" id="chb13">
                            <label for="chb13">I Agree to Dirto's <a href="#" class="color-text">Privacy Policy</a></label>
                        </div><!-- end custom-checkbox -->
                        <div class="custom-checkbox d-block mr-0">
                            <input type="checkbox" id="chb14">
                            <label for="chb14">I Agree to Dirto's <a href="#" class="color-text">Terms of Services</a></label>
                        </div><!-- end custom-checkbox -->
                        <div class="btn-box mt-4">
                            <button type="submit" class="theme-btn border-0">submit listing</button>
                        </div><!-- end btn-box -->
                    </div><!-- end billing-content -->
                </div><!-- end billing-form-item -->
            </div><!-- end col-lg-9 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end add-listing-area -->
<!-- ================================
    END ADD-LISTING AREA
================================= -->

<!-- ================================
    START CTA AREA
================================= -->
<section class="cta-area cta-area2">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="cta-box d-flex align-items-center">
                    <div class="col-lg-8">
                        <div class="section-heading">
                            <h2 class="sec__title text-white">Subscribe to Newsletter!</h2>
                            <p class="sec__desc">Subscribe to get latest updates and information.</p>
                        </div><!-- end section-heading -->
                    </div><!-- end col-lg-8 -->
                    <div class="col-lg-4">
                        <div class="contact-form-action">
                            <form method="post">
                                <div class="form-group mb-0">
                                    <span class="la la-envelope-o form-icon"></span>
                                    <input class="form-control" type="email" placeholder="Enter your email">
                                    <button class="theme-btn" type="submit">Subscribe</button>
                                </div>
                            </form>
                        </div><!-- end contact-form-action -->
                    </div><!-- end col-lg-3 -->
                </div><!-- end cta-box -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end cta-area -->
<!-- ================================
    END CTA AREA
================================= -->

<!-- <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> -->
<!-- <script>
	function bt_addr_click(){
		alert("dd");
		var width = 400;//팝업의 너비
		var height = 400;//팝업의 높이
		daum.postcode.load(function(){
			new daum.Postcode({
			oncomplete: function(data){
		//팝업에서 검색결과 항목을 클릭했을 때 실행할 코드
			$("#addr") .val(data.address);
			$("#addr") .val(data .buidingName);
			}
		}).open({
		left: (window.screen.width/3)-(width/2),
		top: (window.screen.height/3)-(height/2)
		});
		});
	}
</script> -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5f0aec9df013aa05ae74510780014c2b&libraries=services"></script>
<!-- <script>
function bt_addr_click(){
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
        }
    }).open();
}
</script> -->

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });


    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_address").value = addr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
            }
        }).open();
    }
</script>