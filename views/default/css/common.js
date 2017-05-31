$(function(){
		$("#nav-list li#l01").hover(function(){
			index=$(this).index()
			$("#menu01").show()
			$("#nav li").find("a").removeClass("current");
			$(this).children("a").addClass("current")
			$("#menu01 li").hide();
			$("#menu01 li").show();
		},function(){
				$("#menu01").hide()
				$("#nav li").find("a").removeClass("current");
		})
		$("#menu01").hover(function(){
			$("#menu01").show()
			$("#nav-list li#l01").find("a").addClass("current");
		},function(){
			var _this=$("#menu01")
			setTimeout(function(){
			 _this.hide();
			},400)
			setTimeout(function(){
			 $("#nav-list li#l01").find("a").removeClass("current");
			},400)
		})
		//02
		$("#nav-list li#l02").hover(function(){
			index=$(this).index()
			//$("#menu02").show()
			$("#nav li").find("a").removeClass("current");
			$(this).children("a").addClass("current")
			$("#menu02 li").hide();
			//$("#menu02 li").show();
		},function(){
				$("#menu02").hide()
				$("#nav li").find("a").removeClass("current");
		})
		$("#menu02").hover(function(){
			//$("#menu02").show()
		},function(){
			var _this=$("#menu02")
			setTimeout(function(){
			 _this.hide();
			},400)
			setTimeout(function(){
			 $("#nav-list li#l02").find("a").removeClass("current");
			},400)
		})
		//03
			$("#nav-list li#l03").hover(function(){
			index=$(this).index()
			$("#menu03").show()
			$("#nav li").find("a").removeClass("current");
			$(this).children("a").addClass("current")
			$("#menu03 li").hide();
			$("#menu03 li").show();
		},function(){
				$("#menu03").hide()
				$("#nav li").find("a").removeClass("current");
		})
		$("#menu03").hover(function(){
			$("#menu03").show()
			$("#nav-list li#l03").find("a").addClass("current");
		},function(){
			var _this=$("#menu03")
			setTimeout(function(){
			 _this.hide();
			},400)
			setTimeout(function(){
			 $("#nav-list li#l03").find("a").removeClass("current");
			},400)
		})
		//04
			$("#nav-list li#l04").hover(function(){
			index=$(this).index()
			$("#menu04").show()
			$("#nav li").find("a").removeClass("current");
			$(this).children("a").addClass("current")
			$("#menu04 li").hide();
			$("#menu04 li").show();
		},function(){
				$("#menu04").hide()
				$("#nav li").find("a").removeClass("current");
		})
		$("#menu04").hover(function(){
			$("#menu04").show()
			$("#nav-list li#l04").find("a").addClass("current");
		},function(){
			var _this=$("#menu04")
			setTimeout(function(){
			 _this.hide();
			},400)
			setTimeout(function(){
			 $("#nav-list li#l04").find("a").removeClass("current");
			},400)
		})
		//05
			$("#nav-list li#l05").hover(function(){
			index=$(this).index()
			$("#menu05").show()
			$("#nav li").find("a").removeClass("current");
			$(this).children("a").addClass("current")
			$("#menu05 li").hide();
			$("#menu05 li").show();
		},function(){
				$("#menu05").hide()
				$("#nav li").find("a").removeClass("current");
		})
		$("#menu05").hover(function(){
			$("#menu05").show()
			$("#nav-list li#l05").find("a").addClass("current");
		},function(){
			var _this=$("#menu05")
			setTimeout(function(){
			 _this.hide();
			},400)
			setTimeout(function(){
			 $("#nav-list li#l05").find("a").removeClass("current");
			},400)
		})
		//06
			$("#nav-list li#l06").hover(function(){
			index=$(this).index()
			$("#menu06").show()
			$("#nav li").find("a").removeClass("current");
			$(this).children("a").addClass("current")
			$("#menu06 li").hide();
			$("#menu06 li").show();
		},function(){
				$("#menu06").hide()
				$("#nav li").find("a").removeClass("current");
		})
		$("#menu06").hover(function(){
			$("#menu06").show()
			$("#nav-list li#l06").find("a").addClass("current");
		},function(){
			var _this=$("#menu06")
			setTimeout(function(){
			 _this.hide();
			},400)
			setTimeout(function(){
			 $("#nav-list li#l06").find("a").removeClass("current");
			},400)
		})
	})
	
	
