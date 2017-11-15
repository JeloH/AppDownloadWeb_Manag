DEMO OF UPLOADING FILES TO THE SERVER IN ASP

REQUIREMENTS

The csASPUpload DLL (trial version) must be registered on the server.
The following files must be placed in the same directory which must be web shared and must be able to run scripts:

fileupload.htm
filesave.asp
view.asp
delete.asp

A sub directory called "files" which is immediately below the directory containing the scripts. The Internet Guest User must have "Full Control" permission if it is to be able to create and delete files in this directory.

DESCRIPTION

This is a demonstration of how to upload a file to a directory/folder on the server. It also shows how the File System Object can be used to list and delete these files.

The starting page is "FileUpload.htm" which contains a form with a file field. This form is posted to "FileSave.asp" which saves the file. The page "view.asp" lists the files in the "files" directory and offer a link to the file and a button to delete each file. "delete.asp" performs the deletion.

TROUBLESHOOTING

If this demo does not work here are some possible reasons.

1. The page "filesave.asp" requires the csASPUpload trial component to be registered on the server. This component is not supplied with these example scripts but can be downloaded from the Chestysoft web site.

2. A sub directory must be created immediately below the one containing the scripts. This must be called "files". If this is not present the "filesave.asp" will generate an error.

3. Some permissions may need to be set. The Internet Guest User must have Read and Execute permission on the DLL file. It must have "Full Control" over the "files" sub directory.

4. The trial csASPUpload component has an expiry date and it will not work after this date. "fileupload.asp" will display an error message if this is the case.

POSSIBLE EXTENSIONS

If an application like this was run on a public web site it might be necessary to set the "files" directory to not allow the execution of scripts to prevent anyone uploading a script and then running it. If downloading of the files was not to be permitted they could be uploaded to a different directory that is not accessible from a browser.

In order to prevent files from being overwritten if they have the same name the "OverwriteMode" property could be used. Setting OverwriteMode to 2 causes duplicate names to be renamed. See the csASPUpload instructions for more on this.

If images are to be uploaded and if they are to be resized our csImageFile component could be incorporated into "filesave.asp". The file would be read into csImageFile instead of being saved directly to disk. The resize would be carried out and then the file would be saved.


Chestysoft, October 2003.
Website: www.chestysoft.com 