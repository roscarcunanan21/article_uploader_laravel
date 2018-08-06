"use strict";

if (typeof jQuery === 'undefined') {
	error_call('jQuery is required.');
}

+function(Rosie, $) {
	
	Rosie.prototype.run = function () {
		// Set a minimum resolution for mobile
		// and force landscape viewing
		// this.orientation_check();
		
		var current_context = this;
		current_context.details(true);
	    
		// Device orientation detection
		if (is_mobile()) {			  
			window.addEventListener('orientationchange', this.device_orientation_check);			  
			// Initial execution if needed
			current_context.device_orientation_check();
		}
		// alert(__BASE_URL);
		$("#form-article").on('submit',(function(e) {
			// alert("form submitted");
			e.preventDefault();
			$("#message").empty();
			$('#loading').show();
				// alert(__BASE_URL.replace('article','admin')+'/article/add');
			$.ajax({
				url: __BASE_URL.replace('article','admin')+'/article/add', // Url to which the request is send
				type: "POST",             // Type of request to be send, called as method
				data: new FormData(this), // Data sent to server, a set of key/value pairs (i.e. form fields and values)
				contentType: false,       // The content type used when sending data to the server.
				cache: false,             // To unable request pages to be cached
				processData:false,        // To send DOMDocument or non processed data file it is set to false
				success: function(data)   // A function to be called if request succeeds
				{
					var response_object = JSON.parse(data)
					alert(response_object.message);
				}
			});
		}));
		
		$("#file").change(function() {
			var file = $('input[type=file]').val().split('\\').pop();
			var existing_file = $(".form-file").html().replace('<span class="form-file-button">UPLOAD</span>','').trim();
			var existing_html = $(".form-file").html();
			$(".form-file").html(existing_html.replace(existing_file,file));
			// alert('existing_file:'+existing_file+'done');
			// $(".form-file").append(file);
		});
	};

	Rosie.prototype.details = function (bypass) {

		var url      = window.location.href;
		// alert(url);
		// if the url ends with /article or /archive
		if(url.endsWith("/admin") || url.endsWith("/admin#")){			
			this.paginate(null);			
		}else{			
			// check if url ends with /article/single/{number}
		    var expr = /\/admin\/article\/edit\/(\d+)/;
			var res = url.match(expr);
			// alert(res);
			
			if ((res!=null) && (res.length == 2)){
				__BASE_URL = __BASE_URL.replace('/admin', '/article');
				ajax_call(__BASE_URL + '/id/' + res[1], {
				}, function (response) {	
					if (! is_error(response)) {	
						var response_object = JSON.parse(response);
						if (response_object['status'] == 200){
							
							var image_url = url.replace(res[0],'');
							image_url = image_url.replace('#','');
							var article = response_object['response'];
							
							$("#article-title").val(article.title);
							$("#article-content").text(article.content);
							$("#article-id").val(article.id);
							$(".form-file").append(article.image);
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
		if(url.endsWith("/archive") || url.endsWith("/archive#") || page==null){
			archive_mode = true;
		}
		
		// alert("url ends with /article");
		var base_url = __BASE_URL.replace('/admin', '/article');
		var ajax_url = base_url+'/all?page='+page+'&page_length=5';
		if (page == null){
			ajax_url = base_url+'/all';
		}
		ajax_call(ajax_url, {
		}, function (response) {	
			if (! is_error(response)) {	
				var response_object = JSON.parse(response);
				if (response_object['status'] == 200){
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
                    		
						$(".archive-admin").append('<li class="archive-item"><a href="admin/article/edit/'+articles[i].id+'" class="post-article"><time class="post-article-date" datetime="'+d.getFullYear()+'-'+d.getMonth()+'-'+d.getDate()+'">'+d.getDate()+' '+monthNames[d.getMonth()]+', '+d.getFullYear()+'</time><h1 class="post-article-title">'+articles[i].title+'</h1></a></li>');
					}		
					if (archive_mode){
						// set the page numbers
						var page_count = (total_articles_count%5)+1;												
						$("#page-number-span").text(page+'/'+page_count);
                		
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
	
