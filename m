X-GM-THRID: 10831186100224
X-Gmail-Labels: Topic type: DISCUSSION
Date: Fri, 17 Apr 2015 21:19:51 -0700 (PDT)
From: Supraba murugan <msupraba@gmail.com>
To: outreachy-kernel@googlegroups.com
Message-Id: <1ecfa08e-16d7-4f98-8138-f101e346d0d7@googlegroups.com>
Subject: Query: First Patch
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1598_1327108902.1429330791061"
X-Google-Token: EOe2x6kFR95tGCILX0U0
X-Google-IP: 122.174.96.199

------=_Part_1598_1327108902.1429330791061
Content-Type: multipart/alternative; 
	boundary="----=_Part_1599_954158172.1429330791062"

------=_Part_1599_954158172.1429330791062
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

The selftest.c file did not contain the probe function nor did any other c 
file in net/bluetooth directory.I even tried other drivers and still 
couldn't find any c file with the probe function in it.Under which function 
should I include the printk statement in these c files.
Also,I want to know how to identify the wireless driver?


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
On Fri, 17 Apr 2015, Supraba murugan wrote: 

> I was following the steps 
in http://kernelnewbies.org/Outreachyfirstpatch#head-816e6eef0008340eab7d542c3f6923a1f896478d 
to 
> submit my first patch.When going through the section 'MODIFYING A DRIVER 
ON 
> NATIVE LINUX', 
> I used lsmod command and I did not find either e1000 or e1000e drivers.It 
> was asked to identify my wireless driver, but I didn't know how to find 
it 
> out.So I just chose the bluetooth driver from that list and ran the 
command 
> git grep bluetooth -- '*Makefile'. 
> The output of that command is shown below 
> 
> arch/arm/mach-s3c24xx/Makefile:obj-$(CONFIG_H1940BT)                     
> drivers/Makefile:obj-$(CONFIG_BT)               += bluetooth/ 
> drivers/platform/x86/Makefile:obj-$(CONFIG_TOSHIBA_BT_RFKILL)   += toshi 
> net/Makefile:obj-$(CONFIG_BT)           += bluetooth/ 
> net/bluetooth/Makefile:obj-$(CONFIG_BT) += bluetooth.o 
> net/bluetooth/Makefile:obj-$(CONFIG_BT_6LOWPAN) += bluetooth_6lowpan.o 
> net/bluetooth/Makefile:bluetooth_6lowpan-y := 6lowpan.o 
> net/bluetooth/Makefile:bluetooth-y := af_bluetooth.o hci_core.o hci_conn 
> net/bluetooth/Makefile:bluetooth-$(CONFIG_BT_SELFTEST) += selftest.o 
> 
> I don't know how to find out what C files are compiled into the driver 
> binary using the above information. Please help. 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
I'm sorry but this mailing list is not active anymore, and you should use 
the outreachy-kernel one.  Also, the application period for this round is 
over, and the application period for the next round will start in the 
fall. 

With respect to your question, if the configuration variable is set, eg 
CONFIG_BT_SELFTEST, then the corresponding .o file, eg selftest.o, will be 
generated.  The .c file that goes with it is normally found by looking at 
the directory that contains the makefile and replacing the .o by .c in the 
file name. 

julia 


> ................... 
> with regards, 
> supraba 
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "opw-kernel" group. 
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to opw-kernel+...@googlegroups.com. 
> For more options, visit https://groups.google.com/d/optout. 
> 
>

