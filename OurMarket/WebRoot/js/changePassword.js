 var sign = "flase";
	var iputNewPass = document.getElementById("name2");
	var oldPassword = document.getElementById("checkOldPassword");
	var rePassword = document.getElementById("checkNewPassword");
	var btn = document.getElementById("submit1");
	var password1="";
	var password2="";
	var uID=1;
	oldPassword.onblur=function() {
        oldPassword.innerHTML="";
        rePassword.innerHTML="";
    }
	btn.onclick = function() {
		oldPassword.innerHTML ="";
		rePassword.innerHTML = "";
		var t1 = document.getElementById("name").value;
		var t2 = document.getElementById("name1").value;
		var t3 = document.getElementById("name2").value;
		
		if (t1 == "") {
			oldPassword.innerHTML = "<img src='img/wrong.png' alt=''> <i>请输入旧密码</i>   ";
			return;
		} else {
			if (t2 != t3) {
				rePassword.innerHTML = "<img src='img/wrong.png' alt=''> <i>两次新密码输入不一致</i>   ";
				return;
			} else if ((t2 == t3) && t2 != "" && t3 != "") {
				rePassword.innerHTML = "<img src='img/right.png' alt=''> <i>校验完毕</i>   ";
				password1=t1;
				password2=t3;
				sign="true";
				asPost(password1,password2,uID);
			}

		}
	}
	
	
	  function asPost(oldPassword,newPassword,uID){
	  var temp = document.createElement("form");
	  
	    temp.action ="http://localhost:8080/OurMarket/changepassword";        
	    temp.method = "post";        
	    temp.style.display = "none";                     
	    var input1=document.createElement("input");
	    input1.name="oldPassword";
	    input1.value=oldPassword;
	    temp.appendChild(input1);
	    var input2=document.createElement("input")
	    input2.name="newPassword";
	    input2.value=newPassword;
	    temp.appendChild(input2);
	    var input3=document.createElement("input");
	    input3.name="uID";
	    input3.value=1;
	    temp.appendChild(input3);
	    document.body.appendChild(temp); 
	    temp.submit();     
	   // return temp;  
}
	