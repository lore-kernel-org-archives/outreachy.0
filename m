X-GM-THRID: 6311696550049349632
Date: Tue, 26 Jul 2016 20:19:00 -0700 (PDT)
From: courage angeh <courageangeh@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: courageangeh@gmail.com, linux-newbie@vger.kernel.org
Message-Id: <3c9a93d6-25e0-41ee-bb58-2b29a800200c@googlegroups.com>
In-Reply-To: <20160726194613.GA14874@d830.WORKGROUP>
References: <64c3385b-6ee7-44ac-bb17-e265d5f9ade8@googlegroups.com>
 <20160726194613.GA14874@d830.WORKGROUP>
Subject: Re: [Outreachy kernel] commiting the .git/hooks/pre-commit and
 testing the changes on the updated e1000_main.c
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5237_1407707031.1469589541050"
X-Google-Token: EKTQ4LwFjATrxPGsfps0
X-Google-IP: 41.244.234.16

------=_Part_5237_1407707031.1469589541050
Content-Type: multipart/alternative; 
	boundary="----=_Part_5238_154123064.1469589541051"

------=_Part_5238_154123064.1469589541051
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, July 26, 2016 at 8:46:17 PM UTC+1, Alison Schofield wrote:
>
> Hi Courage ? ;) 
> I'll help you.  I'm an outreachy intern now. 
>
> We need to move this thread over to linux-newbie mailing list, since 
> this outreachy list won't be active until the next application round. 
> Please 'cc linux-newbie on posts as I've done above. 
>
> See comments in line below. 
> alisons 
>
>
> On Tue, Jul 26, 2016 at 11:06:10AM -0700, courage angeh wrote: 
> > I am a newbie... just start recently preparing for the out reach program 
> in 
> > December.... i started at: https://kernelnewbies.org/Outreachyfirstpatch 
> > but i have a number of difficulties: 
> > 1. After editx... ,  recompiling my driver, installing the changes and 
> > rebooting my linux system . I tested the changes but i didn't find the 
> > message " I can modify the Linux kernel!".... i contacted the irc 
> > channel:#kernel-outreachy but i seemed not to exist. 
>
> Let's go step by step. 
>
> Let's make sure you put in a printk that will get printed. 
> Let's make sure you've compiled the module. 
>
> Confirm you compiled the module...do you see a .ko with new timestamp? 
>
> Can you sudo modprobe <drivername> ? 
> Or sudo insmod drivername.ko ? 
>
> (at this point you don't need to keep rebooting the kernel.  We will 
> modprobe add/remove your driver.) 
>
> post what you have on the above items and I'll take a look. 
>

Thanks for the reply. 
I did run the command but no output. i got an idea but i don't know if its 
right
i actually edited but the diver file in a folder in my work directory  not 
the driver file in my OS 
kernel...:/home/courage/git/kernels/staging/drivers/net/ethernet/intel/e1000


while the r other instances of this driver in my computer:
/lib/modules/3.13.0-32-generic/kernel/drivers/net/ethernet/intel/e1000
/lib/modules/4.7.0-rc6+/kernel/drivers/net/ethernet/intel/e1000
/usr/src/linux-headers-3.13.0-32/drivers/net/ethernet/intel/e1000
/usr/src/linux-headers-3.13.0-24/drivers/net/ethernet/intel/e1000

 

>
> > 2. i went ahead to creating the .git/hooks/pre-commit but when i try 
> > staging and commiting the file i get the respective errors: 
> > 
> > error: Invalid path '.git/hooks/pre-commit' 
> > error: unable to add .git/hooks/pre-commit to index 
> > fatal: adding files failed 
> > 
> > and 
> > 
> > error: pathspec 'First patch' did not match any file(s) known to git. 
> > 
> > please some one help me out??? 
>
> You are not submitted that pre-commit hooks file.  It lives in your 
> git tree to poke you went you make a submittal. 
>
> > 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/64c3385b-6ee7-44ac-bb17-e265d5f9ade8%40googlegroups.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
>
>
------=_Part_5238_154123064.1469589541051
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, July 26, 2016 at 8:46:17 PM UTC+1, Ali=
son Schofield wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;ma=
rgin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Hi Courage=
 ? ;)
