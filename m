X-GM-THRID: 6332661608531099648
Date: Thu, 22 Sep 2016 14:32:50 -0700 (PDT)
From: gnudevliz@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: gnudevliz@gmail.com
Message-Id: <430fddd4-6caa-41ce-8632-02cafb80e6da@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1609222232450.3188@hadrien>
References: <0eb31ed4-5370-4980-be9d-559b20044bf5@googlegroups.com> <649173d5-38d8-43e3-af3b-a81aab81311d@googlegroups.com> <CAK-LDbJdnH_ONEEcCs-yLeEtMN4cYQKD0Jkc4M_TtOTaDpTV0Q@mail.gmail.com> <c33bb083-d19f-473c-9f16-92bbd62d4e80@googlegroups.com>
 <alpine.DEB.2.10.1609222232450.3188@hadrien>
Subject: Re: [Outreachy kernel] Re: Mutt/Gmail Issue
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1703_705566557.1474579970151"
X-Google-Token: EIKckb8F6fnqKTh6SmI0
X-Google-IP: 2601:644:300:3c2c:4e0f:6eff:fe69:e9ea

------=_Part_1703_705566557.1474579970151
Content-Type: multipart/alternative; 
	boundary="----=_Part_1704_1037854059.1474579970151"

------=_Part_1704_1037854059.1474579970151
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hey Julia, 

I ended up doing a lot of things in order for it to work and I don't know 
which ones are totally necessary. My issue is specific to Debian/Gmail/Mutt 
so this won't apply to everyone. But I have a feeling that the HELO/ELHO 
error occurred because I did not have a domain configured. I had:

$ hostname 
localhost 
$ domainname 
(none)

so I ended up changing my /etc/hosts and /etc/hostname file. 

My /etc/hostname just says hostname1

My /etc/hosts has 2 lines that say:

127.0.0.1 localhost
127.0.1.1 hostname1.localdomain hostname1

Then run 

$ sudo /etc/init.d/hostname.sh start 
$ sudo reboot

verify changes with 
$ hostname
hostname1
$ hostname -d 
localdomain

I think that suffices for a "FQDN" Fully Qualified Domain Name. 

$ sudo apt-get update
$ sudo apt-get install exim4

After that I followed this tutorial 
exactly: https://wiki.debian.org/GmailAndExim4

It explains exactly what to put for each menu entry when you run 
$ sudo dpkg-reconfigure exim4-config

After that, mutt will send emails! 

Since this is such a specific case, maybe it can go on some FAQ or 
Troubleshooting page??
 
Sincerely,
Liz

