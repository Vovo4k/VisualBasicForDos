@echo off
echo/
echo Visual Basic for MS-DOS Batch Setup
echo -----------------------------------
echo/
echo Use this program to install Visual Basic if Setup fails on your system.
echo/ 
echo **Copy this batch program to the destination drive before running it**
echo **Do not run this batch program directly from the distribution disks**
echo/
echo ALTSETUP.BAT requires approximately 10 megabytes of free disk space for 
echo the Standard Edition and 32 megabytes of free disk space for the 
echo Professional Edition.  Make sure the correct amount of disk space is 
echo available before attempting to install.  CTRL+C will exit the batch file.
echo/ 

rem Check arguments
if not "%1" == "" goto be_sure
if not "%2" == "" goto be_sure
if not "%3" == "" goto be_sure

rem Show usage summary
echo Usage: ALTSETUP disk-count source-drive destination-drive
echo/
echo Where:
echo   disk-count        is the number of floppy disks
echo   source-drive      is a: or b:
echo   destination-drive is c:, d:, etc
echo/
echo Example:
echo   ALTSETUP 8 a: c:
goto end

:be_sure
echo/
echo This program performs only minimal error checking; be sure your 
echo parameters are correct.
echo/
echo   Number of disks:  %1
echo   Source:           %2
echo   Destination:      %3\vbdos
echo/
pause

rem Make destination directory
echo Creating %3\vbdos
if not exist %3\vbdos\*.* mkdir %3\vbdos
echo test >%3\vbdos\test.txt
if exist %3\vbdos\test.txt goto copy
    echo %0: error unable to create %3\vbdos
    goto end
:copy
del %3\vbdos\test.txt

echo/
echo Insert disk 1
pause

rem Move to source disk
if exist %2\packing.txt goto disk1
    echo %0: error %2\packing.txt not found
    goto end
:disk1

echo Copying files from disk 1
copy %2\ %3\vbdos

if %1 == 1 goto decompress

echo/
echo Insert disk 2
pause
echo Copying files from disk 2
copy %2\ %3\vbdos

if %1 == 2 goto decompress

echo/
echo Insert disk 3
pause
echo Copying files from disk 3
copy %2\ %3\vbdos

if %1 == 3 goto decompress

echo/
echo Insert disk 4
pause
echo Copying files from disk 4
copy %2\ %3\vbdos

if %1 == 4 goto decompress

echo/
echo Insert disk 5
pause
echo Copying files from disk 5
copy %2\ %3\vbdos

if %1 == 5 goto decompress

echo/
echo Insert disk 6
pause
echo Copying files from disk 6
copy %2\ %3\vbdos

if %1 == 6 goto decompress

echo/
echo Insert disk 7
pause
echo Copying files from disk 7
copy %2\ %3\vbdos

if %1 == 7 goto decompress

echo Insert disk 8
pause
echo Copying files from disk 8
copy %2\ %3\vbdos

if %1 == 8 goto decompress

echo/
echo Insert disk 9
pause
echo Copying files from disk 9
copy %2\ %3\vbdos

if %1 == 9 goto decompress

echo/
echo Insert disk 10
pause
echo Copying files from disk 10
copy %2\ %3\vbdos

if %1 == 10 goto decompress

echo/
echo Insert disk 11
pause
echo Copying files from disk 11
copy %2\ %3\vbdos

if %1 == 11 goto decompress

echo/
echo Insert disk 12
pause
echo Copying files from disk 12
copy %2\ %3\vbdos

if %1 == 12 goto decompress

echo/
echo Insert disk 13
pause
echo Copying files from disk 13
copy %2\ %3\vbdos

if %1 == 13 goto decompress

echo/
echo Insert disk 14
pause
echo Copying files from disk 14
copy %2\ %3\vbdos

if %1 == 14 goto decompress

echo/
echo Insert disk 15
pause
echo Copying files from disk 15
copy %2\ %3\vbdos

if %1 == 15 goto decompress

echo/
echo Insert disk 16
pause
echo Copying files from disk 16
copy %2\ %3\vbdos

if %1 == 16 goto decompress

echo/
echo Insert disk 17
pause
echo Copying files from disk 17
copy %2\ %3\vbdos

if %1 == 17 goto decompress

