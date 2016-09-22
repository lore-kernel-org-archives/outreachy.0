X-GM-THRID: 6332661608531099648
Date: Thu, 22 Sep 2016 12:45:14 -0700 (PDT)
From: gnudevliz@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: gnudevliz@gmail.com
Message-Id: <c33bb083-d19f-473c-9f16-92bbd62d4e80@googlegroups.com>
In-Reply-To: <CAK-LDbJdnH_ONEEcCs-yLeEtMN4cYQKD0Jkc4M_TtOTaDpTV0Q@mail.gmail.com>
References: <0eb31ed4-5370-4980-be9d-559b20044bf5@googlegroups.com> <649173d5-38d8-43e3-af3b-a81aab81311d@googlegroups.com>
 <CAK-LDbJdnH_ONEEcCs-yLeEtMN4cYQKD0Jkc4M_TtOTaDpTV0Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Mutt/Gmail Issue
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1710_2028507083.1474573514376"
X-Google-Token: EMrpkL8FrEe7RRBqP_w0
X-Google-IP: 2601:644:300:3c2c:4e0f:6eff:fe69:e9ea

------=_Part_1710_2028507083.1474573514376
Content-Type: multipart/alternative; 
	boundary="----=_Part_1711_1292996608.1474573514376"

------=_Part_1711_1292996608.1474573514376
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hey Vaishali, 

Thanks for your reply. I *finally* figured it out. Hallelujah.
The Debian installation manual specifically says to use exim4 in order to 
set up debian to use e-mail: 
https://www.debian.org/releases/jessie/i386/ch08s05.html.en

I had to closely follow this tutorial in order to finally get it to work: 
https://wiki.debian.org/GmailAndExim4

I also had to fix my /etc/hosts and /etc/hostname file. 

I thought I'd post these in case you're using Debian. 

On Wednesday, September 21, 2016 at 9:47:33 PM UTC-7, Vaishali Thakkar 
wrote:
>
> On Thu, Sep 22, 2016 at 1:18 AM,  <gnud...@gmail.com <javascript:>> 
> wrote: 
> > Hi everyone, 
> > 
> > Thanks for your replies. I've tried many .muttrc config changes and 
> Gmail 
> > setup but I keep getting the same error. 
> > I think I'm supposed to set up a FQDN (Fully Qualified Domain Name). 
> Mutt 
> > keeps telling me there is no HELO/ELHO argument 
>
> I am not sure about this error but usually Mutt fails for me if I use 
> it under firewall, 
> proxy settings or vpn. So, I don't use it anymore. Git send-email 
> works good for me. 
> If you can't figure out the solution of this error and want to go for 
> the git send-email 
> then you can check this blog: 
>
>
> https://burzalodowa.wordpress.com/2013/10/05/how-to-send-patches-with-git-send-email/ 
>
> It just requires to set up .gitconfig. I can share my settings but I 
> think that blog explains 
> almost everything in detail. 
>
> > On Tuesday, September 20, 2016 at 11:01:18 PM UTC-7, gnud...@gmail.com 
> > wrote: 
> >> 
> >> Hello everyone, 
> >> 
> >> I'm on Debian Jessie and I cannot get mutt to send email. I can receive 
> >> emails and view my inbox in Mutt but I can't send messages. I can send 
> them 
> >> to myself though. I can't send them to another email address. 
> >> 
> >> When I use mutt to send an email I keep getting this HELO/ELHO error: 
> >> 
> >> SMTP session failed: 501 5.5.4  https://support.google.com/mail/?p=helo 
> >> yg10sm21072351pab.8 - gsmtp 
> >> 
> >> That brings me to this page: 
> >> 
> >> 
> https://support.google.com/mail/answer/6386757?visit_id=1-636100243312716080-1894628512&p=helo&rd=1 
> >> 
> >> I can't figure out how to resolve this issue. My 2 factor is off and 
> I'm 
> >> allowing login from unsecure apps. I'm also trying to use ssmtp instead 
> of 
> >> esmtp but the same thing happens in mutt. 
> >> 
> >> When i do 
> >> $ sudo ssmtp some...@gmail.com <javascript:> 
> >> 
> >> the email does actually go through though, but it says from root. 
> >> 
> >> If anyone has suggestions I would really appreciate it! 
> >> Thanks, 
> >> Liz 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> > 
> https://groups.google.com/d/msgid/outreachy-kernel/649173d5-38d8-43e3-af3b-a81aab81311d%40googlegroups.com. 
>
> > 
> > For more options, visit https://groups.google.com/d/optout. 
>
>
>
> -- 
> Vaishali 
> http://vaishalithakkar.in/ 
>