On Thursday, September 22, 2016 at 1:33:11 PM UTC-7, Julia Lawall wrote:
>
>
>
> On Thu, 22 Sep 2016, gnud...@gmail.com <javascript:> wrote: 
>
> > Hey Vaishali,  
> > Thanks for your reply. I finally figured it out. Hallelujah. 
> > The Debian installation manual specifically says to use exim4 in order 
> to 
> > set up debian to use e-mail: 
> > https://www.debian.org/releases/jessie/i386/ch08s05.html.en 
> > 
> > I had to closely follow this tutorial in order to finally get it to 
> work: 
> > https://wiki.debian.org/GmailAndExim4 
> > 
> > I also had to fix my /etc/hosts and /etc/hostname file.  
> > 
> > I thought I'd post these in case you're using Debian.  
>
> Do you want me to add anything to the tutorial? 
>
> julia 
>
>
> > 
> > On Wednesday, September 21, 2016 at 9:47:33 PM UTC-7, Vaishali Thakkar 
> > wrote: 
> >       On Thu, Sep 22, 2016 at 1:18 AM,  <gnud...@gmail.com> wrote: 
> >       > Hi everyone, 
> >       > 
> >       > Thanks for your replies. I've tried many .muttrc config 
> >       changes and Gmail 
> >       > setup but I keep getting the same error. 
> >       > I think I'm supposed to set up a FQDN (Fully Qualified Domain 
> >       Name). Mutt 
> >       > keeps telling me there is no HELO/ELHO argument 
> > 
> >       I am not sure about this error but usually Mutt fails for me if 
> >       I use 
> >       it under firewall, 
> >       proxy settings or vpn. So, I don't use it anymore. Git 
> >       send-email 
> >       works good for me. 
> >       If you can't figure out the solution of this error and want to 
> >       go for 
> >       the git send-email 
> >       then you can check this blog: 
> > 
> > 
> https://burzalodowa.wordpress.com/2013/10/05/how-to-send-patches-with-git-s 
> >       end-email/ 
> > 
> >       It just requires to set up .gitconfig. I can share my settings 
> >       but I 
> >       think that blog explains 
> >       almost everything in detail. 
> > 
> >       > On Tuesday, September 20, 2016 at 11:01:18 PM UTC-7, 
> >       gnud...@gmail.com 
> >       > wrote: 
> >       >> 
> >       >> Hello everyone, 
> >       >> 
> >       >> I'm on Debian Jessie and I cannot get mutt to send email. I 
> >       can receive 
> >       >> emails and view my inbox in Mutt but I can't send messages. I 
> >       can send them 
> >       >> to myself though. I can't send them to another email address. 
> >       >> 
> >       >> When I use mutt to send an email I keep getting this 
> >       HELO/ELHO error: 
> >       >> 
> >       >> SMTP session failed: 501 5.5.4 
> >        https://support.google.com/mail/?p=helo 
> >       >> yg10sm21072351pab.8 - gsmtp 
> >       >> 
> >       >> That brings me to this page: 
> >       >> 
> >       >>
> https://support.google.com/mail/answer/6386757?visit_id=1-63610024331271608 
> >       0-1894628512&p=helo&rd=1 
> >       >> 
> >       >> I can't figure out how to resolve this issue. My 2 factor is 
> >       off and I'm 
> >       >> allowing login from unsecure apps. I'm also trying to use 
> >       ssmtp instead of 
> >       >> esmtp but the same thing happens in mutt. 
> >       >> 
> >       >> When i do 
> >       >> $ sudo ssmtp some...@gmail.com 
> >       >> 
> >       >> the email does actually go through though, but it says from 
> >       root. 
> >       >> 
> >       >> If anyone has suggestions I would really appreciate it! 
> >       >> Thanks, 
> >       >> Liz 
> >       > 
> >       > -- 
> >       > You received this message because you are subscribed to the 
> >       Google Groups 
> >       > "outreachy-kernel" group. 
> >       > To unsubscribe from this group and stop receiving emails from 
> >       it, send an 
> >       > email to outreachy-kern...@googlegroups.com. 
> >       > To post to this group, send email to 
> >       outreach...@googlegroups.com. 
> >       > To view this discussion on the web visit 
> >       >
> https://groups.google.com/d/msgid/outreachy-kernel/649173d5-38d8-43e3-af3b- 
> >       a81aab81311d%40googlegroups.com. 
> >       > 
> >       > For more options, visit https://groups.google.com/d/optout. 
> > 
> > 
> > 
> >       -- 
> >       Vaishali 
> >       http://vaishalithakkar.in/ 
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
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/c33bb083-d19f-473c-9f16- 
> > 92bbd62d4e80%40googlegroups.com. 
> > For more options, visit https://groups.google.com/d/optout. 
> > 
> >


------=_Part_1704_1037854059.1474579970151
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Julia,=C2=A0<div><br></div><div>I ended up doing a lot=
 of things in order for it to work and I don&#39;t know which ones are tota=
lly necessary. My issue is specific to Debian/Gmail/Mutt so this won&#39;t =
apply to everyone. But I have a feeling that the HELO/ELHO error occurred b=
ecause I did not have a domain configured. I had:</div><div><br></div><div>=
$ hostname=C2=A0</div><div>localhost=C2=A0</div><div>$ domainname=C2=A0</di=
v><div>(none)</div><div><br></div><div>so I ended up changing my /etc/hosts=
 and /etc/hostname file.=C2=A0</div><div><br></div><div>My /etc/hostname ju=
st says hostname1</div><div><br></div><div>My /etc/hosts has 2 lines that s=
ay:</div><div><br></div><div>127.0.0.1 localhost</div><div>127.0.1.1 hostna=
me1.localdomain hostname1</div><div><br></div><div>Then run=C2=A0</div><div=
><br></div><div>$ sudo /etc/init.d/hostname.sh start=C2=A0</div><div>$ sudo=
 reboot</div><div><br></div><div>verify changes with=C2=A0</div><div>$ host=