echo/
echo Insert disk 18
pause
echo Copying files from disk 18
copy %2\ %3\vbdos

if %1 == 18 goto decompress

echo/
echo Insert disk 19
pause
echo Copying files from disk 19
copy %2\ %3\vbdos

if %1 == 19 goto decompress

echo/
echo Insert disk 20
pause
echo Copying files from disk 20
copy %2\ %3\vbdos

if %1 == 20 goto decompress

echo/
echo Insert disk 21
pause
echo Copying files from disk 21
copy %2\ %3\vbdos

if %1 == 21 goto decompress

echo/
echo Insert disk 22
pause
echo Copying files from disk 22
copy %2\ %3\vbdos

if %1 == 22 goto decompress

echo/
echo Insert disk 23
pause
echo Copying files from disk 23
copy %2\ %3\vbdos

if %1 == 23 goto decompress

echo/
echo Insert disk 24
pause
echo Copying files from disk 24
copy %2\ %3\vbdos

if %1 == 24 goto decompress

echo/
echo Insert disk 25
pause
echo Copying files from disk 25
copy %2\ %3\vbdos

if %1 == 25 goto decompress

echo/
echo Insert disk 26
pause
echo Copying files from disk 26
copy %2\ %3\vbdos

if %1 == 26 goto decompress

echo/
echo Insert disk 27
pause
echo Copying files from disk 27
copy %2\ %3\vbdos

if %1 == 27 goto decompress

echo/
echo Insert disk 28
pause
echo Copying files from disk 28
copy %2\ %3\vbdos

if %1 == 28 goto decompress

echo/
echo Insert disk 29
pause
echo Copying files from disk 29
copy %2\ %3\vbdos

if %1 == 29 goto decompress

echo/
echo Insert disk 30
pause
echo Copying files from disk 30
copy %2\ %3\vbdos

if %1 == 30 goto decompress

echo %0: too many disks

:decompress

rem Move to destination
%3
chdir %3\vbdos
if exist decomp.exe goto chdir_ok
    echo %0: error moving to %3\vbdos (decomp.exe not found)
    goto end
:chdir_ok

