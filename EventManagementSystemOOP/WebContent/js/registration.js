
function checkpassword()
{
	var pw = document.getElementById("pwrd").value;
	var cnf= document.getElementById("cnfrm").value;
	
	if(pw == cnf)
	{
		 alert("Ready to Submit");
		 return true;
	}
	else
	{
		 alert("Password Mismatched");
		 return false;
	}
}
function enableButton()
{
	
	if(document.getElementById("checkbx").checked)
	{
		document.getElementById("sbmt").disabled=false;
		
	}
	else
	{
		document.getElementById("sbmt").disabled=true;
		
	}


}
		