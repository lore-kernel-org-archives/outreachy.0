X-GM-THRID: 6748157701463736320
Date: Thu, 17 Oct 2019 19:10:56 -0700 (PDT)
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <eccf2356-0c36-4ef5-b948-6468a4978779@googlegroups.com>
In-Reply-To: <bd1a6b45-291e-4cc2-aef8-7d880351bac3@googlegroups.com>
References: <d504514a-93eb-4a60-a99c-8a50bce81677@googlegroups.com>
 <alpine.DEB.2.21.1910160701150.2732@hadrien>
 <bd1a6b45-291e-4cc2-aef8-7d880351bac3@googlegroups.com>
Subject: Re: [Outreachy kernel] doubt on the "Make a driver change" part
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_570_1388058862.1571364656846"
X-Google-Token: ELC-pO0FvHDG-gufkyg0
X-Google-IP: 131.100.148.220

------=_Part_570_1388058862.1571364656846
Content-Type: multipart/alternative; 
	boundary="----=_Part_571_1546709819.1571364656847"

------=_Part_571_1546709819.1571364656847
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



I managed to fix it. The problem was in the reboot.



Em quarta-feira, 16 de outubro de 2019 21:42:43 UTC-3, Cristiane Naves 
escreveu:
>
> Hello, thanks for answering! 
> I am using a module that is listed in lsmod. 
> I think the problem may be in my git/kernels/staging's .config 
> First I pass the running kernel settings to .config using cp/boot/config-4.15.0-65-generic .config, 
> but after running make menuconfig or sudo make -j4, the .config version is subscribed to by a kernel other 
> than the running kernel(5.4.0) and appears in the header of .config: # Linux / x86 header 5.4.0-rc1 Kernel Configuration
>
> Could the problem be in .config?
>
>
>
> Em quarta-feira, 16 de outubro de 2019 02:02:37 UTC-3, Julia Lawall 
> escreveu:
>>
>>
>>
>> On Tue, 15 Oct 2019, Cristiane Naves wrote: 
>>
>> > 
>> > Hello, I have a question in one part of the tutorial and I am unable to 
>> access outreachy irc. 
>> > 
>> > I'm stuck in the "Make a driver change" part of the tutorial. 
>> > I am following these steps: 
>> > First I check the file path using git grep memstick -- '* Makefile'. 
>> > Then I access the file using vim drivers/memstick/core/ms_block.c. 
>> > Then I add printk(KERN_DEBUG "I can modify") to the msb_probe function. 
>> > Then I compile the changes using sudo make -j4 and then install the 
>> changes using sudo make modules_install install. 
>> > Finally i restart my computer and i check if the text "I can modify" is 
>> present in dmesg | less using "/I can modify". 
>> > But every time I've tried this or something, it always gives Pattern 
>> not found (press return). 
>> > Has anyone else had a similar problem and can help me? 
>>
>> Maybe you don't actually use the module you changed.  You can check 
>> lsmod. 
>> Here is a random URL that explains the module related commands: 
>>
>> http://edoceo.com/howto/kernel-modules 
>>
>> julia 
>>
>> > 
>> > And Can anyone help me access outreachy IRC? I 'm not getting access. 
>> > 
>> > -- 
>> > You received this message because you are subscribed to the Google 
>> Groups "outreachy-kernel" group. 
>> > To unsubscribe from this group and stop receiving emails from it, send 
>> an email to outreach...@googlegroups.com. 
>> > To view this discussion on the web visit 
>> https://groups.google.com/d/msgid/outreachy-kernel/d504514a-93eb-4a60-a99c-8a50bce81677%40googlegroups.com. 
>>
>> > 
>> > 
>>
>
------=_Part_571_1546709819.1571364656847
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"tw-ta-container tw-nfl" id=3D"tw-target-text=
-container"><pre class=3D"tw-data-text tw-text-large tw-ta" data-placeholde=
r=3D"Tradu=C3=A7=C3=A3o" id=3D"tw-target-text" style=3D"text-align:left" di=
r=3D"ltr"><span tabindex=3D"0" lang=3D"en">I managed to fix it. The problem=
 was in the reboot.</span></pre></div><br><br>Em quarta-feira, 16 de outubr=
