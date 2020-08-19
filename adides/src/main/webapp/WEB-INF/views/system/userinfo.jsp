<%@ page language="java" import="com.aieduc.entity.User" isELIgnored="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.aieduc.utils.PageHelper" %> 
<%@ page import="com.aieduc.entity.Dept" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
  <head>
    <title>用户管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="http://tattek.com/minimal/assets/images/favicon.ico" />
    <!-- Bootstrap -->
    <link href="assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/vendor/animate/animate.css">
    <link type="text/css" rel="stylesheet" media="all" href="assets/js/vendor/mmenu/css/jquery.mmenu.all.css" />
    <link rel="stylesheet" href="assets/js/vendor/videobackground/css/jquery.videobackground.css">
    <link rel="stylesheet" href="assets/css/vendor/bootstrap-checkbox.css">

    <link rel="stylesheet" href="assets/js/vendor/summernote/css/summernote.css">
    <link rel="stylesheet" href="assets/js/vendor/summernote/css/summernote-bs3.css">
    <link rel="stylesheet" href="assets/js/vendor/chosen/css/chosen.min.css">
    <link rel="stylesheet" href="assets/js/vendor/chosen/css/chosen-bootstrap.css">
    <link rel="stylesheet" href="assets/js/vendor/datepicker/css/bootstrap-datetimepicker.css">
    <link rel="stylesheet" href="assets/js/vendor/colorpicker/css/bootstrap-colorpicker.css">
    <link rel="stylesheet" href="assets/js/vendor/colorpalette/bootstrap-colorpalette.css">

    <link href="assets/css/minimal.css" rel="stylesheet">