rem Decompress files and delete compressed files
if exist 87.li$ decomp 87.li$ 87.lib
if exist advisor.hl$ decomp advisor.hl$ advisor.hlp
if exist bc.ex$ decomp bc.ex$ bc.exe
if exist bc.ic$ decomp bc.ic$ bc.ico
if exist bc.pi$ decomp bc.pi$ bc.pif
if exist bookcard.fr$ decomp bookcard.fr$ bookcard.frm
if exist bookgen.ba$ decomp bookgen.ba$ bookgen.bas
if exist booklist.fr$ decomp booklist.fr$ booklist.frm
if exist booklook.bi$ decomp booklook.bi$ booklook.bi
if exist booklook.fr$ decomp booklook.fr$ booklook.frm
if exist booklook.ma$ decomp booklook.ma$ booklook.mak
if exist books.md$ decomp books.md$ books.mdb
if exist booksrch.fr$ decomp booksrch.fr$ booksrch.frm
if exist bookstck.fr$ decomp bookstck.fr$ bookstck.frm
if exist buildrtm.ex$ decomp buildrtm.ex$ buildrtm.exe
if exist calc.bi$ decomp calc.bi$ calc.bi
if exist calc.fr$ decomp calc.fr$ calc.frm
if exist calc.ma$ decomp calc.ma$ calc.mak
if exist chart.ba$ decomp chart.ba$ chart.bas
if exist chart.bi$ decomp chart.bi$ chart.bi
if exist chart.li$ decomp chart.li$ chart.lib
if exist chart.ql$ decomp chart.ql$ chart.qlb
if exist charta.li$ decomp charta.li$ charta.lib
if exist chartasm.as$ decomp chartasm.as$ chartasm.asm
if exist chartasm.ob$ decomp chartasm.ob$ chartasm.obj
if exist chrtattr.fr$ decomp chrtattr.fr$ chrtattr.frm
if exist check.fr$ decomp check.fr$ check.frm
if exist check.ma$ decomp check.ma$ check.mak
if exist chrtdata.fr$ decomp chrtdata.fr$ chrtdata.frm
if exist chrtdemo.bi$ decomp chrtdemo.bi$ chrtdemo.bi
if exist chrtdemo.fr$ decomp chrtdemo.fr$ chrtdemo.frm
if exist chrtdemo.ma$ decomp chrtdemo.ma$ chrtdemo.mak
if exist chrtedit.fr$ decomp chrtedit.fr$ chrtedit.frm
if exist chrtfont.fr$ decomp chrtfont.fr$ chrtfont.frm
if exist chrtsubs.ba$ decomp chrtsubs.ba$ chrtsubs.bas
if exist chrttype.fr$ decomp chrttype.fr$ chrttype.frm
if exist clock.bi$ decomp clock.bi$ clock.bi
if exist clock.fr$ decomp clock.fr$ clock.frm
if exist clock.ma$ decomp clock.ma$ clock.mak
if exist cmndlg.ba$ decomp cmndlg.ba$ cmndlg.bas
if exist cmndlg.bi$ decomp cmndlg.bi$ cmndlg.bi
if exist cmndlg.li$ decomp cmndlg.li$ cmndlg.lib
if exist cmndlg.ma$ decomp cmndlg.ma$ cmndlg.mak
if exist cmndlg.ql$ decomp cmndlg.ql$ cmndlg.qlb
if exist cmndlga.li$ decomp cmndlga.li$ cmndlga.lib
if exist cmndlgf.fr$ decomp cmndlgf.fr$ cmndlgf.frm
if exist compat.tx$ decomp compat.tx$ compat.txt
if exist constant.bi$ decomp constant.bi$ constant.bi
if exist contdraw.ba$ decomp contdraw.ba$ contdraw.bas
if exist controlp.fr$ decomp controlp.fr$ controlp.frm
if exist controlp.ma$ decomp controlp.ma$ controlp.mak
if exist coura.fo$ decomp coura.fo$ coura.fon
if exist courb.fo$ decomp courb.fo$ courb.fon
if exist coure.fo$ decomp coure.fo$ coure.fon
if exist custcall.as$ decomp custcall.as$ custcall.asm
if exist custcall.ba$ decomp custcall.ba$ custcall.bas
if exist custcall.c$ decomp custcall.c$ custcall.c
if exist custevnt.as$ decomp custevnt.as$ custevnt.asm
if exist custevnt.ba$ decomp custevnt.ba$ custevnt.bas
if exist custevnt.c$ decomp custevnt.c$ custevnt.c
if exist custgen.ex$ decomp custgen.ex$ custgen.exe
if exist custincl.bi$ decomp custincl.bi$ custincl.bi
if exist custincl.h$ decomp custincl.h$ custincl.h
if exist custincl.in$ decomp custincl.in$ custincl.inc
if exist custreg.as$ decomp custreg.as$ custreg.asm
if exist cv.ex$ decomp cv.ex$ cv.exe
if exist cv.hl$ decomp cv.hl$ cv.hlp
if exist cv.ic$ decomp cv.ic$ cv.ico
if exist cvpack.ex$ decomp cvpack.ex$ cvpack.exe
if exist debug.fr$ decomp debug.fr$ debug.frm
if exist eed1can.dl$ decomp eed1can.dl$ eed1can.dll
if exist eed1cxx.dl$ decomp eed1cxx.dl$ eed1cxx.dll
if exist emd1d1.dl$ decomp emd1d1.dl$ emd1d1.dll
if exist fcount.bt$ decomp fcount.bt$ fcount.bat
if exist fcover.bt$ decomp fcover.bt$ fcover.bat
if exist fd.ex$ decomp fd.ex$ fd.exe
if exist fd.ic$ decomp fd.ic$ fd.ico
if exist fd.pi$ decomp fd.pi$ fd.pif
if exist finance.bi$ decomp finance.bi$ finance.bi
if exist finance.li$ decomp finance.li$ finance.lib
if exist finance.ql$ decomp finance.ql$ finance.qlb
if exist financea.li$ decomp financea.li$ financea.lib
if exist fixshift.co$ decomp fixshift.co$ fixshift.com
if exist font.ba$ decomp font.ba$ font.bas
if exist font.bi$ decomp font.bi$ font.bi
if exist font.li$ decomp font.li$ font.lib
if exist font.ql$ decomp font.ql$ font.qlb
if exist fonta.li$ decomp fonta.li$ fonta.lib
if exist fontasm.as$ decomp fontasm.as$ fontasm.asm
if exist fontasm.ob$ decomp fontasm.ob$ fontasm.obj
if exist fontdemo.fr$ decomp fontdemo.fr$ fontdemo.frm
if exist fontdemo.ma$ decomp fontdemo.ma$ fontdemo.mak
if exist fontdraw.ba$ decomp fontdraw.ba$ fontdraw.bas
if exist fsample.bt$ decomp fsample.bt$ fsample.bat
if exist ft.ex$ decomp ft.ex$ ft.exe
if exist ftime.bt$ decomp ftime.bt$ ftime.bat
if exist grapdraw.ba$ decomp grapdraw.ba$ grapdraw.bas
if exist graphics.fr$ decomp graphics.fr$ graphics.frm
if exist graphics.ma$ decomp graphics.ma$ graphics.mak
if exist help.ba$ decomp help.ba$ help.bas
if exist help.bi$ decomp help.bi$ help.bi
if exist help.li$ decomp help.li$ help.lib
if exist help.ma$ decomp help.ma$ help.mak
if exist help.ql$ decomp help.ql$ help.qlb
if exist helpa.li$ decomp helpa.li$ helpa.lib
if exist helpdemo.tx$ decomp helpdemo.tx$ helpdemo.txt
if exist helpf.fr$ decomp helpf.fr$ helpf.frm
if exist helputil.fr$ decomp helputil.fr$ helputil.frm
if exist helva.fo$ decomp helva.fo$ helva.fon
if exist helvb.fo$ decomp helvb.fo$ helvb.fon
if exist helve.fo$ decomp helve.fo$ helve.fon
if exist isamcvt.2x$ decomp isamcvt.2x$ isamcvt.2xe
if exist isamcvt.3x$ decomp isamcvt.3x$ isamcvt.3xe
if exist isamcvt.4x$ decomp isamcvt.4x$ isamcvt.4xe
if exist isamcvt.ex$ decomp isamcvt.ex$ isamcvt.exe
if exist isamio.2x$ decomp isamio.2x$ isamio.2xe
if exist isamio.3x$ decomp isamio.3x$ isamio.3xe
if exist isamio.4x$ decomp isamio.4x$ isamio.4xe
if exist isamio.ex$ decomp isamio.ex$ isamio.exe
if exist isampack.2x$ decomp isampack.2x$ isampack.2xe
if exist isampack.3x$ decomp isampack.3x$ isampack.3xe
if exist isampack.4x$ decomp isampack.4x$ isampack.4xe
if exist isampack.ex$ decomp isampack.ex$ isampack.exe
if exist isamrepr.2x$ decomp isamrepr.2x$ isamrepr.2xe
if exist isamrepr.3x$ decomp isamrepr.3x$ isamrepr.3xe
if exist isamrepr.4x$ decomp isamrepr.4x$ isamrepr.4xe
if exist isamrepr.ex$ decomp isamrepr.ex$ isamrepr.exe
if exist jabber.tx$ decomp jabber.tx$ jabber.txt
if exist lcount.bt$ decomp lcount.bt$ lcount.bat
if exist lcover.bt$ decomp lcover.bt$ lcover.bat
if exist learn.ct$ decomp learn.ct$ learn.ctx
if exist learn.ex$ decomp learn.ex$ learn.exe
if exist learn.ic$ decomp learn.ic$ learn.ico
if exist learn.pi$ decomp learn.pi$ learn.pif
if exist learn.sc$ decomp learn.sc$ learn.scn
if exist learn.so$ decomp learn.so$ learn.sob
if exist lib.ex$ decomp lib.ex$ lib.exe
if exist link.ex$ decomp link.ex$ link.exe
if exist lsample.bt$ decomp lsample.bt$ lsample.bat
if exist ltime.bt$ decomp ltime.bt$ ltime.bat
if exist math.ba$ decomp math.ba$ math.bas
if exist math.bi$ decomp math.bi$ math.bi
if exist math.li$ decomp math.li$ math.lib
if exist math.ql$ decomp math.ql$ math.qlb
if exist matha.ba$ decomp matha.ba$ matha.bas
if exist matha.bi$ decomp matha.bi$ matha.bi
if exist matha.li$ decomp matha.li$ matha.lib
if exist mouse.ba$ decomp mouse.ba$ mouse.bas
if exist mouse.bi$ decomp mouse.bi$ mouse.bi
if exist mouse.co$ decomp mouse.co$ mouse.com
if exist mouse.li$ decomp mouse.li$ mouse.lib
if exist mouse.ma$ decomp mouse.ma$ mouse.mak
if exist mouse.ql$ decomp mouse.ql$ mouse.qlb
if exist mousea.li$ decomp mousea.li$ mousea.lib
if exist msherc.co$ decomp msherc.co$ msherc.com
if exist nocga.ob$ decomp nocga.ob$ nocga.obj
if exist nocom.ob$ decomp nocom.ob$ nocom.obj
if exist noedit.ob$ decomp noedit.ob$ noedit.obj
if exist noega.ob$ decomp noega.ob$ noega.obj
if exist noevent.ob$ decomp noevent.ob$ noevent.obj
if exist nofltin.ob$ decomp nofltin.ob$ nofltin.obj
if exist noforms.ob$ decomp noforms.ob$ noforms.obj
if exist nograph.ob$ decomp nograph.ob$ nograph.obj
if exist noherc.ob$ decomp noherc.ob$ noherc.obj
if exist noisam.ob$ decomp noisam.ob$ noisam.obj
if exist nolpt.ob$ decomp nolpt.ob$ nolpt.obj
if exist nooga.ob$ decomp nooga.ob$ nooga.obj
if exist notehelp.tx$ decomp notehelp.tx$ notehelp.txt
if exist notepad.bi$ decomp notepad.bi$ notepad.bi
if exist notepad.fr$ decomp notepad.fr$ notepad.frm
if exist notepad.ma$ decomp notepad.ma$ notepad.mak
if exist notrnem.li$ decomp notrnem.li$ notrnem.lib
if exist novga.ob$ decomp novga.ob$ novga.obj
if exist patch87.ex$ decomp patch87.ex$ patch87.exe
if exist pgbar.ba$ decomp pgbar.ba$ pgbar.bas
if exist pglinems.ba$ decomp pglinems.ba$ pglinems.bas
if exist pgpie.ba$ decomp pgpie.ba$ pgpie.bas
if exist pgscat.ba$ decomp pgscat.ba$ pgscat.bas
if exist plist.ex$ decomp plist.ex$ plist.exe
if exist prep.ex$ decomp prep.ex$ prep.exe
if exist profile.ex$ decomp profile.ex$ profile.exe
if exist profiler.xl$ decomp profiler.xl$ profiler.xlm
if exist proisam.2x$ decomp proisam.2x$ proisam.2xe
if exist proisam.3x$ decomp proisam.3x$ proisam.3xe
if exist proisam.4x$ decomp proisam.4x$ proisam.4xe
if exist proisam.ex$ decomp proisam.ex$ proisam.exe
if exist proisamd.2i$ decomp proisamd.2i$ proisamd.2ib
if exist proisamd.2x$ decomp proisamd.2x$ proisamd.2xe
if exist proisamd.3i$ decomp proisamd.3i$ proisamd.3ib
if exist proisamd.3x$ decomp proisamd.3x$ proisamd.3xe
if exist proisamd.4i$ decomp proisamd.4i$ proisamd.4ib
if exist proisamd.4x$ decomp proisamd.4x$ proisamd.4xe
if exist proisamd.ex$ decomp proisamd.ex$ proisamd.exe
if exist proisamd.li$ decomp proisamd.li$ proisamd.lib
if exist pss.hl$ decomp pss.hl$ pss.hlp
if exist qlbview.bi$ decomp qlbview.bi$ qlbview.bi
if exist qlbview.fr$ decomp qlbview.fr$ qlbview.frm
if exist qlbview.ma$ decomp qlbview.ma$ qlbview.mak
if exist qsort.ba$ decomp qsort.ba$ qsort.bas
if exist qsort.pc$ decomp qsort.pc$ qsort.pcf
if exist readme.tx$ decomp readme.tx$ readme.txt
if exist remline.bi$ decomp remline.bi$ remline.bi
if exist remline.fr$ decomp remline.fr$ remline.frm
if exist remline.ma$ decomp remline.ma$ remline.mak
if exist seek.fr$ decomp seek.fr$ seek.frm
if exist seek.ma$ decomp seek.ma$ seek.mak
if exist setup.ba$ decomp setup.ba$ setup.bas
if exist setup.ma$ decomp setup.ma$ setup.mak
if exist setupmsg.fr$ decomp setupmsg.fr$ setupmsg.frm
if exist setupopt.fr$ decomp setupopt.fr$ setupopt.frm
if exist setuppth.fr$ decomp setuppth.fr$ setuppth.frm
if exist setupsts.fr$ decomp setupsts.fr$ setupsts.frm
if exist shd1.dl$ decomp shd1.dl$ shd1.dll
if exist smallerr.ob$ decomp smallerr.ob$ smallerr.obj
if exist sortdemo.ba$ decomp sortdemo.ba$ sortdemo.bas
if exist sortdemo.ma$ decomp sortdemo.ma$ sortdemo.mak
if exist spin.ba$ decomp spin.ba$ spin.bas
if exist spin.li$ decomp spin.li$ spin.lib
if exist spin.ql$ decomp spin.ql$ spin.qlb
if exist spindemo.fr$ decomp spindemo.fr$ spindemo.frm
if exist spindemo.ma$ decomp spindemo.ma$ spindemo.mak
if exist spinreg.as$ decomp spinreg.as$ spinreg.asm
if exist tbutcust.fr$ decomp tbutcust.fr$ tbutcust.frm
if exist tbutcust.ma$ decomp tbutcust.ma$ tbutcust.mak
if exist tbutreg.as$ decomp tbutreg.as$ tbutreg.asm
if exist tbutton.ba$ decomp tbutton.ba$ tbutton.bas
if exist tbutton.li$ decomp tbutton.li$ tbutton.lib
if exist tbutton.ql$ decomp tbutton.ql$ tbutton.qlb
if exist tld1loc.dl$ decomp tld1loc.dl$ tld1loc.dll
if exist tmsra.fo$ decomp tmsra.fo$ tmsra.fon
if exist tmsrb.fo$ decomp tmsrb.fo$ tmsrb.fon
if exist tmsre.fo$ decomp tmsre.fo$ tmsre.fon
if exist tordraw.ba$ decomp tordraw.ba$ tordraw.bas
if exist torus.fr$ decomp torus.fr$ torus.frm
if exist torus.ma$ decomp torus.ma$ torus.mak
if exist trace.ex$ decomp trace.ex$ trace.exe
if exist trnslate.ex$ decomp trnslate.ex$ trnslate.exe
if exist tscnio.ob$ decomp tscnio.ob$ tscnio.obj
if exist vbda10.li$ decomp vbda10.li$ vbda10.lib
if exist vbdc10.li$ decomp vbdc10.li$ vbdc10.lib
if exist vbdcl10.li$ decomp vbdcl10.li$ vbdcl10.lib
if exist vbdcl10a.li$ decomp vbdcl10a.li$ vbdcl10a.lib
if exist vbdcl10e.li$ decomp vbdcl10e.li$ vbdcl10e.lib
if exist vbde10.li$ decomp vbde10.li$ vbde10.lib
if exist vbdl10.li$ decomp vbdl10.li$ vbdl10.lib
if exist vbdos.bi$ decomp vbdos.bi$ vbdos.bi
if exist vbdos.ex$ decomp vbdos.ex$ vbdos.exe
if exist vbdos.hl$ decomp vbdos.hl$ vbdos.hlp
if exist vbdos.ic$ decomp vbdos.ic$ vbdos.ico
if exist vbdos.li$ decomp vbdos.li$ vbdos.lib
if exist vbdos.pi$ decomp vbdos.pi$ vbdos.pif
if exist vbdos.ql$ decomp vbdos.ql$ vbdos.qlb
if exist vbdosqlb.li$ decomp vbdosqlb.li$ vbdosqlb.lib
if exist vbdprof.ex$ decomp vbdprof.ex$ vbdprof.exe
if exist vbdpss.hl$ decomp vbdpss.hl$ vbdpss.hlp
if exist vbdrt10.ex$ decomp vbdrt10.ex$ vbdrt10.exe
if exist vbdrt10.li$ decomp vbdrt10.li$ vbdrt10.lib
if exist vbdrt10a.2i$ decomp vbdrt10a.2i$ vbdrt10a.2ib
if exist vbdrt10a.2x$ decomp vbdrt10a.2x$ vbdrt10a.2xe
if exist vbdrt10a.3i$ decomp vbdrt10a.3i$ vbdrt10a.3ib
if exist vbdrt10a.3x$ decomp vbdrt10a.3x$ vbdrt10a.3xe
if exist vbdrt10a.4i$ decomp vbdrt10a.4i$ vbdrt10a.4ib
if exist vbdrt10a.4x$ decomp vbdrt10a.4x$ vbdrt10a.4xe
if exist vbdrt10a.ex$ decomp vbdrt10a.ex$ vbdrt10a.exe
if exist vbdrt10a.li$ decomp vbdrt10a.li$ vbdrt10a.lib
if exist vbdrt10e.2i$ decomp vbdrt10e.2i$ vbdrt10e.2ib
if exist vbdrt10e.2x$ decomp vbdrt10e.2x$ vbdrt10e.2xe
if exist vbdrt10e.3i$ decomp vbdrt10e.3i$ vbdrt10e.3ib
if exist vbdrt10e.3x$ decomp vbdrt10e.3x$ vbdrt10e.3xe
if exist vbdrt10e.4i$ decomp vbdrt10e.4i$ vbdrt10e.4ib
if exist vbdrt10e.4x$ decomp vbdrt10e.4x$ vbdrt10e.4xe
if exist vbdrt10e.ex$ decomp vbdrt10e.ex$ vbdrt10e.exe
if exist vbdrt10e.li$ decomp vbdrt10e.li$ vbdrt10e.lib
if exist vbdtrace.li$ decomp vbdtrace.li$ vbdtrace.lib

