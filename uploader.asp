
<%@ Language=VBScript %>
<% 
Response.Expires = -1
Server.ScriptTimeout = 600
%>
<!-- #include file="freeaspupload.asp" -->
<%



Dim strField
Dim strForm
strField=request.querystring("field")
strForm=request.querystring("form")


dim strmasir
strmasir = Request.ServerVariables("APPL_PHYSICAL_PATH")
strmasir = "" & strmasir & "images"
'مسير بالا محل آپلود فايل است که بايد به دلخواه تنظيم شود ، مسير فعلی فولدر ايميج است

' ****************************************************
' Change the value of the variable below to the pathname
' of a directory with write permissions, for example "C:\Inetpub\wwwroot"
  Dim uploadsDirVar
  uploadsDirVar = strmasir 
' ****************************************************


function OutputForm()
%>
    <form name="frmSend" method="POST" enctype="multipart/form-data" action="uploader.asp?field=<%=strfield%>&form=<%=strform%>" onsubmit="return submitit()">
	<font color="#0000CA">
	<B>File name :</B></font><br>
	<input name="attach1" type="file" size=45 style="border: 1px solid #E2E2E2"><br>
    
	<!-- These input elements are obviously optional and just included here for demonstration purposes -->

	
	<!-- End of additional elements -->
    <input style="margin-top:1; font-family:Tahoma; font-size:9pt; height:25" type=submit value="آپلود تصوير">
    </form>
<%
end function

function TestEnvironment()
    Dim fso, fileName, testFile, streamTest
    TestEnvironment = ""
    Set fso = Server.CreateObject("Scripting.FileSystemObject")
    if not fso.FolderExists(uploadsDirVar) then
        TestEnvironment = "<B>Folder " & uploadsDirVar & " does not exist.</B><br>The value of your uploadsDirVar is incorrect. Open uploader.asp in an editor and change the value of uploadsDirVar to the pathname of a directory with write permissions."
        exit function
    end if
    fileName = uploadsDirVar & "\test.txt"
    on error resume next
    Set testFile = fso.CreateTextFile(fileName, true)
    If Err.Number<>0 then
        TestEnvironment = "<B>Folder " & uploadsDirVar & " does not have write permissions.</B><br>The value of your uploadsDirVar is incorrect. Open uploader.asp in an editor and change the value of uploadsDirVar to the pathname of a directory with write permissions."
        exit function
    end if
    Err.Clear
    testFile.Close
    fso.DeleteFile(fileName)
    If Err.Number<>0 then
        TestEnvironment = "<B>Folder " & uploadsDirVar & " does not have delete permissions</B>, although it does have write permissions.<br>Change the permissions for IUSR_<I>computername</I> on this folder."
        exit function
    end if
    Err.Clear
    Set streamTest = Server.CreateObject("ADODB.Stream")
    If Err.Number<>0 then
        TestEnvironment = "<B>The ADODB object <I>Stream</I> is not available in your server.</B><br>Check the Requirements page for information about upgrading your ADODB libraries."
        exit function
    end if
    Set streamTest = Nothing
end function

function SaveFiles
    Dim Upload, fileName, fileSize, ks, i, fileKey

    Set Upload = New FreeASPUpload
    Upload.Save(uploadsDirVar)

	' If something fails inside the script, but the exception is handled
	If Err.Number<>0 then Exit function

    SaveFiles = ""
    ks = Upload.UploadedFiles.keys
    if (UBound(ks) <> -1) then
        
        for each fileKey in Upload.UploadedFiles.keys
            SaveFiles = SaveFiles & Upload.UploadedFiles(fileKey).FileName & ""
        next
%></font>


</HEAD>
<BODY>
<center>


</center>

<%
 end if
	end function
%>
<HTML>
<HEAD>
<TITLE>File Uploader</TITLE>
<style>
BODY {background-color: white;font-family:arial; font-size:12}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script>
function submitit(){
var attach1 = document.frmSend.attach1.value



if (attach1==""){
alert("آدرس فايل وارد نشده است")
document.frmSend.attach1.focus()
return false
}



}

</script>

</HEAD>

<BODY>

<br>
<%
Dim diagnostics
if Request.ServerVariables("REQUEST_METHOD") <> "POST" then
    diagnostics = TestEnvironment()
    if diagnostics<>"" then
        response.write "<div style=""margin-left:3; margin-top:3; margin-right:3; margin-bottom:3;"">"
        response.write diagnostics
        response.write "<p>After you correct this problem, reload the page."
        response.write "</div>"
    else
        response.write "<div style=""margin-left:3"">"
        OutputForm()
        response.write "</div>"
    end if
else
    response.write "<div style=""margin-left:3"">"
    OutputForm()
    response.write SaveFiles()
    response.write "</div>"
end if

%>


</BODY>
</HTML>

<SCRIPT>
function clickIE() { 
if (document.all) {return false} 
} 
function clickNS(e) { 
if (document.layers || (document.getElementById && !document.all)) { 
if (e.which==2 || e.which==3) {return false} 
} 
} 
if (document.layers) { 
document.captureEvents(Event.MOUSEDOWN); 
document.onmousedown=clickNS; 
} 
else { 
document.onmouseup=clickNS; 
document.oncontextmenu=clickIE; 
} 
document.oncontextmenu=new Function("return false"); 
</SCRIPT>

<HEAD>
