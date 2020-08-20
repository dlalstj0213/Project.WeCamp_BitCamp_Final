<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

		<!-- BEGIN CSS for this page -->
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css"/>	
		<style>	
		td.details-control {
		background: url('/admin/plugins/datatables/img/details_open.png') no-repeat center center;
		cursor: pointer;
		}
		tr.shown td.details-control {
		background: url('/admin/plugins/datatables/img/details_close.png') no-repeat center center;
		}
		</style>		
		<!-- END CSS for this page -->
				

<body class="adminbody">
		
<div id="main">



    <div class="content-page">
	
		<!-- Start content -->
        <div class="content">
            
			<div class="container-fluid">

					
							
				<div class="row">
						<div class="col-xl-12">
								<div class="breadcrumb-holder">
										<h1 class="main-title float-left">캠핑장 관리</h1>
										<ol class="breadcrumb float-right">
											<li class="breadcrumb-item">Home</li>
											<li class="breadcrumb-item active">캠핑장 관리</li>
										</ol>
										<div class="clearfix"></div>
								</div>
						</div>
				</div>
				<!-- end row -->

				


				
				<div class="row" style="width: 100% !important; height: 100% !important;">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12" >						
							<div class="card mb-3">
								<div class="card-header">
									<h3><i class="fa fa-list"></i> 캠핑장 관리</h3>
									캠핑장 리스트 추가, 수정 및 삭제	
								</div>
									
								<div class="card-body">
									
									<div class="table-responsive">
									<table id="example2" class="table table-bordered table-hover display">
										<thead>
											<tr>
												<th></th>
												<th>캠핑장 일련번호</th>
												<th>캠핑장 이름</th>
												<th>캠핑장 종류</th>
												<th>지번 주소</th>
												<th>캠핑장 전화번호</th>
												<th>캠핑사이트 수</th>
											</tr>
										</thead>
										<!-- <tfoot>
											<tr>
												<th></th>
												
											</tr>
										</tfoot> -->
									</table>
									</div>
									
								</div>							
							</div><!-- end card-->					
						</div>
						

				</div>


            </div>
			<!-- END container-fluid -->

		</div>
		<!-- END content -->

    </div>
	<!-- END content-page -->
    

</div>

<!-- BEGIN Java Script for this page -->
	<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>

	<script>

	// START CODE FOR Child rows (show extra / detailed information) DATA TABLE 
	function format ( d ) {
		// `d` is the original data object for the row
		return '<table cellpadding="10" cellspacing="0" border="0" style="padding-left:50px;">'+
			'<tr>'+
				'<td>Full name:</td>'+
				'<td>'+d.name+'</td>'+
			'</tr>'+
			'<tr>'+
				'<td>Extension number:</td>'+
				'<td>'+d.p1+'</td>'+
			'</tr>'+
			'<tr>'+
				'<td>Extra info:</td>'+
				'<td>'+d.p2+'</td>'+
			'</tr>'+
			'<tr>'+
				'<td>Extra info:</td>'+
				'<td>'+d.e1+'</td>'+
			'</tr>'+
			'<tr>'+
				'<td>Extra info:</td>'+
				'<td>'+d.e2+'</td>'+
			'</tr>'+
			'<tr>'+
				'<td>Extra info:</td>'+
				'<td>'+d.e3+'</td>'+
			'</tr>'+
		'</table>';
	}
 
		$(document).ready(function() {
			var table = $('#example2').DataTable( {
				"ajax": "campData.json",
				"columns": [
					{
						"className":      'details-control',
						"orderable":      true,
						"data":           null,
						"defaultContent": ''
					},
					{ "data": "id" },
					{ "data": "name" },
					{ "data": "type" },
					{ "data": "addr" },
					{ "data": "tel" },
					{ "data": "sites" }
				],
				"order": [[1, 'asc']]
			} );
			 
			// Add event listener for opening and closing details
			$('#example2 tbody').on('click', 'td.details-control', function () {
				var tr = $(this).closest('tr');
				var row = table.row( tr );
		 
				if ( row.child.isShown() ) {
					// This row is already open - close it
					row.child.hide();
					tr.removeClass('shown');
				}
				else {
					// Open this row
					row.child( format(row.data()) ).show();
					tr.addClass('shown');
				}
			} );
		} );
		// END CODE FOR Child rows (show extra / detailed information) DATA TABLE 		
		
				
		

		
		
			
	</script>	
<!-- END Java Script for this page -->

</body>