rem Decompress broken-up files
if exist qck.hl$ decomp qck.hl$ qck.hlp
if exist advr.hl$ decomp advr.hl$ advr.hlp
if exist ener.hl$ decomp ener.hl$ ener.hlp
if exist ex.hl$ decomp ex.hl$ ex.hlp

rem Concatenate broken-up files

rem vbdos.hlp
if exist vbdos.hlp goto exist_vbdos
if exist qck.hlp copy /b qck.hlp+advr.hlp+ener.hlp+ex.hlp vbdos.hlp
if exist qck.hlp  del qck.hlp
if exist advr.hlp del advr.hlp
if exist ener.hlp del ener.hlp
if exist ex.hlp   del ex.hlp
:exist_vbdos

rem vbda10.lib, vbde10.lib, vbdcl10e.lib, vbdcl10a.lib
if exist 01split.02 copy 01split.02 01split.2
if exist 02split.02 copy 02split.02 02split.2
if exist 03split.02 copy 03split.02 03split.2
if exist 04split.02 copy 04split.02 04split.2

if exist 01split.01 decomp 01split.01 01split.1
if exist 01split.02 decomp 01split.02 01split.2
if exist 02split.01 decomp 02split.01 02split.1
if exist 02split.02 decomp 02split.02 02split.2
if exist 03split.01 decomp 03split.01 03split.1
if exist 03split.02 decomp 03split.02 03split.2
if exist 04split.01 decomp 04split.01 04split.1
if exist 04split.02 decomp 04split.02 04split.2

if exist 01split.1 del 01split.01
if exist 01split.2 del 01split.02
if exist 02split.1 del 02split.01
if exist 02split.2 del 02split.02
if exist 03split.1 del 03split.01
if exist 03split.2 del 03split.02
if exist 04split.1 del 04split.01
if exist 04split.2 del 04split.02

if exist 01split.1 copy /b 01split.1+01split.2 vbda10.lib
if exist 02split.1 copy /b 02split.1+02split.2 vbde10.lib
if exist 03split.1 copy /b 03split.1+03split.2 vbdcl10e.lib
if exist 04split.1 copy /b 04split.1+04split.2 vbdcl10a.lib

if exist 01split.1 del 01split.1
if exist 01split.2 del 01split.2
if exist 02split.1 del 02split.1
if exist 02split.2 del 02split.2
if exist 03split.1 del 03split.1
if exist 03split.2 del 03split.2
if exist 04split.1 del 04split.1
if exist 04split.2 del 04split.2

del *.??$
del *.?$

rem Done
echo/
echo Visual Basic for MS-DOS batch installation complete.

:end
echo/