<br>I&#39;ll help you. =C2=A0I&#39;m an outreachy intern now.=20
<br>
<br>We need to move this thread over to linux-newbie mailing list, since
<br>this outreachy list won&#39;t be active until the next application roun=
d.
<br>Please &#39;cc linux-newbie on posts as I&#39;ve done above.
<br>
<br>See comments in line below.
<br>alisons
<br>
<br>
<br>On Tue, Jul 26, 2016 at 11:06:10AM -0700, courage angeh wrote:
<br>&gt; I am a newbie... just start recently preparing for the out reach p=
rogram in=20
<br>&gt; December.... i started at: <a href=3D"https://kernelnewbies.org/Ou=
treachyfirstpatch" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.h=
ref=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fkernelnewbies.org%=
2FOutreachyfirstpatch\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEARR3yHMZoXvO=
aBsXxPWzyoOSw9Q&#39;;return true;" onclick=3D"this.href=3D&#39;https://www.=
google.com/url?q\x3dhttps%3A%2F%2Fkernelnewbies.org%2FOutreachyfirstpatch\x=
26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEARR3yHMZoXvOaBsXxPWzyoOSw9Q&#39;;re=
turn true;">https://kernelnewbies.org/<wbr>Outreachyfirstpatch</a>=20
<br>&gt; but i have a number of difficulties:
<br>&gt; 1. After editx... , =C2=A0recompiling my driver, installing the ch=
anges and=20
<br>&gt; rebooting my linux system . I tested the changes but i didn&#39;t =
find the=20
<br>&gt; message &quot; I can modify the Linux kernel!&quot;.... i contacte=
d the irc=20
<br>&gt; channel:#kernel-outreachy but i seemed not to exist.
<br>
<br>Let&#39;s go step by step.=20
<br>
<br>Let&#39;s make sure you put in a printk that will get printed.
<br>Let&#39;s make sure you&#39;ve compiled the module.
<br>
<br>Confirm you compiled the module...do you see a .ko with new timestamp?
<br>
<br>Can you sudo modprobe &lt;drivername&gt; ?
<br>Or sudo insmod drivername.ko ?
<br>
<br>(at this point you don&#39;t need to keep rebooting the kernel. =C2=A0W=
e will
<br>modprobe add/remove your driver.)
<br>
<br>post what you have on the above items and I&#39;ll take a look.
<br></blockquote><div><br>Thanks for the reply. <br>I did run the command b=
ut no output. i got an idea but i don&#39;t know if its right<br>i actually=
 edited but the diver file in a folder in my work directory=C2=A0 not the d=
river file in my OS kernel...:/home/courage/git/kernels/staging/drivers/net=
/ethernet/intel/e1000<br><br><br>while the r other instances of this driver=
 in my computer:<br>/lib/modules/3.13.0-32-generic/kernel/drivers/net/ether=
net/intel/e1000<br>/lib/modules/4.7.0-rc6+/kernel/drivers/net/ethernet/inte=
l/e1000<br>/usr/src/linux-headers-3.13.0-32/drivers/net/ethernet/intel/e100=
0<br>/usr/src/linux-headers-3.13.0-24/drivers/net/ethernet/intel/e1000<br><=
br>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-=
left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>&gt; 2. i went ahead to creating the .git/hooks/pre-commit but when i t=
ry=20
<br>&gt; staging and commiting the file i get the respective errors:
<br>&gt;=20
<br>&gt; error: Invalid path &#39;.git/hooks/pre-commit&#39;
<br>&gt; error: unable to add .git/hooks/pre-commit to index
<br>&gt; fatal: adding files failed
<br>&gt;=20
<br>&gt; and
<br>&gt;=20
<br>&gt; error: pathspec &#39;First patch&#39; did not match any file(s) kn=
own to git.
<br>&gt;=20
<br>&gt; please some one help me out???
<br>
<br>You are not submitted that pre-commit hooks file. =C2=A0It lives in you=
r
<br>git tree to poke you went you make a submittal.
<br>
<br>&gt;=20
<br>&gt;=20
<br>&gt; --=20
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"0cF0LoTlAwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"0cF0LoTlAwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/64c3385b-6ee7-44ac-bb17-e265d5f9ade8%4=
0googlegroups.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.h=
ref=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/64c3385b-6ee7=
-44ac-bb17-e265d5f9ade8%40googlegroups.com&#39;;return true;" onclick=3D"th=
is.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/64c3385b-=
6ee7-44ac-bb17-e265d5f9ade8%40googlegroups.com&#39;;return true;">https://g=
roups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>64c3385b-6ee7-44ac-bb17=
-<wbr>e265d5f9ade8%40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>
<br></blockquote></div>
------=_Part_5238_154123064.1469589541051--

------=_Part_5237_1407707031.1469589541050--

