X-GM-THRID: 6933876231124287488
Date: Sat, 27 Feb 2021 01:41:04 -0800 (PST)
From: Ankita Pareek <ankitapareek2000@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <313f5f12-4bce-4f6d-ae23-d76cf0ff60e2n@googlegroups.com>
Subject: Need help with compiling kernel
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1544_730509856.1614418864926"

------=_Part_1544_730509856.1614418864926
Content-Type: multipart/alternative; 
	boundary="----=_Part_1545_1279446339.1614418864926"

------=_Part_1545_1279446339.1614418864926
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello everyone! 
I'm Ankita Pareek from India. I'm applying for Outreachy this year and I 
would love to contribute to Linux Kernel. 
I'm a newbie and thus started off with compiling my own kernel following 
this tutorial --> 
https://kernelnewbies.org/OutreachyfirstpatchSetup?action=show&redirect=OPWfirstpatchSetup 
I'm able to successfully build and install the kernel on my native Ubuntu 
20.04 and it also gets updated in the grub boot menu. But when I try to 
boot into that newly compiled kernel it gets stuck at "*Loading initial 
ramdisk ...*" and I'm not able to boot into it. Here are some things that I 
tried to fix this problems - 

   - I waited for almost 2-3 hours after that to boot into the new kernel 
   but it still showed the same message. 
   - Then I tried changing the 'GRUB_CMDLINE_LINUX' parameter to 'debug' 
   for checking the log messages but couldn't find any logs.
   -  Some answers on Google about this said that it was possibly because 
   Secure boot was enabled so I tried compiling and booting by disabling 
   Secure boot but still same problem exists.
   - Then I tried compiling the kernel on a VM and it was successful and I 
   could boot into it. But the VM makes the system very slow and thus I wish 
   to compile and run the kernel on my native Linux machine.

What could be the possible reason and fix for this problem? Can someone 
please help me with this? I've been stuck on this for almost a week now so 
any help would be really great!

Thanks


------=_Part_1545_1279446339.1614418864926
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<font face=3D"Sans Serif">Hello everyone!&nbsp;</font><div><font face=3D"Sa=
ns Serif">I'm Ankita Pareek from India. I'm applying for Outreachy this yea=
r and I would love to contribute to Linux Kernel.&nbsp;</font></div><div><f=
ont face=3D"Sans Serif">I'm a newbie and thus started off with compiling my=
 own kernel following this tutorial --&gt; https://kernelnewbies.org/Outrea=
chyfirstpatchSetup?action=3Dshow&amp;redirect=3DOPWfirstpatchSetup&nbsp;</f=
ont></div><div><font face=3D"Sans Serif">I'm able to successfully build and=
 install the kernel on my native Ubuntu 20.04 and it also gets updated in t=
he grub boot menu. But when I try to boot into that newly compiled kernel i=
t gets stuck at "<b>Loading initial ramdisk ...</b>" and I'm not able to bo=
ot into it. Here are some things that I tried to fix this problems -&nbsp;<=
/font></div><div><ul><li><font face=3D"Sans Serif">I waited for almost 2-3 =
hours after that to boot into the new kernel but it still showed the same m=
essage.&nbsp;</font></li><li><font face=3D"Sans Serif">Then I tried changin=
g the 'GRUB_CMDLINE_LINUX' parameter to 'debug' for checking the log messag=
es but couldn't find any logs.</font></li><li><font face=3D"Sans Serif">&nb=
sp;Some answers on Google about this said that it was possibly because Secu=
re boot was enabled so I tried compiling and booting by disabling Secure bo=
ot but still same problem exists.</font></li><li><font face=3D"Sans Serif">=
Then I tried compiling the kernel on a VM and it was successful and I could=
 boot into it. But the VM makes the system very slow and thus I wish to com=
pile and run the kernel on my native Linux machine.</font></li></ul></div><=
div><font face=3D"Sans Serif">What could be the possible reason and fix for=
 this problem? Can someone please help me with this? I've been stuck on thi=
s for almost a week now so any help would be really great!</font></div><div=
><font face=3D"Sans Serif"><br></font></div><div><font face=3D"Sans Serif">=
Thanks<br></font><div><br></div></div>
------=_Part_1545_1279446339.1614418864926--

------=_Part_1544_730509856.1614418864926--