o de 2019 21:42:43 UTC-3, Cristiane Naves  escreveu:<blockquote class=3D"gm=
ail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc soli=
d;padding-left: 1ex;"><div dir=3D"ltr"><pre style=3D"text-align:left" dir=
=3D"ltr"><span lang=3D"en">Hello, thanks for answering! <br>I am using a mo=
dule that is listed in lsmod. <br>I think the problem may be in my git/kern=
els/staging&#39;s .config <br>First I pass the running kernel settings to .=
config using cp/boot/config-4.15.0-65-<wbr>generic .config, <br>but after r=
unning make menuconfig or sudo make -j4, the .config version is subscribed =
to by a kernel other <br>than the running kernel(5.4.0) and appears in the =
header of .config: # Linux / x86 header 5.4.0-rc1 Kernel Configuration

Could the problem be in .config?</span></pre><br><br>Em quarta-feira, 16 de=
 outubro de 2019 02:02:37 UTC-3, Julia Lawall  escreveu:<blockquote class=
=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc s=
olid;padding-left:1ex">
<br>
<br>On Tue, 15 Oct 2019, Cristiane Naves wrote:
<br>
<br>&gt;
<br>&gt; Hello, I have a question in one part of the tutorial and I am unab=
le to access outreachy irc.
<br>&gt;
<br>&gt; I&#39;m stuck in the &quot;Make a driver change&quot; part of the =
tutorial.
<br>&gt; I am following these steps:
<br>&gt; First I check the file path using git grep memstick -- &#39;* Make=
file&#39;.
<br>&gt; Then I access the file using vim drivers/memstick/core/ms_<wbr>blo=
ck.c.
<br>&gt; Then I add printk(KERN_DEBUG &quot;I can modify&quot;) to the msb_=
probe function.
<br>&gt; Then I compile the changes using sudo make -j4 and then install th=
e changes using sudo make modules_install install.
<br>&gt; Finally i restart my computer and i check if the text &quot;I can =
modify&quot; is present in dmesg | less using &quot;/I can modify&quot;.
<br>&gt; But every time I&#39;ve tried this or something, it always gives P=
attern not found (press return).
<br>&gt; Has anyone else had a similar problem and can help me?
<br>
<br>Maybe you don&#39;t actually use the module you changed. =C2=A0You can =
check lsmod.
<br>Here is a random URL that explains the module related commands:
<br>
<br><a href=3D"http://edoceo.com/howto/kernel-modules" rel=3D"nofollow" tar=
get=3D"_blank" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\=
x3dhttp%3A%2F%2Fedoceo.com%2Fhowto%2Fkernel-modules\x26sa\x3dD\x26sntz\x3d1=
\x26usg\x3dAFQjCNGE1TXxQO-HTVxcJM1osjvn6rKt-g&#39;;return true;" onclick=3D=
"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fedoceo.com%2F=
howto%2Fkernel-modules\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGE1TXxQO-HTV=
xcJM1osjvn6rKt-g&#39;;return true;">http://edoceo.com/howto/<wbr>kernel-mod=
ules</a>
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; And Can anyone help me access outreachy IRC? I &#39;m not getting =
access.
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a rel=3D"nofollow">outreach...@googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/d504514a-93eb-4a60-a99c-8a50bce81677%4=
0googlegroups.com" rel=3D"nofollow" target=3D"_blank" onmousedown=3D"this.h=
ref=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/d504514a-93eb=
-4a60-a99c-8a50bce81677%40googlegroups.com&#39;;return true;" onclick=3D"th=
is.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/d504514a-=
93eb-4a60-a99c-8a50bce81677%40googlegroups.com&#39;;return true;">https://g=
roups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>d504514a-93eb-4a60-a99c=
-<wbr>8a50bce81677%40googlegroups.<wbr>com</a>.
<br>&gt;
<br>&gt;
<br></blockquote></div></blockquote></div>
------=_Part_571_1546709819.1571364656847--

------=_Part_570_1388058862.1571364656846--