------=_Part_1599_954158172.1429330791062
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div tabindex=3D"0" class=3D"G3J0AAD-nb-W G3J0AAD-mb-n G3J=
0AAD-nb-Y G3J0AAD-b-Ub G3J0AAD-nb-X" style=3D"padding-top: 4px; padding-bot=
tom: 4px; border-top-width: 1px; border-bottom-width: 1px; border-left-widt=
h: 1px; border-top-style: solid; border-bottom-style: solid; border-left-st=
yle: solid; border-top-color: rgb(221, 221, 221); border-bottom-color: tran=
sparent; border-left-color: rgb(77, 144, 240); position: relative;"><div cl=
ass=3D"G3J0AAD-nb-W" style=3D"border-top-width: 1px; border-bottom-width: 1=
px; border-left-width: 1px; border-top-style: solid; border-bottom-style: s=
olid; border-left-style: solid; border-top-color: transparent; border-botto=
m-color: transparent; border-left-color: transparent; position: relative;">=
<div class=3D"G3J0AAD-nb-F"><div class=3D"G3J0AAD-nb-x"><div class=3D"G3J0A=
AD-gd-a" style=3D"margin-left: 44px; padding-left: 5px;"><div tabindex=3D"0=
" class=3D"G3J0AAD-nb-P"><div style=3D"overflow: auto;"><div class=3D"G3J0A=
AD-xb-b"><font color=3D"#000000">The selftest.c file did not contain the pr=
obe function nor did any other c file in net/bluetooth directory.I even tri=
ed other drivers and still couldn't find any c file with the probe function=
 in it.Under which function should I include the printk statement in these =
c files.<br>Also,I want to know how to identify the wireless driver?</font>=
</div><div class=3D"G3J0AAD-xb-b" style=3D"color: rgb(136, 136, 136);"><br>=
</div><div class=3D"G3J0AAD-xb-b" style=3D"color: rgb(136, 136, 136);"><br>=
</div><div class=3D"G3J0AAD-xb-b"><font color=3D"#cccccc">-----------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------------</font></div><div class=3D"G3J=
0AAD-xb-b" style=3D"color: rgb(136, 136, 136);">On Fri, 17 Apr 2015, Suprab=
a murugan wrote:&nbsp;<br><br>&gt; I was following the steps in&nbsp;http:/=
/kernelnewbies.org/Outreachyfirstpatch#head-816e6eef0008340eab7d542c3f6923a=
1f896478d to&nbsp;<br></div><font color=3D"#999999">&gt; submit my first pa=
tch.When going through the section 'MODIFYING A DRIVER ON</font><font color=
=3D"#cccccc">&nbsp;</font><br><div class=3D"G3J0AAD-xb-b" style=3D"color: r=
gb(136, 136, 136);">&gt; NATIVE LINUX',&nbsp;<br>&gt; I used lsmod command =
and I did not find either e1000 or e1000e drivers.It&nbsp;<br>&gt; was aske=
d to identify my wireless driver, but I didn't know how to find it&nbsp;<br=
>&gt; out.So I just chose the bluetooth driver from that list and ran the c=
ommand&nbsp;<br>&gt; git grep bluetooth -- '*Makefile'.&nbsp;<br>&gt; The o=
utput of that command is shown below&nbsp;<br>&gt;&nbsp;<br>&gt; arch/arm/m=
ach-s3c24xx/<wbr>Makefile:obj-$(CONFIG_H1940BT) &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>&gt; drivers/Makefile:o=
bj-$(CONFIG_<wbr>BT) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; +=3D =
bluetooth/&nbsp;<br>&gt; drivers/platform/x86/Makefile:<wbr>obj-$(CONFIG_TO=
SHIBA_BT_<wbr>RFKILL) &nbsp; +=3D toshi&nbsp;<br>&gt; net/Makefile:obj-$(CO=
NFIG_BT) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; +=3D bluetooth/&nbsp;<br>&gt; n=
et/bluetooth/Makefile:obj-$(<wbr>CONFIG_BT) +=3D bluetooth.o&nbsp;<br>&gt; =
net/bluetooth/Makefile:obj-$(<wbr>CONFIG_BT_6LOWPAN) +=3D bluetooth_6lowpan=
.o&nbsp;<br>&gt; net/bluetooth/Makefile:<wbr>bluetooth_6lowpan-y :=3D 6lowp=
an.o&nbsp;<br>&gt; net/bluetooth/Makefile:<wbr>bluetooth-y :=3D af_bluetoot=
h.o hci_core.o hci_conn&nbsp;<br>&gt; net/bluetooth/Makefile:<wbr>bluetooth=
-$(CONFIG_BT_<wbr>SELFTEST) +=3D selftest.o&nbsp;<br>&gt;&nbsp;<br>&gt; I d=
on't know how to find out what C files are compiled into the driver&nbsp;<b=
r>&gt; binary using the above information.&nbsp;Please help.&nbsp;<br>-----=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
--------------------------------------------------------</div><span style=
=3D"background-color: rgb(255, 255, 255);"><font color=3D"#999999">I'm sorr=
y but this mailing list is not active anymore, and you should use&nbsp;<br>=
the outreachy-kernel one. &nbsp;Also, the application period for this round=
 is&nbsp;<br>over, and the application period for the next round will start=
 in the&nbsp;<br>fall.&nbsp;<br><br>With respect to your question, if the c=