name</div><div>hostname1</div><div>$ hostname -d=C2=A0</div><div>localdomai=
n</div><div><br></div><div>I think that suffices for a &quot;FQDN&quot; Ful=
ly Qualified Domain Name.=C2=A0</div><div><br></div><div>$ sudo apt-get upd=
ate</div><div>$ sudo apt-get install exim4</div><div><br></div><div>After t=
hat I followed this tutorial exactly:=C2=A0https://wiki.debian.org/GmailAnd=
Exim4</div><div><span style=3D"background-color: rgb(245, 246, 247); color:=
 black;"><br></span></div><div><span style=3D"background-color: rgb(245, 24=
6, 247); color: black;">It explains exactly what to put for each menu entry=
 when you run=C2=A0</span></div><div><span style=3D"background-color: rgb(2=
45, 246, 247); color: black;">$ sudo dpkg-reconfigure exim4-config</span></=
div><div><br></div><div><font color=3D"#000000"><span style=3D"background-c=
olor: rgb(245, 246, 247);">After that, mutt will send emails!=C2=A0</span><=
/font></div><div><font color=3D"#000000"><span style=3D"background-color: r=
gb(245, 246, 247);"><br></span></font></div><div><font color=3D"#000000"><s=
pan style=3D"background-color: rgb(245, 246, 247);">Since this is such a sp=
ecific case, maybe it can go on some FAQ or Troubleshooting page??</span></=
font></div><div><font color=3D"#000000"><span style=3D"background-color: rg=
b(245, 246, 247);">=C2=A0</span></font></div><div>Sincerely,</div><div>Liz<=
/div><div><br>On Thursday, September 22, 2016 at 1:33:11 PM UTC-7, Julia La=
wall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left=
: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Thu, 22 Sep 2016, <a href=3D"javascript:" target=3D"_blank" gdf-obfu=
scated-mailto=3D"OtGFEz4oCgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D=
&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:=
&#39;;return true;">gnud...@gmail.com</a> wrote:
<br>
<br>&gt; Hey Vaishali,=C2=A0
<br>&gt; Thanks for your reply. I finally figured it out. Hallelujah.
<br>&gt; The Debian installation manual specifically says to use exim4 in o=
rder to
<br>&gt; set up debian to use e-mail:
<br>&gt; <a href=3D"https://www.debian.org/releases/jessie/i386/ch08s05.htm=
l.en" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ht=
tps://www.google.com/url?q\x3dhttps%3A%2F%2Fwww.debian.org%2Freleases%2Fjes=
sie%2Fi386%2Fch08s05.html.en\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGDYfCY=
5v33N_P1WUu7y-OitBfwwA&#39;;return true;" onclick=3D"this.href=3D&#39;https=
://www.google.com/url?q\x3dhttps%3A%2F%2Fwww.debian.org%2Freleases%2Fjessie=
%2Fi386%2Fch08s05.html.en\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGDYfCY5v3=
3N_P1WUu7y-OitBfwwA&#39;;return true;">https://www.debian.org/<wbr>releases=
/jessie/i386/ch08s05.<wbr>html.en</a>
<br>&gt;
<br>&gt; I had to closely follow this tutorial in order to finally get it t=
o work:
<br>&gt; <a href=3D"https://wiki.debian.org/GmailAndExim4" target=3D"_blank=
" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://www.google.com/u=
rl?q\x3dhttps%3A%2F%2Fwiki.debian.org%2FGmailAndExim4\x26sa\x3dD\x26sntz\x3=
d1\x26usg\x3dAFQjCNF5DckO70kz2WhLHC9nKRYBEsReHg&#39;;return true;" onclick=
=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fwiki.deb=
ian.org%2FGmailAndExim4\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNF5DckO70kz2=
WhLHC9nKRYBEsReHg&#39;;return true;">https://wiki.debian.org/<wbr>GmailAndE=
xim4</a>
<br>&gt;
<br>&gt; I also had to fix my /etc/hosts and /etc/hostname file.=C2=A0
<br>&gt;
<br>&gt; I thought I&#39;d post these in case you&#39;re using Debian.=C2=
=A0
<br>
<br>Do you want me to add anything to the tutorial?
<br>
<br>julia
<br>
<br>
<br>&gt;
<br>&gt; On Wednesday, September 21, 2016 at 9:47:33 PM UTC-7, Vaishali Tha=
kkar
<br>&gt; wrote:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 On Thu, Sep 22, 2016 at 1:18 AM, =C2=A0&lt;<a=
>gnud...@gmail.com</a>&gt; wrote:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Hi everyone,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Thanks for your replies. I&#39;ve tried =
many .muttrc config
<br>&gt; =C2=A0 =C2=A0 =C2=A0 changes and Gmail
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; setup but I keep getting the same error.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; I think I&#39;m supposed to set up a FQD=
N (Fully Qualified Domain
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Name). Mutt
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; keeps telling me there is no HELO/ELHO a=
rgument
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 I am not sure about this error but usually Mu=
tt fails for me if
<br>&gt; =C2=A0 =C2=A0 =C2=A0 I use
<br>&gt; =C2=A0 =C2=A0 =C2=A0 it under firewall,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 proxy settings or vpn. So, I don&#39;t use it=
 anymore. Git
