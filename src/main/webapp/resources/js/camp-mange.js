$(document).ready(function(){
    //start_camp_manage(false, false, 1);
})

function start_camp_manage(isAsync, isMore, currentPage){
    let sendData = {
        currentPage: currentPage,
        isMore: isMore,
        category: document.getElementById("category").value,
        keyword: document.getElementById("keyword").value
    }
    $.ajax({
        url: "camp_manage",
        type: "POST",
        async: isAsync,
        data: sendData,
        dataType: "HTML",
        success: function(responseData){
            console.log("call - get_table : success");
            $('#camp-manage-box').html(responseData);
        }
    });
}