------=_Part_1711_1292996608.1474573514376
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Vaishali,=C2=A0<div><br></div><div>Thanks for your rep=
ly. I <i>finally</i> figured it out. Hallelujah.</div><div>The Debian insta=
llation manual specifically says to use exim4 in order to set up debian to =
use e-mail: https://www.debian.org/releases/jessie/i386/ch08s05.html.en</di=
v><div><br></div><div>I had to closely follow this tutorial in order to fin=
ally get it to work: https://wiki.debian.org/GmailAndExim4</div><div><br></=
div><div>I also had to fix my /etc/hosts and /etc/hostname file.=C2=A0</div=
><div><br></div><div>I thought I&#39;d post these in case you&#39;re using =
Debian.=C2=A0</div><div><br></div><div>On Wednesday, September 21, 2016 at =
9:47:33 PM UTC-7, Vaishali Thakkar wrote:<blockquote class=3D"gmail_quote" =
style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-l=
eft: 1ex;">On Thu, Sep 22, 2016 at 1:18 AM, =C2=A0&lt;<a href=3D"javascript=
:" target=3D"_blank" gdf-obfuscated-mailto=3D"F7n736P0CQAJ" rel=3D"nofollow=
" onmousedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D=
"this.href=3D&#39;javascript:&#39;;return true;">gnud...@gmail.com</a>&gt; =
wrote:
<br>&gt; Hi everyone,
<br>&gt;
<br>&gt; Thanks for your replies. I&#39;ve tried many .muttrc config change=
s and Gmail
<br>&gt; setup but I keep getting the same error.
<br>&gt; I think I&#39;m supposed to set up a FQDN (Fully Qualified Domain =
Name). Mutt
<br>&gt; keeps telling me there is no HELO/ELHO argument
<br>
<br>I am not sure about this error but usually Mutt fails for me if I use
<br>it under firewall,
<br>proxy settings or vpn. So, I don&#39;t use it anymore. Git send-email
<br>works good for me.
<br>If you can&#39;t figure out the solution of this error and want to go f=
or
<br>the git send-email
<br>then you can check this blog:
<br>
<br><a href=3D"https://burzalodowa.wordpress.com/2013/10/05/how-to-send-pat=
ches-with-git-send-email/" target=3D"_blank" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fburzalod=
owa.wordpress.com%2F2013%2F10%2F05%2Fhow-to-send-patches-with-git-send-emai=
l%2F\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNH8gbjPvfLYHiyC3yX_DnKwtU_2AQ&#=
39;;return true;" onclick=3D"this.href=3D&#39;https://www.google.com/url?q\=
x3dhttps%3A%2F%2Fburzalodowa.wordpress.com%2F2013%2F10%2F05%2Fhow-to-send-p=
atches-with-git-send-email%2F\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNH8gbj=
PvfLYHiyC3yX_DnKwtU_2AQ&#39;;return true;">https://burzalodowa.wordpress.<w=
br>com/2013/10/05/how-to-send-<wbr>patches-with-git-send-email/</a>
<br>
<br>It just requires to set up .gitconfig. I can share my settings but I
<br>think that blog explains
<br>almost everything in detail.
<br>
<br>&gt; On Tuesday, September 20, 2016 at 11:01:18 PM UTC-7, <a>gnud...@gm=
ail.com</a>
<br>&gt; wrote:
<br>&gt;&gt;
<br>&gt;&gt; Hello everyone,
<br>&gt;&gt;
<br>&gt;&gt; I&#39;m on Debian Jessie and I cannot get mutt to send email. =
I can receive
<br>&gt;&gt; emails and view my inbox in Mutt but I can&#39;t send messages=
. I can send them
<br>&gt;&gt; to myself though. I can&#39;t send them to another email addre=
ss.
<br>&gt;&gt;
<br>&gt;&gt; When I use mutt to send an email I keep getting this HELO/ELHO=
 error:
