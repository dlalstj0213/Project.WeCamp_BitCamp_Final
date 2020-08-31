<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<!-- Left Sidebar -->
	<div class="left main-sidebar">
	
		<div class="sidebar-inner leftscroll">

			<div id="sidebar-menu">
        
			<ul>

					<li class="submenu">
						<a class="" href="main.wcc"><i class="fa fa-fw fa fa-home"></i><span> 관리자 메인 </span> </a>
                    </li>
					<li class="submenu">
						<a class="" href="/"><i class="fa fa-fw fa fa-home"></i><span> 위캠프 홈 </span> </a>
                    </li>

					<li class="submenu1">
                        <a id="member-menu" href="#"><i class="fa fa-group bigfonts" aria-hidden="true"></i>
                        	<span> 회원 관리 </span>
                        	<span class="menu-arrow"></span>
                        </a>
                            <ul class="list-unstyled">
								<li class="active" id="member-submenu">
                                    <a href="member_manage.wcc"><span>회원</span></a>
                                </li>
                                <li id="withdrawal-member-submenu">
                                    <a href="leave_member_manage.wcc"><span>탈퇴 회원</span> </a>
                                </li>                                
                            </ul>
                    </li>

					<li class="submenu">
                        <a href="charts.html"><i class="fa fa-list-alt bigfonts" aria-hidden="true"></i><span> 업체문의 관리 </span> </a>
                    </li>
                    
					<li class="submenu">
                        <a href="charts.html"><i class="fa fa-fw fa-area-chart"></i><span> 통계 </span> </a>
                    </li>
                    
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
      </div>
	</div>
	<!-- End Sidebar -->