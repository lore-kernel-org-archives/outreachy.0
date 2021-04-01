X-GM-THRID: 6946094101193293824
Date: Thu, 1 Apr 2021 00:52:40 -0700 (PDT)
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <bfc3ac12-e9c3-4b16-b53a-fdf1aeee5e97n@googlegroups.com>
Subject: Issues regarding fixing error generated during compiling changes.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8092_140115699.1617263560040"

------=_Part_8092_140115699.1617263560040
Content-Type: multipart/alternative; 
	boundary="----=_Part_8093_922630827.1617263560040"

------=_Part_8093_922630827.1617263560040
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello, I am Mitali from India. I am newbie. I am using Linux 2021.1 in=20
VirtualBox. In first patch tutorial under "Compile your changes section"=20
after running "make -j2" command, I am getting these errors:
In file included from ./include/linux/printk.h:7,
                 from ./include/linux/kernel.h:16,
                 from ./include/linux/list.h:9,
                 from ./include/linux/module.h:12,
                 from drivers/net/ethernet/intel/e1000/e1000.h:10,
                 from drivers/net/ethernet/intel/e1000/e1000_main.c:4:
./include/linux/kern_levels.h:5:18: error: expected declaration specifiers=
=20
or =E2=80=98...=E2=80=99 before string constant
    5 | #define KERN_SOH "\001"  /* ASCII Start Of Header */
      |                  ^~~~~~
./include/linux/kern_levels.h:15:20: note: in expansion of macro =E2=80=98K=
ERN_SOH=E2=80=99
   15 | #define KERN_DEBUG KERN_SOH "7" /* debug-level messages */
      |                   ^~~~~~~~
drivers/net/ethernet/intel/e1000/e1000_main.c:90:10: note: in expansion of=
=20
macro =E2=80=98KERN_DEBUG=E2=80=99
   90 |   printk(KERN_DEBUG "I can modify the Linux kernel!\n");
      |                  ^~~~~~~~~~
make[5]: *** [scripts/Makefile.build:271:=20
drivers/net/ethernet/intel/e1000/e1000_main.o] Error 1
make[4]: *** [scripts/Makefile.build:514: drivers/net/ethernet/intel/e1000]=
=20
Error 2
make[3]: *** [scripts/Makefile.build:514: drivers/net/ethernet/intel] Error=
=20
2
make[2]: *** [scripts/Makefile.build:514: drivers/net/ethernet] Error 2
make[1]: *** [scripts/Makefile.build:514: drivers/net] Error 2
make: *** [Makefile:1851: drivers] Error 2
make: *** Waiting for unfinished jobs....

I am not sure how to fix this error. Please help me out.

Thanks


------=_Part_8093_922630827.1617263560040
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello, I am Mitali from India. I am newbie. I am using Linux 2021.1 in Virt=
ualBox. In first patch tutorial under "Compile your changes section" after =
running "make -j2" command, I am getting these errors:<div><div>In file inc=
luded from ./include/linux/printk.h:7,</div><div>&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from ./include/linux/kernel.h:16,</div>=
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from ./i=
nclude/linux/list.h:9,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;from ./include/linux/module.h:12,</div><div>&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from drivers/net/etherne=
t/intel/e1000/e1000.h:10,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;from drivers/net/ethernet/intel/e1000/e1000_main.c:4=
:</div><div>./include/linux/kern_levels.h:5:18: error: expected declaration=
 specifiers or =E2=80=98...=E2=80=99 before string constant</div><div>&nbsp=
; &nbsp; 5 | #define KERN_SOH "\001"&nbsp; /* ASCII Start Of Header */</div=
><div>&nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; ^~~~~~</div><div>./include/linux/kern_levels.h:15:20: note:=
 in expansion of macro =E2=80=98KERN_SOH=E2=80=99</div><div>&nbsp; &nbsp;15=
 | #define KERN_DEBUG KERN_SOH "7" /* debug-level messages */</div><div>&nb=
sp; &nbsp; &nbsp; |&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;^~~~~~~~</div><div>drivers/net/ethernet/intel/e1000/e1000_main=
.c:90:10: note: in expansion of macro =E2=80=98KERN_DEBUG=E2=80=99</div><di=
v>&nbsp; &nbsp;90 |&nbsp; &nbsp;printk(KERN_DEBUG "I can modify the Linux k=
ernel!\n");</div><div>&nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~~~</div><div>make[5]: *** [scripts/=
Makefile.build:271: drivers/net/ethernet/intel/e1000/e1000_main.o] Error 1<=
/div><div>make[4]: *** [scripts/Makefile.build:514: drivers/net/ethernet/in=
tel/e1000] Error 2</div><div>make[3]: *** [scripts/Makefile.build:514: driv=
ers/net/ethernet/intel] Error 2</div><div>make[2]: *** [scripts/Makefile.bu=
ild:514: drivers/net/ethernet] Error 2</div><div>make[1]: *** [scripts/Make=
file.build:514: drivers/net] Error 2</div><div>make: *** [Makefile:1851: dr=
ivers] Error 2</div><div>make: *** Waiting for unfinished jobs....</div></d=
iv><div><br></div><div>I am not sure how to fix this error. Please help me =
out.</div><div><br></div><div>Thanks</div><div><br></div>
------=_Part_8093_922630827.1617263560040--

------=_Part_8092_140115699.1617263560040--

