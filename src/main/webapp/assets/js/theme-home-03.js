(function($){
    "use strict"; // Start of use strict
jQuery(document).ready(function($){  
		<!-- goto top -->
		$("#gototop").hide();
		$(function () {
			var wh = $(window).height();
			var whtml =  $(document).height();			
			$(window).scroll(function () {				
				if ($(this).scrollTop() > whtml/10) {
					$('#gototop').fadeIn();
				} else {
					$('#gototop').fadeOut();
				}
			});
			$('#gototop').click(function () {
				$('body,html').animate({
					scrollTop: 0
				}, 800);
				return false;
			});
		});
		<!-- menu -->
				$('.vt-slider67 div.products-grid').owlCarousel({
					items: 4,
					itemsCustom: [ 
						[0, 1], 
						[480, 2], 
						[768, 2], 
						[992,3], 
						[1200,3] 
					],
					pagination: true,
					slideSpeed : 800,
					addClassActive: true,
				});
	<!-- scroll top	 -->
	$(window).scroll(function () {				
			if ($(this).scrollTop() >150) {
				$('.box-header-02').addClass('fixed');
			} else {
				$('.box-header-02').removeClass('fixed');
			}
	});
	$('.menu .megamenu-parent').hover(function(){
	$('.bgr-menu').css('display','block');
		},function(){
			$('.bgr-menu').css('display','none');
	}); 
	
	<!-- search advan -->
	jQuery('.drop-search span.selected').click(function(){
	jQuery('.drop-search ul').toggleClass('show');
	});
	jQuery('.drop-search ul li').click(function(){
	jQuery('.drop-search .selected').html(jQuery(this).html());
	jQuery('.drop-search ul').toggleClass('show');
	});
	jQuery("body").click(function() {
	jQuery('.drop-search ul').removeClass('show');
	});
	jQuery(".drop-search").click(function(e) {
		e.stopPropagation();
	});
	/* vertical menu */
	jQuery(".vertical-menu .all-cate").click(function(e) {
		jQuery(".vertical-menu ul").slideToggle();
	});
	
	<!-- slide  show -->
	$('.vt-slideshow').revolution({
	 startwidth:1170,
	 startheight:400,			 
  });
	
	<!-- position 03 -->
	jQuery('.box-1 .control li').click(function(){
	jQuery('.box-2 .slide').animate({left: jQuery(this).attr('data-rel')});
	jQuery('.box-1 .control li').removeClass('active');
	jQuery(this).addClass('active');
	});
	
	<!-- position 02 -->
	$('.vt-slider3 div.products-grid').owlCarousel({
		items: 4,
		itemsCustom: [ 
			[0, 1], 
			[480, 2], 
			[768, 3], 
			[992,4], 
			[1200,4] 
		],
		pagination: false,
		slideSpeed : 800,
		addClassActive: true,
		afterAction: function (e) {
			if(this.$owlItems.length > this.options.items){
				$('.vt-slider3 .navslider').show();
			}else{
				$('.vt-slider3 .navslider').hide();
			}
		}
		//scrollPerPage: true,
	});
	$('.vt-slider3 .navslider .prev').on('click', function(e){
		e.preventDefault();
		$('.vt-slider3 div.products-grid').trigger('owl.prev');
	});
	$('.vt-slider3 .navslider .next').on('click', function(e){
		e.preventDefault();
		$('.vt-slider3 div.products-grid').trigger('owl.next');
	});
	<!-- position 04 -->
	$('.vt-slider4 div.products-grid').owlCarousel({
		items: 1,
		itemsCustom: [ 
			[0, 1], 
			[480, 1], 
			[768, 1], 
			[992,1], 
			[1200,1] 
		],
		pagination: false,
		slideSpeed : 800,
		addClassActive: true,
		afterAction: function (e) {
			if(this.$owlItems.length > this.options.items){
				$('.vt-slider4 .navslider').show();
			}else{
				$('.vt-slider4 .navslider').hide();
			}
		}
		//scrollPerPage: true,
	});
	$('.vt-slider4 .navslider .prev').on('click', function(e){
		e.preventDefault();
		$('.vt-slider4 div.products-grid').trigger('owl.prev');
	});
	$('.vt-slider4 .navslider .next').on('click', function(e){
		e.preventDefault();
		$('.vt-slider4 div.products-grid').trigger('owl.next');
	});
	
	<!-- position 08 -->
	<!-- position 08 1 -->
		$('.vt-slider7 div.products-grid').owlCarousel({
			items: 4,
			itemsCustom: [ 
				[0, 1], 
				[480, 2], 
				[768, 3], 
				[992,3], 
				[1200,3] 
			],
			pagination: false,
			slideSpeed : 800,
			addClassActive: true,
			afterAction: function (e) {
				if(this.$owlItems.length > this.options.items){
					$('.vt-slider7 .navslider').show();
				}else{
					$('.vt-slider7 .navslider').hide();
				}
			}
			//scrollPerPage: true,
		});
		$('.vt-slider7 .navslider .prev').on('click', function(e){
			e.preventDefault();
			$('.vt-slider7 div.products-grid').trigger('owl.prev');
		});
		$('.vt-slider7 .navslider .next').on('click', function(e){
			e.preventDefault();
			$('.vt-slider7 div.products-grid').trigger('owl.next');
		});
		<!-- position 08 2 -->
		$('.vt-slider5 div.products-grid').owlCarousel({
			items: 4,
			itemsCustom: [ 
				[0, 1], 
				[480, 2], 
				[768, 3], 
				[992,3], 
				[1200,3] 
			],
			pagination: false,
			slideSpeed : 800,
			addClassActive: true,
			afterAction: function (e) {
				if(this.$owlItems.length > this.options.items){
					$('.vt-slider5 .navslider').show();
				}else{
					$('.vt-slider5 .navslider').hide();
				}
			}
			//scrollPerPage: true,
		});
		$('.vt-slider5 .navslider .prev').on('click', function(e){
			e.preventDefault();
			$('.vt-slider5 div.products-grid').trigger('owl.prev');
		});
		$('.vt-slider5 .navslider .next').on('click', function(e){
			e.preventDefault();
			$('.vt-slider5 div.products-grid').trigger('owl.next');
		});
		<!-- position 08 3 -->
		$('.vt-slider6 div.products-grid').owlCarousel({
		items: 4,
		itemsCustom: [ 
			[0, 1], 
			[480, 2], 
			[768, 3], 
			[992,3], 
			[1200,3] 
		],
		pagination: false,
		slideSpeed : 800,
		addClassActive: true,
		afterAction: function (e) {
			if(this.$owlItems.length > this.options.items){
				$('.vt-slider6 .navslider').show();
			}else{
				$('.vt-slider6 .navslider').hide();
			}
		}
		//scrollPerPage: true,
	});
	$('.vt-slider6 .navslider .prev').on('click', function(e){
		e.preventDefault();
		$('.vt-slider6 div.products-grid').trigger('owl.prev');
	});
	$('.vt-slider6 .navslider .next').on('click', function(e){
		e.preventDefault();
		$('.vt-slider6 div.products-grid').trigger('owl.next');
	});
     /* detail */
	$('.product-options-bottom .size ul li').click(function(){
	$('.price-info .price-box .price').text($(this).attr('add'));
	$('.product-options-bottom .size ul li').removeClass('actived');
	$(this).addClass('actived');
	});
	$('.product-options-bottom .color ul li').click(function(){
	$('.price-info .price-box .price').text($(this).attr('add'));
	$('.product-options-bottom .color ul li').removeClass('actived');
	$(this).addClass('actived');
	});
	  $('#galary-image .item .sub-item img').click(function(){
		$('.image-main img').attr('src',$(this).attr('src'));
		});
		$('.click-quick-view').click(function(){
		$('.image-quick-view .content img').attr('src',$('.image-main img').attr('src'));
		$('.image-quick-view').toggleClass('no-display');
		});
		$('.image-quick-view .content span').click(function(){
		$('.image-quick-view').toggleClass('no-display');
		});
	  $('.lastest-slider div.products-grid').owlCarousel({
		items: 1,
		itemsCustom: [ 
			[0, 1], 
			[480, 1], 
			[768, 1], 
			[992,1], 
			[1200,1] 
		],
		pagination: true,
		slideSpeed : 800,
		addClassActive: true,
		//scrollPerPage: true,
	});
	
	/* grid,list */
		<!-- left 1 -->
				$('#tab1').click(function(){
					if($(this).hasClass('accordion-open')){
						$(this).removeClass('accordion-open');
						$(this).addClass('accordion-close');
					}else{
						$(this).removeClass('accordion-close');
						$(this).addClass('accordion-open');
					}                            
					$('.tabcontent1').slideToggle();
				});
				<!-- left 2 -->
				$('#tab11').click(function(){
					if($(this).hasClass('accordion-open')){
						$(this).removeClass('accordion-open');
						$(this).addClass('accordion-close');
					}else{
						$(this).removeClass('accordion-close');
						$(this).addClass('accordion-open');
					}                            
					$('.tabcontent11').slideToggle();
				});
				<!-- left 3 -->
				$('#tab12').click(function(){
					if($(this).hasClass('accordion-open')){
						$(this).removeClass('accordion-open');
						$(this).addClass('accordion-close');
					}else{
						$(this).removeClass('accordion-close');
						$(this).addClass('accordion-open');
					}                            
					$('.tabcontent12').slideToggle();
				});
				<!-- left 4 -->
				$('#tab13').click(function(){
					if($(this).hasClass('accordion-open')){
						$(this).removeClass('accordion-open');
						$(this).addClass('accordion-close');
					}else{
						$(this).removeClass('accordion-close');
						$(this).addClass('accordion-open');
					}                            
					$('.tabcontent13').slideToggle();
				});
				<!-- left 5 -->
					$('#tab2').click(function(){
						if($(this).hasClass('accordion-open')){
							$(this).removeClass('accordion-open');
							$(this).addClass('accordion-close');
						}else{
							$(this).removeClass('accordion-close');
							$(this).addClass('accordion-open');
						}                            
						$('.tabcontent2').slideToggle();
					});
					<!-- left 5 -->
				$('#tab4').click(function(){
					if($(this).hasClass('accordion-open')){
						$(this).removeClass('accordion-open');
						$(this).addClass('accordion-close');
					}else{
						$(this).removeClass('accordion-close');
						$(this).addClass('accordion-open');
					}                            
					$('.tabcontent4').slideToggle();
				});
				<!-- left 6 -->
				$('#tab3').click(function(){
							if($(this).hasClass('accordion-open')){
								$(this).removeClass('accordion-open');
								$(this).addClass('accordion-close');
							}else{
								$(this).removeClass('accordion-close');
								$(this).addClass('accordion-open');
							}                            
							$('.tabcontent3').slideToggle();
						});
					<!-- left 7 -->
					$('#tab5').click(function(){
						if($(this).hasClass('accordion-open')){
							$(this).removeClass('accordion-open');
							$(this).addClass('accordion-close');
						}else{
							$(this).removeClass('accordion-close');
							$(this).addClass('accordion-open');
						}                            
						$('.tabcontent5').slideToggle();
					});
					<!-- toolbar top -->
					jQuery('.toolbar-top .selected-order').html(jQuery('.toolbar-top .select-order li .selected').html());
					jQuery('.toolbar-top .selected-limiter').html(jQuery('.toolbar-top .select-limiter li .selected').html());
					 jQuery('.toolbar-top .selected-limiter').click(function(){
					  jQuery('.toolbar-top .select-limiter').toggleClass('current-item');
					  });
					  
					  jQuery('.toolbar-top .select-limiter li').click(function(){
					  jQuery('.toolbar-top .selected-limiter').html(jQuery(this).html());
					  });
					  
					  jQuery('.toolbar-top .selected-order').click(function(){
					  jQuery('.toolbar-top .select-order').toggleClass('current-item');
					   });
					   
					   jQuery('.toolbar-top .select-order li').click(function(){
					  jQuery('.toolbar-top .selected-order').html(jQuery(this).html());
					  });
					<!-- toolbar bootom-->
					jQuery('.toolbar-bottom .selected-order').html(jQuery('.toolbar-bottom .select-order li .selected').html());
						jQuery('.toolbar-bottom .selected-limiter').html(jQuery('.toolbar-bottom .select-limiter li .selected').html());
						 jQuery('.toolbar-bottom .selected-limiter').click(function(){
						  jQuery('.toolbar-bottom .select-limiter').toggleClass('current-item');
						  });
						  
						  jQuery('.toolbar-bottom .select-limiter li').click(function(){
						  jQuery('.toolbar-bottom .selected-limiter').html(jQuery(this).html());
						  });
						  
						  jQuery('.toolbar-bottom .selected-order').click(function(){
						  jQuery('.toolbar-bottom .select-order').toggleClass('current-item');
						   });
						   
						   jQuery('.toolbar-bottom .select-order li').click(function(){
						  jQuery('.toolbar-bottom .selected-order').html(jQuery(this).html());
						  });
	});
})(jQuery); // End of use strict