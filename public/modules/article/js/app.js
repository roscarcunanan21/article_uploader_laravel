"use strict";

if (typeof jQuery === 'undefined') {
	error_call('jQuery is required.');
}

+function(Rosie, $) {
	
	Rosie.prototype.run = function () {
		// Set a minimum resolution for mobile
		// and force landscape viewing
		// this.orientation_check();		
		// Booking page
		
		var current_context = this;
		current_context.details(true);
		
		$('#paginate-section').on('click', '.paginate-next', function(e) {
        	var current_page = $("#pageNumber").val();
	        e.preventDefault();
	        current_context.paginate(+current_page + 1);	
	    });
	    
		$('#paginate-section').on('click', '.paginate-prev', function(e) {
        	var current_page = $("#pageNumber").val();
        	// alert("current_page: "+current_page);
	        e.preventDefault();
	        current_context.paginate(+current_page - 1);	
	    });
	    
		$('#paginate-section').on('click', '.paginate-number', function(e) {
        	var current_page = $("#pageNumber").val();
	        e.preventDefault();
	        // alert("current_page: "+current_page);
	        current_context.paginate(+($( this ).text()));
	    });
	    
		// Device orientation detection
		if (is_mobile()) {			  
			window.addEventListener('orientationchange', this.device_orientation_check);			  
			// Initial execution if needed
			current_context.device_orientation_check();
		}
	};

	Rosie.prototype.details = function (bypass) {

		var url      = window.location.href;
		
		// if the url ends with /article or /archive
		if(url.endsWith("/article") || url.endsWith("/article#") || url.endsWith("/archive") || url.endsWith("/archive#")){			
			this.paginate(1);			
		}else{			
			// check if url ends with /article/single/{number}
		    var expr = /\/article\/single\/(\d+)/;
			var res = url.match(expr);
			// alert(res);
			
			if ((res!=null) && (res.length == 2)){
				ajax_call(__BASE_URL + '/id/' + res[1], {
				}, function (response) {	
					if (! is_error(response)) {	
						var response_object = JSON.parse(response);
						if (response_object['status'] == 200){
							
							var image_url = url.replace(res[0],'');
							image_url = image_url.replace('#','');
							var article = response_object['response'];
							var monthNames = ["JAN","FEB","MAR","APR", "MAY", "JUN", "JUL","AUG", "SEP", "OCT","NOV", "DEC"];	
							var utcSeconds = article.created;
							var d = new Date(0); // The 0 there is the key, which sets the date to the epoch
							d.setUTCSeconds(utcSeconds);
							
							$("#single-title").text(article.title);
							$("#single-content").text(article.content);
							$('#single-image').attr('src',image_url+'/assets/images/'+article.image);						
							$('#single-date').attr('datetime',d.getFullYear()+'-'+d.getMonth()+'-'+d.getDate());
							$('#single-date').text(d.getDate()+' '+monthNames[d.getMonth()]+', '+d.getFullYear());
						}
					} else {					
						error_call('<a href="javascript:void(0)" class="alert-link">api</a> is not available.');
					}	
				}, 'GET');	
				
			}
			// alert("url ends with /article");
		}
	};	

	Rosie.prototype.paginate = function (page) {
		
		$("#pageNumber").val(page);

		var url      = window.location.href;
		// alert(url);
			
		var archive_mode = false;
		if(url.endsWith("/archive") || url.endsWith("/archive#")){
			archive_mode = true;
		}
		
		// alert("url ends with /article");
		ajax_call(__BASE_URL+'/all?page='+page+'&page_length=5', {
		}, function (response) {	
			if (! is_error(response)) {	
				var response_object = JSON.parse(response);
				if (response_object['status'] == 200){
					var image_url = url.replace('/article','');
					image_url = image_url.replace('/archive','');
					image_url = image_url.replace('#','');
					// alert(image_url);
					var articles = response_object['response'].results;
					var total_articles_count = response_object['response'].count;
					// alert(total_articles_count);
					$("#archive-list").empty();
					for (var i = 0; i < articles.length; i++){	
						var monthNames = ["JAN","FEB","MAR","APR", "MAY", "JUN", "JUL","AUG", "SEP", "OCT","NOV", "DEC"];	
						var utcSeconds = articles[i].created;
						var d = new Date(0); // The 0 there is the key, which sets the date to the epoch
						d.setUTCSeconds(utcSeconds);
																
						$("#archive-list").append('<li class="archive-item"><article class="card"><a href="'+image_url+'/article/single/'+articles[i].id+'" class="card-link"><img src="'+image_url+'/assets/images/'+articles[i].image+'" alt="" class="card-image"><div class="card-bottom"><h1 class="card-title">'+articles[i].title+'</h1><time class="card-date" datetime="'+d.getFullYear()+'-'+d.getMonth()+'-'+d.getDate()+'">'+d.getDate()+' '+monthNames[d.getMonth()]+', '+d.getFullYear()+'</time></div></a></article></li>');
					}		
					if (archive_mode){
						// set the page numbers
						// alert("total_articles_count: " + total_articles_count);
						// alert("modulo: " + total_articles_count%5);
						var page_count = Math.floor(total_articles_count/5)+1;		
						// alert("page_count: " + page_count);										
						$("#page-number-span").text(page+'/'+page_count);                       
                
                		//<a href="#" class="paginate-number is-current">1</a>   
                		
						$("#paginate-section").empty();
						
						if (page == 1){
							$("#paginate-section").append('<a href="#" class="paginate-prev is-disable"><span class="paginate-prev-arrow"></span></a>');							
						}else{
							$("#paginate-section").append('<a href="#" class="paginate-prev"><span class="paginate-prev-arrow"></span></a>');							
						}
							
						for(var i = 1; i <= page_count; i++){
							if (i == page){								
								$("#paginate-section").append('<a href="#" class="paginate-number is-current">'+i+'</a>');	
							}else{
								$("#paginate-section").append('<a href="#" class="paginate-number">'+i+'</a>');								
							}				
						}	
						
						if (page_count == page){
							$("#paginate-section").append('<a href="#" class="paginate-next is-disable" id="paginate-next"><span class="paginate-next-arrow"></span></a>');								
						}else{
							$("#paginate-section").append('<a href="#" class="paginate-next" id="paginate-next"><span class="paginate-next-arrow"></span></a>');							
						}							                    
					}
				}
			} else {					
				error_call('<a href="javascript:void(0)" class="alert-link">api</a> is not available.');
			}	
		}, 'GET');
	};
    
}(window.Rosie = window.Rosie || function(){}, jQuery);

+function (Rosie, $){

	new Rosie().run();

}(window.Rosie = window.Rosie || function() {}, jQuery);
	
