X-GM-THRID: 6314348770536456192
Date: Tue, 2 Aug 2016 14:38:07 -0700 (PDT)
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <2fda1ad7-0822-4736-b802-b09771fe90e9@googlegroups.com>
Subject: difficulty in compiling/installing
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2991_1794825789.1470173887914"
X-Google-Token: EL-lhL0FHvNh2qH9gp00
X-Google-IP: 182.58.161.249

------=_Part_2991_1794825789.1470173887914
Content-Type: multipart/alternative; 
	boundary="----=_Part_2992_970867887.1470173887914"

------=_Part_2992_970867887.1470173887914
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



 Hello, I am Sayli Karnik.
 I have followed the tutorial at https://kernelnewbies.org/Outreachyfirstpatch 

 to insert a printk statement in 
drivers/net/ethernet/intel/e1000/e1000_main.c
I then ran 'make drivers/net/ethernet/intel/e1000/ ' to compile 
AND
sudo make install drivers/net/ethernet/intel/e1000/  to install the module.
But on rebooting, dmesg doesn't not contain the message.
I also tried :
make
rmmod e1000.ko
insmod e1000.ko
but no luck.
Is there somewhere that I might be going wrong?

------=_Part_2992_970867887.1470173887914
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>=C2=A0Hello, I am Sayli Karnik.<br>=C2=A0I have fo=
llowed the tutorial at <a target=3D"_blank" href=3D"https://kernelnewbies.o=
rg/Outreachyfirstpatch">https://kernelnewbies.org/<wbr>Outreachyfirstpatch =
</a><br>=C2=A0to insert a printk statement in drivers/net/ethernet/intel/e1=
000/e1000_main.c<br><div tabindex=3D"1" role=3D"textbox" id=3D":3yr" class=
=3D"Am Al editable LW-avf" contenteditable=3D"true">I then ran &#39;make dr=
ivers/net/ethernet/intel/<wbr>e1000/ &#39; to compile <br>AND<br>sudo make =
install drivers/net/ethernet/intel/<wbr>e1000/=C2=A0 to install the module.=
<br>But on rebooting, dmesg doesn&#39;t not contain the message.<br>I also =
tried :<br>make<br>rmmod e1000.ko<br>insmod e1000.ko<br>but no luck.<br>Is =
there somewhere that I might be going wrong?</div></div>
------=_Part_2992_970867887.1470173887914--

------=_Part_2991_1794825789.1470173887914--