<br>&gt; =C2=A0 =C2=A0 =C2=A0 send-email
<br>&gt; =C2=A0 =C2=A0 =C2=A0 works good for me.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 If you can&#39;t figure out the solution of t=
his error and want to
<br>&gt; =C2=A0 =C2=A0 =C2=A0 go for
<br>&gt; =C2=A0 =C2=A0 =C2=A0 the git send-email
<br>&gt; =C2=A0 =C2=A0 =C2=A0 then you can check this blog:
<br>&gt;
<br>&gt; <a href=3D"https://burzalodowa.wordpress.com/2013/10/05/how-to-sen=
d-patches-with-git-s" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"thi=
s.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fburzalodowa.wor=
dpress.com%2F2013%2F10%2F05%2Fhow-to-send-patches-with-git-s\x26sa\x3dD\x26=
sntz\x3d1\x26usg\x3dAFQjCNEDQUA3i-Qh832hU66D0mnKE5kc5g&#39;;return true;" o=
nclick=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fbu=
rzalodowa.wordpress.com%2F2013%2F10%2F05%2Fhow-to-send-patches-with-git-s\x=
26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEDQUA3i-Qh832hU66D0mnKE5kc5g&#39;;re=
turn true;">https://burzalodowa.wordpress.<wbr>com/2013/10/05/how-to-send-<=
wbr>patches-with-git-s</a>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 end-email/
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 It just requires to set up .gitconfig. I can =
share my settings
<br>&gt; =C2=A0 =C2=A0 =C2=A0 but I
<br>&gt; =C2=A0 =C2=A0 =C2=A0 think that blog explains
<br>&gt; =C2=A0 =C2=A0 =C2=A0 almost everything in detail.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; On Tuesday, September 20, 2016 at 11:01:=
18 PM UTC-7,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 <a>gnud...@gmail.com</a>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; wrote:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; Hello everyone,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; I&#39;m on Debian Jessie and I canno=
t get mutt to send email. I
<br>&gt; =C2=A0 =C2=A0 =C2=A0 can receive
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; emails and view my inbox in Mutt but=
 I can&#39;t send messages. I