//关键函数：通过控制i ，来显示不通的幻灯片
function showImg(i){
	$("#img a")
		.eq(i).stop(true,true).fadeIn(800)
		.siblings("a").fadeOut(800);
	 $("#btn span")
		.eq(i).addClass("hov")
		.siblings().removeClass("hov");
}
$(document).ready(function(){
	$("#img a").eq(0).show();
	$("#btn span").eq(0).addClass('hov'); 
	$("#showtext").empty().append($("#img a").eq(0).attr('title'));
	 var index = 0;
	 $("#btn span").click(function(){
		index  =  $("#btn span").index(this);
		showImg(index);
	});	
	 var lenght=$("#img a").length;
	 var time=4000;
	 //滑入 停止动画，滑出开始动画.
	 $('#frame').hover(
	 	function(){
			  if(MyTime){
				 clearInterval(MyTime);
			  }
		 },function(){
			  	MyTime = setInterval(function(){
			    showImg(index)
				index++;
				if(index==lenght){index=0;}
			  } , time);
	 });
	 //自动开始
	 var MyTime = setInterval(function(){
		showImg(index)
		index++;
		if(index==lenght){index=0;}
	 } , time);
	 
	 $("#btn span").hover(function(){
		 $(this).find("i").fadeIn(400);
	 },function(){
		 $(this).find("i").fadeOut(200)
	 })
})


// 首页海尔在全球
	$(document).ready(function(){ 
		//鼠标划过地图切换地区
		$('#dq_01').mouseover(function(){
			$("#dq01").addClass("cur");
		});
		$('#dq_01').mouseout(function(){
			$("#dq01").removeClass("cur");
		});
		$('#dq_02').mouseover(function(){
			$("#dq02").addClass("cur");
		});
		$('#dq_02').mouseout(function(){
			$("#dq02").removeClass("cur");
		});
		$('#dq_03').mouseover(function(){
			$("#dq03").addClass("cur");
		});
		$('#dq_03').mouseout(function(){
			$("#dq03").removeClass("cur");
		});
		$('#dq_04').mouseover(function(){
			$("#dq04").addClass("cur");
		});
		$('#dq_04').mouseout(function(){
			$("#dq04").removeClass("cur");
		});
		$('#dq_05').mouseover(function(){
			$("#dq05").addClass("cur");
		});
		$('#dq_05').mouseout(function(){
			$("#dq05").removeClass("cur");
		});
		
		$('#dq_06').mouseover(function(){
			$("#dq06").addClass("cur");
		});
		$('#dq_06').mouseout(function(){
			$("#dq06").removeClass("cur");
		});
		
		$('#dq_07').mouseover(function(){
			$("#dq07").addClass("cur");
		});
		$('#dq_07').mouseout(function(){
			$("#dq07").removeClass("cur");
		});
		
		//鼠标划过地区切换地图
		$('#dq01').mouseover(function(){
			$("#dq1").addClass("add_xj");
			$("#dq01").addClass("cur");
		});
		$('#dq01').mouseout(function(){
			$("#dq1").removeClass("add_xj");
			$("#dq01").removeClass("cur");
		});
		
		$('#dq02').mouseover(function(){
			$("#dq2").addClass("add_xz");
			$("#dq02").addClass("cur");
		});
		$('#dq02').mouseout(function(){
			$("#dq2").removeClass("add_xz");
			$("#dq02").removeClass("cur");
		});
		
		$('#dq03').mouseover(function(){
			$("#dq3").addClass("add_qh");
			$("#dq03").addClass("cur");
		});
		$('#dq03').mouseout(function(){
			$("#dq3").removeClass("add_qh");
			$("#dq03").removeClass("cur");
		});
		
		$('#dq04').mouseover(function(){
			$("#dq4").addClass("add_gs");
			$("#dq04").addClass("cur");
		});
		$('#dq04').mouseout(function(){
			$("#dq4").removeClass("add_gs");
			$("#dq04").removeClass("cur");
		});
		$('#dq05').mouseover(function(){
			$("#dq5").addClass("add_gs5");
			$("#dq05").addClass("cur");
		});
		$('#dq05').mouseout(function(){
			$("#dq5").removeClass("add_gs5");
			$("#dq05").removeClass("cur");
		});
		
		
		$('#dq06').mouseover(function(){
			$("#dq6").addClass("add_gs7");
			$("#dq06").addClass("cur");
		});
		$('#dq06').mouseout(function(){
			$("#dq6").removeClass("add_gs7");
			$("#dq06").removeClass("cur");
		});
		
		
		$('#dq07').mouseover(function(){
			$("#dq7").addClass("add_gs6");
			$("#dq07").addClass("cur");
		});
		$('#dq07').mouseout(function(){
			$("#dq7").removeClass("add_gs6");
			$("#dq07").removeClass("cur");
		});
	});
	
	/*下拉 select*/
	$(function(){
		$(".select-click").click(function(){
			var showUl=$(this).parents("dl").find("li");
			var showdl=$(this).parents("dl");
			var inputValue=$(this).siblings("input")
			$(this).parents("dt").siblings("dd").toggle();
			$(this).parents("dt").siblings("dd");
			showUl.click(function(){
				var selectText=$(this).text()
				inputValue.val(selectText)
				$(this).parents("dd").hide()
			});
			showUl.hover(function(){
				$(this).css("background-color","#F1F1F1")
			},function(){
				$(this).css("background-color","#FFF")
			});
			showdl.hover(function(){
			    return false;
			},function(){
				setTimeout(function(){
					showdl.find("dd").slideUp(200)
				},400)
			});
		})
	})