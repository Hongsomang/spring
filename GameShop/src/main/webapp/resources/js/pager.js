$(function(){
    $("tbody").on("click",".delete",function(e){
        const button=$(e.target);
        
        const tr=button.closest("tr");
        
        console.log(`삭제 ${tr.data("id")}`);
    });
    
	$("tbody").on("click",".update",function(e){
        const button=$(e.target);
        
        const tr=button.closest("tr");
        
        console.log(`변경 ${tr.data("id")}`);
    });
    
    $.ajax("/api/publisher",{
        method:"GET",
        contentType:"application/json",
        dataType: "json",
        success:result => {
            //object--> string
            //JSON.stringify(object)
            //string-->object
            console.log(result);
			
            
            result.forEach(item => {
                const tr= $("<tr>");
                tr.attr("data-id",item.id);
                
                const td_id =$("<td>");
                td_id.text(item.id);
                tr.append(td_id);

                const td_name=$("<td>");+
                td_name.text(item.name);
                tr.append(td_name);

                const td_nameEng=$("<td>");
                td_nameEng.text(item.nameEng);
                tr.append(td_nameEng);

                const td_url=$("<td>");
                td_url.text(item.url)
                tr.append(td_url);
                
                const td_manager=$("<td>");
                
                const button_delete=$("<button>");
                button_delete.addClass("delete");
                button_delete.text("삭제");
                td_manager.append(button_delete);
                
                const button_update=$("<button>");
                button_update.addClass("update");
                button_update.text("변경")
                td_manager.append(button_update);
                
                tr.append(td_manager);
                
                $("tbody").append(tr);
                
                if(result !=null){
					//document.querySelector('#hidden').style.display = 'none';
					$("#hidden").css('display','none');
				}
            });
        } ,
        //error: 
    });
});