onfiguration variable is set, eg&nbsp;<br>CONFIG_BT_SELFTEST, then the corr=
esponding .o file, eg selftest.o, will be&nbsp;<br>generated. &nbsp;The .c =
file that goes with it is normally found by looking at&nbsp;<br>the directo=
ry that contains the makefile and replacing the .o by .c in the&nbsp;<br>fi=
le name.&nbsp;<br><br>julia&nbsp;<br><br><br>&gt; ...................&nbsp;=
<br>&gt; with regards,&nbsp;<br>&gt; supraba&nbsp;<br>&gt;&nbsp;<br>&gt; --=
&nbsp;<br>&gt; You received this message because you are subscribed to the =
Google Groups&nbsp;<br>&gt; "opw-kernel" group.&nbsp;<br>&gt; To unsubscrib=
e from this group and stop receiving emails from it, send an&nbsp;<br>&gt; =
email to&nbsp;<a target=3D"_blank" gdf-obfuscated-mailto=3D"pWPptWelhXYJ" r=
el=3D"nofollow" style=3D"cursor: pointer;">opw-kernel+...@<wbr>googlegroups=
.com</a>.&nbsp;<br>&gt; For more options, visit&nbsp;<a href=3D"https://gro=
ups.google.com/d/optout" target=3D"_blank" rel=3D"nofollow" style=3D"cursor=
: pointer;">https://groups.google.com/d/<wbr>optout</a>.&nbsp;<br>&gt;&nbsp=
;<br>&gt;</font></span></div></div><div></div><div></div></div><div><div cl=
ass=3D"G3J0AAD-gd-a" style=3D"margin-left: 44px; padding-left: 5px;"></div>=
</div><div class=3D"G3J0AAD-nb-b" style=3D"margin-left: 39px; padding-left:=
 5px;"><div class=3D"G3J0AAD-nb-a G3J0AAD-nb-cb" style=3D"padding-top: 4px;=
 padding-bottom: 4px; position: relative;"><span style=3D"background-color:=
 rgb(204, 204, 204);"><font color=3D"#999999"><div style=3D"display: inline=
-block;"></div></font></span></div></div></div></div></div></div><div tabin=
dex=3D"0" class=3D"G3J0AAD-nb-W G3J0AAD-mb-n G3J0AAD-mb-k G3J0AAD-nb-V" sty=
le=3D"padding-top: 4px; padding-bottom: 4px; border-top-width: 1px; border-=
bottom-width: 1px; border-left-width: 1px; border-top-style: solid; border-=
bottom-style: solid; border-left-style: solid; border-top-color: rgb(221, 2=
21, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: trans=
parent; position: relative; background-position: 0px 9px;"><input type=3D"t=
ext" tabindex=3D"-1" role=3D"presentation" style=3D"height: 1px; opacity: 0=
; width: 1px; z-index: -1; overflow: hidden; position: absolute;"></div></d=
iv>
------=_Part_1599_954158172.1429330791062--

------=_Part_1598_1327108902.1429330791061--

