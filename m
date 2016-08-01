X-GM-THRID: 6311696550049349632
X-Gmail-Labels: Topic type: DISCUSSION
Date: Mon, 1 Aug 2016 10:13:47 -0700 (PDT)
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <6e8fc6fd-92a5-4c6a-b797-cebd04f10e8d@googlegroups.com>
In-Reply-To: <64c3385b-6ee7-44ac-bb17-e265d5f9ade8@googlegroups.com>
References: <64c3385b-6ee7-44ac-bb17-e265d5f9ade8@googlegroups.com>
Subject: Re: commiting the .git/hooks/pre-commit and testing the changes on
 the updated e1000_main.c
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1278_1165877058.1470071627777"
X-Google-Token: EMuG_rwFBl4V1ipGlE80
X-Google-IP: 182.58.218.178

------=_Part_1278_1165877058.1470071627777
Content-Type: multipart/alternative; 
	boundary="----=_Part_1279_391380785.1470071627777"

------=_Part_1279_391380785.1470071627777
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, July 26, 2016 at 11:36:10 PM UTC+5:30, courage angeh wrote:
>
> I am a newbie... just start recently preparing for the out reach program 
> in December.... i started at: 
> https://kernelnewbies.org/Outreachyfirstpatch but i have a number of 
> difficulties:
> 1. After editx... ,  recompiling my driver, installing the changes and 
> rebooting my linux system . I tested the changes but i didn't find the 
> message " I can modify the Linux kernel!".... i contacted the irc 
> channel:#kernel-outreachy but i seemed not to exist.
> 2. i went ahead to creating the .git/hooks/pre-commit but when i try 
> staging and commiting the file i get the respective errors:
>
> error: Invalid path '.git/hooks/pre-commit'
> error: unable to add .git/hooks/pre-commit to index
> fatal: adding files failed
>
> and
>
> error: pathspec 'First patch' did not match any file(s) known to git.
>
> please some one help me out???
>
>
>  Hey I too am a newbie, I added the printk statement by following 
kernelnewbies.org, i then ran the following:
1.make 'make drivers/net/ethernet/intel/e1000/
2.sudo make install drivers/net/ethernet/intel/e1000/

On rebooting I got FATAL: Could not load 
/lib/modules/4.5.0-rc3+/modules.dep: No such file or directory.
Is there somewhere that I might be going wrong?
Did your steps differ from mine? If yes, please let me know what you did 
differently.
Thanks!

------=_Part_1279_391380785.1470071627777
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, July 26, 2016 at 11:36:10 PM UTC+5:30,=
 courage angeh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=
=3D"ltr">I am a newbie... just start recently preparing for the out reach p=
rogram in December.... i started at: <a href=3D"https://kernelnewbies.org/O=
utreachyfirstpatch" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.=
href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fkernelnewbies.org=
%2FOutreachyfirstpatch\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEARR3yHMZoXv=
OaBsXxPWzyoOSw9Q&#39;;return true;" onclick=3D"this.href=3D&#39;https://www=
.google.com/url?q\x3dhttps%3A%2F%2Fkernelnewbies.org%2FOutreachyfirstpatch\=
x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEARR3yHMZoXvOaBsXxPWzyoOSw9Q&#39;;r=
eturn true;">https://kernelnewbies.org/<wbr>Outreachyfirstpatch</a> but i h=
ave a number of difficulties:<br>1. After editx... ,=C2=A0 recompiling my d=
river, installing the changes and rebooting my linux system . I tested the =
changes but i didn&#39;t find the message &quot; I can modify the Linux ker=
nel!&quot;.... i contacted the irc channel:#kernel-outreachy but i seemed n=
ot to exist.<br>2. i went ahead to creating the .git/hooks/pre-commit but w=
hen i try staging and commiting the file i get the respective errors:<br><b=
r><pre>error: Invalid path &#39;.git/hooks/pre-commit&#39;<br>error: unable=
 to add .git/hooks/pre-commit to index<br>fatal: adding files failed<br><br=
>and<br><br>error: pathspec &#39;First patch&#39; did not match any file(s)=
 known to git.<br><br>please some one help me out???<br></pre><br></div></b=
lockquote><div>=C2=A0Hey I too am a newbie, I added the printk statement by=
 following kernelnewbies.org, i then ran the following:<br>1.make &#39;make=
 drivers/net/ethernet/intel/e1000/<br>2.sudo make install drivers/net/ether=
net/intel/e1000/<br><br>On rebooting I got FATAL: Could not load /lib/modul=
es/4.5.0-rc3+/modules.dep: No such file or directory.<br>Is there somewhere=
 that I might be going wrong?<br>Did your steps differ from mine? If yes, p=
lease let me know what you did differently.<br>Thanks!<br></div></div>
------=_Part_1279_391380785.1470071627777--

------=_Part_1278_1165877058.1470071627777--

