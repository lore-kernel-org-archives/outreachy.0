X-GM-THRID: 6674230099683835904
Date: Sun, 31 Mar 2019 07:00:58 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <fb34a52b-3920-4236-9721-c3d0f0c24a21@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903311321350.2578@hadrien>
References: <20190330170116.4761-1-sanjana99reddy99@gmail.com> <20190330173836.5404-1-sanjana99reddy99@gmail.com> <20190330193727.GA2651@kroah.com> <9d78f23f-4105-4dd7-ab9e-05faa57f23fb@googlegroups.com>
 <alpine.DEB.2.21.1903311321350.2578@hadrien>
Subject: Re: [Outreachy kernel] Re: [PATCH v4 2/2] staging: wilc1000:
 host_interface.c: Modify return statement.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_595_104314434.1554040859071"
X-Google-Token: EJqQg-UFMg7d5yUqhOk0
X-Google-IP: 219.91.254.74

------=_Part_595_104314434.1554040859071
Content-Type: multipart/alternative; 
	boundary="----=_Part_596_850369444.1554040859071"

------=_Part_596_850369444.1554040859071
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, March 31, 2019 at 4:52:00 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sun, 31 Mar 2019, sanjana9...@gmail.com <javascript:> wrote: 
>
> > 
> > 
> > On Sunday, March 31, 2019 at 1:09:44 AM UTC+5:30, gregkh wrote: 
> >       On Sat, Mar 30, 2019 at 11:08:36PM +0530, Sanjana Sanikommu 
> >       wrote: 
> >       > Challenge suggested by coccinelle. 
> >       > Remove return variable and directly return the value 
> >       > Issue found using ret.cocci 
> >       > 
> >       > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com> 
> > 
> >       Are you sure this isn't already in the tree?  It does not apply. 
> > 
> >   
> >    Changes are made in drivers/staging/wilc1000/ 
> >    I don't know where it went wrong. 
>
> Perhaps you need to do git pull? 
>

   I will try that.
   Thank you.
    Sanjana 

>
> julia 
>
>
> >    Thank you 
> >     Sanjana   
> > 
> >       thanks, 
> > 
> >       greg k-h 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to outreach...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/9d78f23f-4105-4dd7-ab9e- 
> > 05faa57f23fb%40googlegroups.com. 
> > For more options, visit https://groups.google.com/d/optout. 
> > 
> >


------=_Part_596_850369444.1554040859071
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, March 31, 2019 at 4:52:00 PM UTC+5:30, =
Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 31 Mar 2019, <a href=3D"javascript:" target=3D"_blank" gdf-obfu=
scated-mailto=3D"0yc86Fq3BgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D=
&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:=
&#39;;return true;">sanjana9...@gmail.com</a> wrote:
<br>
<br>&gt;
<br>&gt;
<br>&gt; On Sunday, March 31, 2019 at 1:09:44 AM UTC+5:30, gregkh wrote:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 On Sat, Mar 30, 2019 at 11:08:36PM +0530, San=
jana Sanikommu
<br>&gt; =C2=A0 =C2=A0 =C2=A0 wrote:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Challenge suggested by coccinelle.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Remove return variable and directly retu=
rn the value
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Issue found using ret.cocci
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Signed-off-by: Sanjana Sanikommu &lt;<a>=
sanjana9...@gmail.com</a>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Are you sure this isn&#39;t already in the tr=
ee? =C2=A0It does not apply.
<br>&gt;
<br>&gt; =C2=A0
<br>&gt; =C2=A0 =C2=A0Changes are made in drivers/staging/wilc1000/
<br>&gt; =C2=A0 =C2=A0I don&#39;t know where it went wrong.
<br>
<br>Perhaps you need to do git pull?
<br></blockquote><div><br></div><div>=C2=A0 =C2=A0I will try that.</div><di=
v>=C2=A0 =C2=A0Thank you.</div><div>=C2=A0 =C2=A0 Sanjana=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-le=
ft: 1px #ccc solid;padding-left: 1ex;">
<br>julia
<br>
<br>
<br>&gt; =C2=A0 =C2=A0Thank you
<br>&gt; =C2=A0 =C2=A0 Sanjana=C2=A0=C2=A0
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 thanks,
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 greg k-h
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"0yc86Fq3BgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ja=
vascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;r=
eturn true;">outreach...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"0yc86Fq3BgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/9d78f23f-4105-4dd7-ab9e-" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://groups.=
google.com/d/msgid/outreachy-kernel/9d78f23f-4105-4dd7-ab9e-&#39;;return tr=
ue;" onclick=3D"this.href=3D&#39;http://groups.google.com/d/msgid/outreachy=
-kernel/9d78f23f-4105-4dd7-ab9e-&#39;;return true;">groups.google.<wbr>com/=
d/msgid/outreachy-kernel/<wbr>9d78f23f-4105-4dd7-ab9e-</a>
<br>&gt; 05faa57f23fb%<a href=3D"http://40googlegroups.com" target=3D"_blan=
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
<br>&gt;</blockquote></div>
------=_Part_596_850369444.1554040859071--

------=_Part_595_104314434.1554040859071--

