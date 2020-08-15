<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
		<!-- BEGIN CSS for this page -->
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css"/>	
		<style>	
			thead th{
				color: #ffffff;
				background-color: #4980B5;
			}
			#button_center{
				display: flex;
				justify-content: center;
			}
			.click-table-row{
				cursor:pointer;
			}
			#member-detail{
				display: none;
			}
		</style>		
		<!-- END CSS for this page -->
		
    <div class="content-page">
	
		<!-- Start content -->
        <div class="content">
            
			<div class="container-fluid">
			
				<div class="row">
						<div class="col-xl-12">
								<div class="breadcrumb-holder">
										<h1 class="main-title float-left">Data Tables</h1>
										<ol class="breadcrumb float-right">
											<li class="breadcrumb-item">Home</li>
											<li class="breadcrumb-item active">Data Tables</li>
										</ol>
										<div class="clearfix"></div>
								</div>
						</div>
				</div><!-- end row -->
				
				<div class="row">
				
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">						
							<div class="card mb-6">
								<div class="card-header">
									<h3><i class="fa fa-table"></i> 회원 정보</h3>
									 특정 회원 정보를 수정 하려면 원하시는 회원을 클릭 후 수정 하실 수 있습니다.<a target="_blank" href="https://datatables.net/"></a>
									 <div class="input-group">
									 <div class="input-group-prepend">
									    <label class="input-group-text" for="inputGroupSelect01">Options</label>
									  </div>
									    <select class="custom-select" id="inputGroupSelect01">
										    <option selected>Choose...</option>
										    <option value="1">One</option>
										    <option value="2">Two</option>
										    <option value="3">Three</option>
										  </select>
									  <div class="input-group-prepend">
									    <label class="input-group-text" for="inputGroupSelect01">검색</label>
									  </div>
									  <input type="text" class="form-control" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
									</div>
								</div>
									
								<div class="card-body">
								<!-- Table -->
									<table class="table table-sm table-hover">
									  <thead>
									    <tr>
									      <th scope="col">#</th>
									      <th scope="col">이름</th>
									      <!-- <th scope="col">닉네임</th> -->
									      <th scope="col">이메일</th>
									      <th scope="col">생년월일</th>
									      <th scope="col">포인트</th>
									      <th scope="col">등급</th>
									      <th scope="col">권한</th>
									    </tr>
									  </thead>
									  <tbody>
									    <tr id="member1" class="click-table-row">
									      <th scope="row">1</th>
									      <td>이름</td>
									      <td>이메일1</td>
									      <td>생년월일</td>
									      <td>포인트</td>
									      <td>등급</td>
									      <td>권한</td>
									    </tr>
									    <tr id="member2" class="click-table-row">
									      <th scope="row">1</th>
									      <td>이름</td>
									      <td>이메일2</td>
									      <td>생년월일</td>
									      <td>포인트</td>
									      <td>등급</td>
									      <td>권한</td>
									    </tr>
									  </tbody>
									</table>
									
									<!-- Pagination -->
									<nav aria-label="...">
									  <ul class="pagination justify-content-center">
									    <li class="page-item disabled">
									      <a class="page-link" href="#" tabindex="-1">Previous</a>
									    </li>
									    <li class="page-item"><a class="page-link" href="#">1</a></li>
									    <li class="page-item active">
									      <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
									    </li>
									    <li class="page-item"><a class="page-link" href="#">3</a></li>
									    <li class="page-item">
									      <a class="page-link" href="#">Next</a>
									    </li>
									  </ul>
									</nav>
									
								</div><!-- end card body -->										
							</div><!-- end card-->					
						</div><!-- end col -->
			
			
						<div id="member-detail" class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">						
							<div class="card mb-3">
								<div class="card-header">
									<h3><i class="fa fa-table"></i> 회원 정보 수정</h3>
									정보를 수정 후 하단의 수정 버튼을 클릭해주세요.
								</div>
							</div> <!-- deprecated -->
						</div> <!-- deprecated -->
				</div><!-- end row -->
				

            </div><!-- END container-fluid -->

		</div><!-- END content -->

    </div><!-- END content-page -->

    <script src="/admin/js/member_manage.js"></script>