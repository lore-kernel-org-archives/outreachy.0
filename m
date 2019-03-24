X-GM-THRID: 6670745270189293568
Date: Sun, 24 Mar 2019 02:22:51 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <be5e32cb-952e-44e1-a2f1-ead9066b6a45@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903241004560.2526@hadrien>
References: <20190323112807.9804-1-sanjana99reddy99@gmail.com> <20190324085923.GA32103@kroah.com>
 <alpine.DEB.2.21.1903241004560.2526@hadrien>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: greybus:
 svc_watchdog: Modify char* array declaration.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1421_1702226438.1553419371540"
X-Google-Token: EOuY3eQF0rf5KC0AsPI0
X-Google-IP: 123.201.77.18

------=_Part_1421_1702226438.1553419371540
Content-Type: multipart/alternative; 
	boundary="----=_Part_1422_1278136750.1553419371541"

------=_Part_1422_1278136750.1553419371541
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, March 24, 2019 at 2:35:46 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sun, 24 Mar 2019, Greg KH wrote: 
>
> > On Sat, Mar 23, 2019 at 04:58:07PM +0530, Sanjana Sanikommu wrote: 
> > > Modify "static char* array" to "static char* const array". 
> > > Issue found using checkpatch.pl 
> > > 
> > > WARNING:char* array declaration might be better as static constant 
> > > 
> > > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
>
> > > --- 
> > > Changes in v2: 
> > > Test build the patch 
> > 
> > No you did not :( 
> > 
> > It blows up the build into tiny pieces.  Please properly test build your 
> > patches before sending them in. 
>
> Sarjana, 
>
> Try make allyesconfig to make it more likely to have a configuration that 
> will actually cause compiling the driver. 
>
   
   I would do that :)
   thank you
   Sanjana 

>
> julia 
>
> > 
> > greg k-h 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20190324085923.GA32103%40kroah.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1422_1278136750.1553419371541
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, March 24, 2019 at 2:35:46 PM UTC+5:30, =
Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 24 Mar 2019, Greg KH wrote:
<br>
<br>&gt; On Sat, Mar 23, 2019 at 04:58:07PM +0530, Sanjana Sanikommu wrote:
<br>&gt; &gt; Modify &quot;static char* array&quot; to &quot;static char* c=
onst array&quot;.
<br>&gt; &gt; Issue found using <a href=3D"http://checkpatch.pl" target=3D"=
_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.=
com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3d=
D\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return tru=
e;">checkpatch.pl</a>
<br>&gt; &gt;
<br>&gt; &gt; WARNING:char* array declaration might be better as static con=
stant
<br>&gt; &gt;
<br>&gt; &gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" =
target=3D"_blank" gdf-obfuscated-mailto=3D"tbMhWeyJBAAJ" rel=3D"nofollow" o=
nmousedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"th=
is.href=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; &gt; ---
<br>&gt; &gt; Changes in v2:
<br>&gt; &gt; Test build the patch
<br>&gt;
<br>&gt; No you did not :(
<br>&gt;
<br>&gt; It blows up the build into tiny pieces. =C2=A0Please properly test=
 build your
<br>&gt; patches before sending them in.
<br>
<br>Sarjana,
<br>
<br>Try make allyesconfig to make it more likely to have a configuration th=
at
<br>will actually cause compiling the driver.
<br></blockquote><div>=C2=A0 =C2=A0</div><div>=C2=A0 =C2=A0I would do that =
:)</div><div>=C2=A0 =C2=A0thank you</div><div>=C2=A0 =C2=A0Sanjana=C2=A0</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;=
border-left: 1px #ccc solid;padding-left: 1ex;">
<br>julia
<br>
<br>&gt;
<br>&gt; greg k-h
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"tbMhWeyJBAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"tbMhWeyJBAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190324085923.GA32103%40kroah.com" ta=
rget=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://gr=
oups.google.com/d/msgid/outreachy-kernel/20190324085923.GA32103%40kroah.com=
&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups.google.com/d=
/msgid/outreachy-kernel/20190324085923.GA32103%40kroah.com&#39;;return true=
;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190324085=
923.GA32103%<wbr>40kroah.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_1422_1278136750.1553419371541--

------=_Part_1421_1702226438.1553419371540--

