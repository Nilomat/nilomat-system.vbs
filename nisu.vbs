starttime =  timer
pw = 0
do until pw = "nisu"
pw = inputbox ("please state the pasword(end to end)","nilomat_studios_system_start","pasword")
if pw = "end" then
wscript.quit(0)
end if
loop
endtime = timer
t = endtime - starttime
msgbox(t)
wscript.sleep(2000)
msgbox"starting",64+1,"nilomat_studios_system_start"
wscript.sleep(2000)
un = inputbox ("please state your username","nilomat_studios_system_start","un")
if un = "un" then
do while un = "un"
msgbox"please state your username!",64+1,"nilomat_studios_system_start"
un = inputbox ("please state your username","nilomat_studios_system_start","un")
loop
end if

msgbox"username ok",64+1,"nilomat_studios_system_start"
set fs = createobject("scripting.filesystemobject")
set uf = fs.createtextfile("C:\Dokumente und Einstellungen\All Users\Dokumente\userdata.txt",true)
uf.close
     set uf = fs.createtextfile("C:\Dokumente und Einstellungen\All Users\Dokumente\userdata.txt",8)
     uf.writeline(un)
     uf.writeline(pw)
uf.close

msgbox"user file written to shared documents",64+1,"nilomat_studios_system_start"
msgbox"welcome",64+1,"nilomat_studios_system"