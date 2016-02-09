X-GM-THRID: 6249137798348013568
Date: Mon, 8 Feb 2016 20:06:15 -0800 (PST)
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <ba8ae97e-c7c5-4383-bffc-a5eac3003e1d@googlegroups.com>
Subject: Doubt regarding build warnings
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_886_48093340.1454990775502"
X-Google-Token: ELfL5bUF4asOmmNRAkQ0
X-Google-IP: 14.139.242.195

------=_Part_886_48093340.1454990775502
Content-Type: multipart/alternative; 
	boundary="----=_Part_887_1397529360.1454990775502"

------=_Part_887_1397529360.1454990775502
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I got these warning today while building the kernel. I already got some 
patches accepted but was not not getting any such warnings before.
What can be the reason and how to fix? I used make M=drivers/staging for 
the build.
The warnings are like:

WARNING: "__cpu_online_mask" 
[drivers/staging/lustre/lustre/ptlrpc/ptlrpc.ko] undefined!
WARNING: "__put_page" [drivers/staging/lustre/lustre/ptlrpc/ptlrpc.ko] 
undefined!
WARNING: "__put_page" [drivers/staging/lustre/lustre/obdecho/obdecho.ko] 
undefined!
WARNING: "__cpu_possible_mask" 
[drivers/staging/lustre/lustre/obdclass/obdclass.ko] undefined!
WARNING: "__page_mapcount" [drivers/staging/lustre/lustre/llite/lustre.ko] 
undefined!
WARNING: "__put_page" [drivers/staging/lustre/lustre/llite/lustre.ko] 
undefined!
WARNING: "__cpu_possible_mask" 
[drivers/staging/lustre/lustre/libcfs/libcfs.ko] undefined!
WARNING: "__cpu_online_mask" 
[drivers/staging/lustre/lustre/libcfs/libcfs.ko] undefined!

Thank you,
Bhumika

------=_Part_887_1397529360.1454990775502
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I got these warning today while building the kernel. I alr=
eady got some patches accepted but was not not getting any such warnings be=
fore.<br>What can be the reason and how to fix? I used make M=3Ddrivers/sta=
ging for the build.<br>The warnings are like:<br><br>WARNING: &quot;__cpu_o=
nline_mask&quot; [drivers/staging/lustre/lustre/ptlrpc/ptlrpc.ko] undefined=
!<br>WARNING: &quot;__put_page&quot; [drivers/staging/lustre/lustre/ptlrpc/=
ptlrpc.ko] undefined!<br>WARNING: &quot;__put_page&quot; [drivers/staging/l=
ustre/lustre/obdecho/obdecho.ko] undefined!<br>WARNING: &quot;__cpu_possibl=
e_mask&quot; [drivers/staging/lustre/lustre/obdclass/obdclass.ko] undefined=
!<br>WARNING: &quot;__page_mapcount&quot; [drivers/staging/lustre/lustre/ll=
ite/lustre.ko] undefined!<br>WARNING: &quot;__put_page&quot; [drivers/stagi=
ng/lustre/lustre/llite/lustre.ko] undefined!<br>WARNING: &quot;__cpu_possib=
le_mask&quot; [drivers/staging/lustre/lustre/libcfs/libcfs.ko] undefined!<b=
r>WARNING: &quot;__cpu_online_mask&quot; [drivers/staging/lustre/lustre/lib=
cfs/libcfs.ko] undefined!<br><br>Thank you,<br>Bhumika<br></div>
------=_Part_887_1397529360.1454990775502--

------=_Part_886_48093340.1454990775502--

