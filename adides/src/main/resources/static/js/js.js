/** 
 * 显示消息 
 * @param msg 
 */

function showMsg(msg, callback) {
	Ewin.alert({
		title : '提示',
		msg : msg,
		btnok : '确定'
	}).on(function(e) {
		if (callback) {
			callback();
		}
	});
}

/** 

 * 模态对话框 
 * @param msg 
 * @returns 
 */
function showConfirm(msg, callback) {

	//var res = false;  
	Ewin.confirm(
	{
		title : '提示',
		msg : msg,
	}).on(function(e) {
		callback();
		//res=true;  
	});
	//return res;  
}

/*** 
 * 模态框封装 
 */
$(function() {
	window.Ewin = function() {
		var reg = new RegExp("\\[([^\\[\\]]*?)\\]", 'igm');
		var ahtml = '<div id="com-alert" class="modal" style="z-index:9999;display: none;" >'+        
			'<div class="modal-dialog modal-sm">'+           
			'<div class="modal-content">'+             
			'<div class="modal-header">'+               
			'<button type="button" class="close" data-dismiss="modal">'+ 
			'<span aria-hidden="true">×</span><span class="sr-only">Close</span></button>'+               
			'<h5 class="modal-title"><i class="fa fa-exclamation-circle"></i> [Title]</h5>            </div>'+             
			'<div class="modal-body small">              <p style="color:[Color];">[Message]</p>            </div>'+             
			'<div class="modal-footer" >' +   
			'<button type="button" class="btn btn-default cancel" data-dismiss="modal">[BtnCancel]</button>'+   
			'<button type="button" class="btn btn-primary ok" data-dismiss="modal">[BtnOk]</button>'+                      
			'</div>'+          
			'</div>        </div>      </div>';
		var alr = $(ahtml);
	
		var _tip = function(options, sec) {
			alr = $(ahtml); // 复原  
			alr.find('.ok').hide();
			alr.find('.cancel').hide();
			alr.find('.modal-content').width(500);
			_dialog(options, sec);
			setTimeout(function(){alr.modal('hide');}, 1000);
			return {
				on : function(callback) {
				}
			};
		};

		var _alert = function(options) {
			alr = $(ahtml); // 复原  
			alr.find('.ok').removeClass('btn-success').addClass('btn-primary');
			alr.find('.cancel').hide();
			_dialog(options);
			setTimeout(function(){alr.modal('hide');}, 1000);
			return {
				on : function(callback) {
					if (callback && callback instanceof Function) {
						alr.find('.ok').click(function() {
							callback(true)
						});
					}
				}
			};

		};

		var _confirm = function(options) {
			alr = $(ahtml); // 复原   
			alr.find('.ok').removeClass('btn-success').addClass('btn-primary');
			alr.find('.cancel').show();
			_dialog(options);
			return {
				on : function(callback) {
					if (callback && callback instanceof Function) {
						alr.find('.ok').click(function() {
							callback(true)
						});
						alr.find('.cancel').click(function() {
							return;
						});
					}
				}
			};
		};

		var _dialog = function(options) {
			var ops = {
				msg : "提示内容",
				title : "操作提示",
				btnok : "确定",
				btncl : "取消",
				color : "green"
			};
			$.extend(ops, options);
			var html = alr.html().replace(reg, function(node, key) {
				return {
					Title : ops.title,
					Message : ops.msg,
					BtnOk : ops.btnok,
					BtnCancel : ops.btncl,
					Color : ops.color
				}[key];
			});

			alr.html(html);
			alr.modal({
				width : 250,
				backdrop : 'static'
			});

		}

		return {
			tip : _tip,
			alert : _alert,
			confirm : _confirm
		}
	}();
});
