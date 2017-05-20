/**
 * 检验登录表单
 * 
 * @returns {Boolean}
 */
function checkLoginForm() {	
	// 获取用户名文本框
	var username = document.getElementById("username");
	// 获取密码文本框
	var password = document.getElementById("password");
	// 非空校验
	if (username.value == "") {
		alert("用户名不能为空！");
		// 让用户名文本框获得焦点
		username.focus();
		return false;
	}
	if (password.value == "") {
		alert("密码不能为空！");
		// 让密码文本框获得焦点
		password.focus();
		return false;
	}	
		
	return true; // 表明可以提交数据到服务器端
}

/**
 * 检验注册表单
 * @returns {Boolean}
 */
function checkRegisterForm() {
	// 获取用户名文本框
	var username = document.getElementById("username");
	// 获取密码文本框
	var password = document.getElementById("password");
	// 获取手机号码文本框
	var telephone = document.getElementById("telephone");
	
	// 非空校验
	if (username.value == "") {
		alert("用户名不能为空！");
		// 让用户名文本框获得焦点
		username.focus();
		return false;
	}
	if (password.value == "") {
		alert("密码不能为空！");
		// 让密码文本框获得焦点
		password.focus();
		return false;
	}			
	
	// 检验手机号码
	var patrn = "/^(1[3|5|7|8]\d{9}$/";
	if (!patrn.exec(telephone)) {
		alert("非法手机号！");
		// 让手机号码文本框获得焦点
		telephone.focus();
		return false;
	}
		
	return true; // 表明可以提交数据到服务器端
}