<script src="assets/js/jquery.js"></script>
  </head>
  <body class="bg-1">
    <div id="wrap">
      <div class="row">
        <div class="navbar navbar-default navbar-fixed-top navbar-transparent-black mm-fixed-top" user="navigation" id="navbar">
           <jsp:include page="../top.jsp"></jsp:include>
           <jsp:include page="../bottom.jsp"></jsp:include>


            <!-- Sidebar -->
            <ul class="nav navbar-nav side-nav" id="sidebar">
              
              <li class="collapsed-content"> 
                <ul>
                  <li class="search"><!-- Collapsed search pasting here at 768px --></li>
                </ul>
              </li>
             <jsp:include page="../left.jsp"></jsp:include>

 
        <div id="content" class="col-md-12">
          <div class="pageheader">
            

            <h2><i class="fa fa-thumb-tack" style="line-height: 48px;padding-left: 1px;"></i> 系统管理 <span>用户信息管理</span></h2>
            
 <section class="tile color transparent-black">



                  <!-- tile header -->
                  <div class="tile-header">
                    <h1>
                 <strong> 
               
                  <div class="input-group">
                  <form action="#" name="searchForm">
                  <input id="userName" name="userName" type="text" class="form-control"  placeholder="用户名">
                  <span id="addMsg"></span>
                  
                  </form>
                  </div>
                 
				   
               
                </strong> 
                
                    </h1>
                    <div class="controls">
                      <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                      
                    </div>
                    
                  </div>
                  
                    <div style="border: 1px black;width: 100%; height: 50px;text-align: right;">
                  <input type="button"  class="btn btn-primary margin-bottom-20" value="重置" onclick="resetForm()" style="float: right:"/>&nbsp;&nbsp;
				  <input type="submit"  class="btn btn-primary margin-bottom-20" value="查询" onclick="changePage(1,10)" style="float: right:"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body nopadding">
                    
                    <table class="table">
                      <thead>
                        <tr>
                          <th></th>
                          <th>用户id</th>
                          <th>用户名</th>
                          <th>真实姓名</th>
                          <th>手机号码</th>
                          <th>性别</th>
                          <th>部门</th>
                          <th>操作</th>
                        </tr>
                      </thead>
                      
                       <tbody id="dataBody"></tbody>
                    </table>
        
                  </div>
                  <!-- /tile body -->
              </section>
               <div class="box-footer pull-right" id="bottomPage"></div>
               
                          <!-- modal --> 
            <div class="modal fade" id="cal-new-event" tabindex="-1" role="dialog" aria-labelledby="new-event" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                   
                    <h3 class="modal-title thin" id="new-event">用户信息修改</h3>
                  </div>
                  <form role="form" id="add-event" parsley-validate>
                    <div class="modal-body">
                        
                      <div class="form-group">
                        <label class="control-label">用户名</label>
                        <input type="text" class="form-control" id="event-title" name="event-title" parsley-trigger="change" parsley-required="true" parsley-minlength="4" parsley-validation-minlength="1">
                       <label class="control-label">真实姓名</label>
                        <input type="text" class="form-control" id="event-title" name="event-title" parsley-trigger="change" parsley-required="true" parsley-minlength="4" parsley-validation-minlength="1">
                         <label class="control-label">手机号码</label>
                        <input type="text" class="form-control" id="event-title" name="event-title" parsley-trigger="change" parsley-required="true" parsley-minlength="4" parsley-validation-minlength="1">
                         <label class="control-label">性别</label>
                        <input type="radio" name="userSex" size="36" value="1" />男&nbsp;
                        <input type="radio" name="userSex" size="36" value="2" />女&nbsp;<br>
                         <label class="control-label">部门</label>
                        <input type="text" class="form-control" id="event-title" name="event-title" parsley-trigger="change" parsley-required="true" parsley-minlength="4" parsley-validation-minlength="1">
                      </div>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-red" data-dismiss="modal" >确定修改</button>
                      <button type="button" class="btn btn-green" data-dismiss="modal">取消</button>
                    </div>
                    
                  </form>
                </div><!-- /.modal-content -->
              </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->  
              <script type="text/javascript">
    // 当页面加载完成后，马上执行
	$(document).ready(function() {
		changePage(1, 10); // 调用
	});

	function changePage(nextPage, pageSize){
		var userName = $("#userName").val();
		if(userName.trim() == ""){
			userName = "";
		}
		$.ajax({
		    type:"POST",
		    dataType:"json",
		    contentType:"application/json;charset=utf-8",
		    url:"${pageContext.request.contextPath }/userlist.do",
		    data:JSON.stringify({ // 直接发送的是一个json字符串
		        currentPage:nextPage,
		        pageSize:pageSize,
		        userName:userName
		    }),
		    
		    success:function(rData){
		    	
		        if(rData.success){
		        	$("#dataBody").empty();
		        	for(var i=0; i<rData.data.pageList.length;i++){
		        		$("#dataBody").append("<tr align='left'><td  align='center'><input type='checkbox' /></td>" +
		        			"<td>" + rData.data.pageList[i].userId + 
		        			"</td><td>" + rData.data.pageList[i].userName + 
		        			"</td><td>" + rData.data.pageList[i].userRealName + 
		        			"</td><td>" + rData.data.pageList[i].userCellPhone + 
		        			"</td><td>" + rData.data.pageList[i].userSex +
		        			"</td><td>" + rData.data.pageList[i].userDept.deptName+ 
		        			"</td><td align='left'><button type='button' class='btn btn-sm btn-danger ' onclick='javascript:deleteModule("+ (rData.data.currentPage) +","+ rData.data.pageSize +"," + rData.data.pageList[i].userId + ");'>删除</button>&nbsp;"+
		        			"<button type='button' class='btn btn-sm btn-info' data-toggle='modal' data-target='#cal-new-event' onclick='javascript:openUpdateWindow("+ rData.data.pageList[i].userId +",\""+ rData.data.pageList[i].userName + "\")'>修改</button></td></tr>");
		        	  }
		        	
		        	// 实现分页
		        	var pageString = '总共有' + rData.data.totalCount + '条&nbsp;&nbsp;总共有' +rData.data.totalPage + '页&nbsp;&nbsp;第' +rData.data.currentPage + '页&nbsp;&nbsp';
					if(rData.data.currentPage == 1){
						
						pageString += '<a >首页</a>&nbsp;&nbsp';
						pageString += '<a >上一页</a>&nbsp;&nbsp';
					}
					
					if(rData.data.currentPage > 1){
						pageString += '<a href="javascript:changePage('+ 1 +','+ rData.data.pageSize +');">首页</a>&nbsp;&nbsp';
						pageString += '<a href="javascript:changePage('+ (rData.data.currentPage - 1) +','+ rData.data.pageSize +');">上一页</a>&nbsp;&nbsp';
					}
					if(rData.data.currentPage == rData.data.totalPage){
						pageString += '<a >下一页</a>&nbsp;&nbsp';
						pageString += '<a >尾页</a>&nbsp;&nbsp';
					}
					if(rData.data.currentPage < rData.data.totalPage){
						pageString +='<a href="javascript:changePage('+ (rData.data.currentPage + 1) +','+ rData.data.pageSize +');">下一页</a>&nbsp;&nbsp';
						pageString +='<a href="javascript:changePage('+ rData.data.totalPage +','+ rData.data.pageSize +');">尾页</a>';
					}
					$("#topPage").empty();
					$("#bottomPage").empty();
					$("#topPage").append(pageString);
					$("#bottomPage").append(pageString);
		        }else{
		        	
		        }
		    },
		    error:function(jqXHR){
		        console.log("发生错误："+jqXHR.status);
		    }
		});
	}

	function deleteModule(nextPage, pageSize, userId){

			$.ajax({
			    type:"POST",
			    url:"${pageContext.request.contextPath }/deleteUser.do",
			    data:{ // 直接发送的是一个json字符串
			        userId:userId
			    },
			    success:function(rData){
			    	rData = JSON.parse(rData);
			        if(rData.success){
			        	$("#addMsg").html("<font class='btn btn-green'>删除成功</font>");
			        	setTimeout(clearMessage, 3000);
			        	changePage(nextPage, pageSize);
			        }else{
			        	$("#addMsg").html("<font class='btn btn-red'>删除失败</font>");
			        }
			    },
			    error:function(jqXHR){
			        console.log("发生错误："+jqXHR.status);
			    }
			});
		
	}

	function clearMessage(){
 		$("#addMsg").empty();
 	}
	function saveModule(){
		var userName = $("#addUserName").val();
		if(userName.trim() == ""){
			userName = "";
		}
		$.ajax({
		    type:"POST",
		    dataType:'json',
		    contentType:"application/json;charset=utf-8",
		    url:"${pageContext.request.contextPath }/insertUser.do",
		    data:JSON.stringify({ // 直接发送的是一个json字符串
		       
		        userName:userName
		    }),
		    success:function(rData){
		    	
		        if(rData.success){
		        	Ewin.tip({msg:'添加成功', color:'green'});
		        	changePage(1, 10);
		        }else{
		        	Ewin.tip({msg:'添加失败', color:'red'});
		        }
		    },
		    error:function(jqXHR){
		        console.log("发生错误："+jqXHR.status);
		    }
		});
	}
	
	// 第一步获得原始数据
	function openUpdateWindow(userId, userName){
		document.updateForm.updateUserId.value=userId;
		document.updateForm.updateUserName.value=userName;
	}
	// 提交修改
	function updateModule(){
		Ewin.confirm({ title : '提示', msg : '确定要修改么?' }).on(function (e) {
			var userName = $("#updateUserName").val();
			var userId = $("#updateUserId").val();
			if(userName.trim() == ""){
				return;
			}
			$.ajax({
			    type:"POST",
			    dataType:'json',
			    contentType:"application/json;charset=utf-8",
			    url:"${pageContext.request.contextPath }/updateUser.do",
			    data:JSON.stringify({ // 直接发送的是一个json字符串
			        userId:userId,
			        userName:userName
			    }),
			    success:function(rData){
			    	
			        if(rData.success){
			        	Ewin.tip({msg:'修改成功'});
			        	document.updateForm.updateUserId.value="";
						document.updateForm.updateUserName.value="";
			        	changePage(1, 10);
			        }else{
			        	Ewin.tip({msg:'修改失败'});
			        }
			    },
			    error:function(jqXHR){
			        console.log("发生错误："+jqXHR.status);
			    }
			});
		});
	}
  </script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/js/vendor/bootstrap/bootstrap.min.js"></script>
    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&skin=sons-of-obsidian"></script>
    <script type="text/javascript" src="assets/js/vendor/mmenu/js/jquery.mmenu.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/sparkline/jquery.sparkline.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/nicescroll/jquery.nicescroll.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/animate-numbers/jquery.animateNumbers.js"></script>
    <script type="text/javascript" src="assets/js/vendor/videobackground/jquery.videobackground.js"></script>
    <script type="text/javascript" src="assets/js/vendor/blockui/jquery.blockUI.js"></script>

    <script src="assets/js/vendor/summernote/summernote.min.js"></script>

    <script src="assets/js/vendor/chosen/chosen.jquery.min.js"></script>

    <script src="assets/js/vendor/momentjs/moment-with-langs.min.js"></script>
    <script src="assets/js/vendor/datepicker/bootstrap-datetimepicker.min.js"></script>

    <script src="assets/js/vendor/colorpicker/bootstrap-colorpicker.min.js"></script>

    <script src="assets/js/vendor/colorpalette/bootstrap-colorpalette.js"></script>

    <script src="assets/js/minimal.min.js"></script>
       
    <script>

    //initialize file upload button function
    $(document)
      .on('change', '.btn-file :file', function() {
        var input = $(this),
        numFiles = input.get(0).files ? input.get(0).files.length : 1,
        label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
        input.trigger('fileselect', [numFiles, label]);
    });


    $(function(){

      //load wysiwyg editor
      $('#input06').summernote({
        toolbar: [
          //['style', ['style']], // no style button
          ['style', ['bold', 'italic', 'underline', 'clear']],
          ['fontsize', ['fontsize']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['height', ['height']],
          //['insert', ['picture', 'link']], // no insert buttons
          //['table', ['table']], // no table button
          //['help', ['help']] //no help button
        ],
        height: 137   //set editable area's height
      });

      //chosen select input
      $(".chosen-select").chosen({disable_search_threshold: 10});

      //initialize datepicker
      $('#datepicker').datetimepicker({
        icons: {
          time: "fa fa-clock-o",
          date: "fa fa-calendar",
          up: "fa fa-arrow-up",
          down: "fa fa-arrow-down"
        }
      });

      $("#datepicker").on("dp.show",function (e) {
        var newtop = $('.bootstrap-datetimepicker-widget').position().top - 45;      
        $('.bootstrap-datetimepicker-widget').css('top', newtop + 'px');
      });

      //initialize colorpicker
      $('#colorpicker').colorpicker();

      $('#colorpicker').colorpicker().on('showPicker', function(e){
        var newtop = $('.dropdown-menu.colorpicker.colorpicker-visible').position().top - 45;      
        $('.dropdown-menu.colorpicker.colorpicker-visible').css('top', newtop + 'px');
      });

      //initialize colorpicker RGB
      $('#colorpicker-rgb').colorpicker({
        format: 'rgb'
      });

      $('#colorpicker-rgb').colorpicker().on('showPicker', function(e){
        var newtop = $('.dropdown-menu.colorpicker.colorpicker-visible').position().top - 45;      
        $('.dropdown-menu.colorpicker.colorpicker-visible').css('top', newtop + 'px');
      });

      //initialize file upload button
      $('.btn-file :file').on('fileselect', function(event, numFiles, label) {
        
        var input = $(this).parents('.input-group').find(':text'),
            log = numFiles > 1 ? numFiles + ' files selected' : label;

            console.log(log);
        
        if( input.length ) {
          input.val(log);
        } else {
          if( log ) alert(log);
        }
        
      });

      // Initialize colorpalette
      $('#event-colorpalette').colorPalette({ 
        colors:[['#428bca', '#5cb85c', '#5bc0de', '#f0ad4e' ,'#d9534f', '#ff4a43', '#22beef', '#a2d200', '#ffc100', '#cd97eb', '#16a085', '#FF0066', '#A40778', '#1693A5']] 
      }).on('selectColor', function(e) {
        var data = $(this).data();

        $(data.returnColor).val(e.color);
        $(this).parents(".input-group").css("border-bottom-color", e.color );
      });
      
    })
      
    </script>
  <script type="text/javascript">
	function resetForm(){
		document.searchForm.userName.value="";
		changePage(1, 10);
	}
</script>
  </body>
</html>
      