<br>&gt; =C2=A0 =C2=A0 =C2=A0 can send them
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; to myself though. I can&#39;t send t=
hem to another email address.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; When I use mutt to send an email I k=
eep getting this
<br>&gt; =C2=A0 =C2=A0 =C2=A0 HELO/ELHO error:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; SMTP session failed: 501 5.5.4
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://support.google.com/m=
ail/?p=3Dhelo" target=3D"_blank" onmousedown=3D"this.href=3D&#39;https://su=
pport.google.com/mail/?p\x3dhelo&#39;;return true;" onclick=3D"this.href=3D=
&#39;https://support.google.com/mail/?p\x3dhelo&#39;;return true;">https://=
support.google.com/<wbr>mail/?p=3Dhelo</a>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; yg10sm21072351pab.8 - gsmtp
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; That brings me to this page:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt;<a href=3D"https://support.google.com=
/mail/answer/6386757?visit_id=3D1-63610024331271608" target=3D"_blank" onmo=
usedown=3D"this.href=3D&#39;https://support.google.com/mail/answer/6386757?=
visit_id\x3d1-63610024331271608&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://support.google.com/mail/answer/6386757?visit_id\x3d1-6361002433=
1271608&#39;;return true;">https://support.google.com/<wbr>mail/answer/6386=
757?visit_id=3D<wbr>1-63610024331271608</a>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 0-1894628512&amp;p=3Dhelo&amp;rd=3D1
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; I can&#39;t figure out how to resolv=
e this issue. My 2 factor is
<br>&gt; =C2=A0 =C2=A0 =C2=A0 off and I&#39;m
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; allowing login from unsecure apps. I=
&#39;m also trying to use
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ssmtp instead of
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; esmtp but the same thing happens in =
mutt.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; When i do
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; $ sudo ssmtp <a>some...@gmail.com</a=
>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; the email does actually go through t=
hough, but it says from
<br>&gt; =C2=A0 =C2=A0 =C2=A0 root.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; If anyone has suggestions I would re=
ally appreciate it!
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; Thanks,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;&gt; Liz
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; You received this message because you ar=
e subscribed to the
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Google Groups
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; &quot;outreachy-kernel&quot; group.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To unsubscribe from this group and stop =
receiving emails from
<br>&gt; =C2=A0 =C2=A0 =C2=A0 it, send an
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; email to <a>outreachy-kern...@<wbr>googl=
egroups.com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To post to this group, send email to
<br>&gt; =C2=A0 =C2=A0 =C2=A0 <a>outreach...@googlegroups.com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To view this discussion on the web visit
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;<a href=3D"https://groups.google.com/d/ms=
gid/outreachy-kernel/649173d5-38d8-43e3-af3b-" target=3D"_blank" rel=3D"nof=
ollow" onmousedown=3D"this.href=3D&#39;https://groups.google.com/d/msgid/ou=
treachy-kernel/649173d5-38d8-43e3-af3b-&#39;;return true;" onclick=3D"this.=
href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/649173d5-38d=
8-43e3-af3b-&#39;;return true;">https://groups.google.com/d/<wbr>msgid/outr=
eachy-kernel/<wbr>649173d5-38d8-43e3-af3b-</a>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 a81aab81311d%<a href=3D"http://40googlegroups=
.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ht=
tp://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26=
sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;" o=
nclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40go=
oglegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0Zg=
Jix1hnBQ&#39;;return true;">40googlegroups.<wbr>com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; For more options, visit <a href=3D"https=
://groups.google.com/d/optout" target=3D"_blank" rel=3D"nofollow" onmousedo=
wn=3D"this.href=3D&#39;https://groups.google.com/d/optout&#39;;return true;=
" onclick=3D"this.href=3D&#39;https://groups.google.com/d/optout&#39;;retur=
n true;">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Vaishali
<br>&gt; =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://vaishalithakkar.in/" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.goo=
gle.com/url?q\x3dhttp%3A%2F%2Fvaishalithakkar.in%2F\x26sa\x3dD\x26sntz\x3d1=
\x26usg\x3dAFQjCNFTQCErjwjagpBB3EQj7EkZcNBoOw&#39;;return true;" onclick=3D=
"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fvaishalithakk=
ar.in%2F\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFTQCErjwjagpBB3EQj7EkZcNBo=
Ow&#39;;return true;">http://vaishalithakkar.in/</a>
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"OtGFEz4oCgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ja=
vascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;r=
eturn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"OtGFEz4oCgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/c33bb083-d19f-473c-9f16-" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://groups.=
google.com/d/msgid/outreachy-kernel/c33bb083-d19f-473c-9f16-&#39;;return tr=
ue;" onclick=3D"this.href=3D&#39;http://groups.google.com/d/msgid/outreachy=
-kernel/c33bb083-d19f-473c-9f16-&#39;;return true;">groups.google.<wbr>com/=
d/msgid/outreachy-kernel/<wbr>c33bb083-d19f-473c-9f16-</a>
<br>&gt; 92bbd62d4e80%<a href=3D"http://40googlegroups.com" target=3D"_blan=
k" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/u=
rl?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26s=
a\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;retur=
n true;">40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br>&gt;</blockquote></div></div>
------=_Part_1704_1037854059.1474579970151--

------=_Part_1703_705566557.1474579970151--

