X-GM-THRID: 6394057541861507072
Date: Sun, 5 Mar 2017 08:48:53 -0800 (PST)
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <888e8142-ac49-424e-b3ca-ea308f66330a@googlegroups.com>
Subject: Coccinelle tasks
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7224_80902768.1488732533039"
X-Google-Token: EPWC8cUFgueP0JDaqL80
X-Google-IP: 223.186.45.141

------=_Part_7224_80902768.1488732533039
Content-Type: multipart/alternative; 
	boundary="----=_Part_7225_1531586688.1488732533039"

------=_Part_7225_1531586688.1488732533039
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi

I would like to work on a Coccinelle task, but I'm not sure how to go 
forward.
- I ran a sudo apt-get install coccinelle
- And then ran  spatch --sp-file scripts/coccinelle/misc/bugon.cocci 
drivers/staging/dgnc/* -D report

The output of all scripts I've run has been something like this-

init_defs_builtins: /usr/lib/coccinelle/standard.h
HANDLING: drivers/staging/dgnc/dgnc_cls.c drivers/staging/dgnc/dgnc_cls.h 
drivers/staging/dgnc/dgnc_driver.c drivers/staging/dgnc/dgnc_driver.h 
drivers/staging/dgnc/dgnc_mgmt.c drivers/staging/dgnc/dgnc_mgmt.h 
drivers/staging/dgnc/dgnc_neo.c drivers/staging/dgnc/dgnc_neo.h 
drivers/staging/dgnc/dgnc_pci.h drivers/staging/dgnc/dgnc_tty.c 
drivers/staging/dgnc/dgnc_tty.h drivers/staging/dgnc/dgnc_utils.c 
drivers/staging/dgnc/dgnc_utils.h drivers/staging/dgnc/digi.h 
drivers/staging/dgnc/Kconfig drivers/staging/dgnc/Makefile 
drivers/staging/dgnc/TODO

How can I run coccinelle scripts to detect issues and write some of my own 
(same as coccinelle tasks?) ?

Thanks


------=_Part_7225_1531586688.1488732533039
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<div><br></div><div>I would like to work on a Coccinelle=
 task, but I&#39;m not sure how to go forward.</div><div>- I ran a sudo apt=
-get install coccinelle</div><div>- And then ran =C2=A0spatch --sp-file scr=
ipts/coccinelle/misc/bugon.cocci drivers/staging/dgnc/* -D report</div><div=
><br></div><div>The output of all scripts I&#39;ve run has been something l=
ike this-</div><div><br></div><div><div>init_defs_builtins: /usr/lib/coccin=
elle/standard.h</div><div>HANDLING: drivers/staging/dgnc/dgnc_cls.c drivers=
/staging/dgnc/dgnc_cls.h drivers/staging/dgnc/dgnc_driver.c drivers/staging=
/dgnc/dgnc_driver.h drivers/staging/dgnc/dgnc_mgmt.c drivers/staging/dgnc/d=
gnc_mgmt.h drivers/staging/dgnc/dgnc_neo.c drivers/staging/dgnc/dgnc_neo.h =
drivers/staging/dgnc/dgnc_pci.h drivers/staging/dgnc/dgnc_tty.c drivers/sta=
ging/dgnc/dgnc_tty.h drivers/staging/dgnc/dgnc_utils.c drivers/staging/dgnc=
/dgnc_utils.h drivers/staging/dgnc/digi.h drivers/staging/dgnc/Kconfig driv=
ers/staging/dgnc/Makefile drivers/staging/dgnc/TODO</div></div><div><br></d=
iv><div>How can I run coccinelle scripts to detect issues and write some of=
 my own (same as coccinelle tasks?) ?</div><div><br></div><div>Thanks</div>=
<div><br></div></div>
------=_Part_7225_1531586688.1488732533039--

------=_Part_7224_80902768.1488732533039--