<br>&gt;&gt;
<br>&gt;&gt; SMTP session failed: 501 5.5.4 =C2=A0<a href=3D"https://suppor=
t.google.com/mail/?p=3Dhelo" target=3D"_blank" onmousedown=3D"this.href=3D&=
#39;https://support.google.com/mail/?p\x3dhelo&#39;;return true;" onclick=
=3D"this.href=3D&#39;https://support.google.com/mail/?p\x3dhelo&#39;;return=
 true;">https://support.google.com/<wbr>mail/?p=3Dhelo</a>
<br>&gt;&gt; yg10sm21072351pab.8 - gsmtp
<br>&gt;&gt;
<br>&gt;&gt; That brings me to this page:
<br>&gt;&gt;
<br>&gt;&gt; <a href=3D"https://support.google.com/mail/answer/6386757?visi=
t_id=3D1-636100243312716080-1894628512&amp;p=3Dhelo&amp;rd=3D1" target=3D"_=
blank" onmousedown=3D"this.href=3D&#39;https://support.google.com/mail/answ=
er/6386757?visit_id\x3d1-636100243312716080-1894628512\x26p\x3dhelo\x26rd\x=
3d1&#39;;return true;" onclick=3D"this.href=3D&#39;https://support.google.c=
om/mail/answer/6386757?visit_id\x3d1-636100243312716080-1894628512\x26p\x3d=
helo\x26rd\x3d1&#39;;return true;">https://support.google.com/<wbr>mail/ans=
wer/6386757?visit_id=3D<wbr>1-636100243312716080-<wbr>1894628512&amp;p=3Dhe=
lo&amp;rd=3D1</a>
<br>&gt;&gt;
<br>&gt;&gt; I can&#39;t figure out how to resolve this issue. My 2 factor =
is off and I&#39;m
<br>&gt;&gt; allowing login from unsecure apps. I&#39;m also trying to use =
ssmtp instead of
<br>&gt;&gt; esmtp but the same thing happens in mutt.
<br>&gt;&gt;
<br>&gt;&gt; When i do
<br>&gt;&gt; $ sudo ssmtp <a href=3D"javascript:" target=3D"_blank" gdf-obf=
uscated-mailto=3D"F7n736P0CQAJ" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascri=
pt:&#39;;return true;">some...@gmail.com</a>
<br>&gt;&gt;
<br>&gt;&gt; the email does actually go through though, but it says from ro=
ot.
<br>&gt;&gt;
<br>&gt;&gt; If anyone has suggestions I would really appreciate it!
<br>&gt;&gt; Thanks,
<br>&gt;&gt; Liz
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"F7n736P0CQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ja=
vascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;r=
eturn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"F7n736P0CQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit
<br>&gt; <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel/6491=
73d5-38d8-43e3-af3b-a81aab81311d%40googlegroups.com" target=3D"_blank" rel=
=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://groups.google.com/d/m=
sgid/outreachy-kernel/649173d5-38d8-43e3-af3b-a81aab81311d%40googlegroups.c=
om&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups.google.com=
/d/msgid/outreachy-kernel/649173d5-38d8-43e3-af3b-a81aab81311d%40googlegrou=
ps.com&#39;;return true;">https://groups.google.com/d/<wbr>msgid/outreachy-=
kernel/<wbr>649173d5-38d8-43e3-af3b-<wbr>a81aab81311d%40googlegroups.<wbr>c=
om</a>.
<br>&gt;
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>
<br>
<br>
<br>--=20
<br>Vaishali
<br><a href=3D"http://vaishalithakkar.in/" target=3D"_blank" rel=3D"nofollo=
w" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2=
F%2Fvaishalithakkar.in%2F\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFTQCErjwj=
agpBB3EQj7EkZcNBoOw&#39;;return true;" onclick=3D"this.href=3D&#39;http://w=
ww.google.com/url?q\x3dhttp%3A%2F%2Fvaishalithakkar.in%2F\x26sa\x3dD\x26snt=
z\x3d1\x26usg\x3dAFQjCNFTQCErjwjagpBB3EQj7EkZcNBoOw&#39;;return true;">http=
://vaishalithakkar.in/</a>
<br></blockquote></div></div>
------=_Part_1711_1292996608.1474573514376--

------=_Part_1710_2028507083.1474573514376--

