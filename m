X-GM-THRID: 6387816856867045376
Date: Fri, 24 Feb 2017 12:10:21 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: singhalsimran0@gmail.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Message-Id: <e1cde734-003d-4b3d-bba0-d37f5edd8e2b@googlegroups.com>
In-Reply-To: <20170224171613.GA376@kroah.com>
References: <20170217175059.GA26957@singhal-Inspiron-5558>
 <20170224171613.GA376@kroah.com>
Subject: Re: [PATCH v2 3/3] staging: rtl8192u: Prefer using the BIT macro
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1578_1118809756.1487967022029"
X-Google-Token: EK2mwsUF9ch21X5phf00
X-Google-IP: 14.139.82.6

------=_Part_1578_1118809756.1487967022029
Content-Type: multipart/alternative; 
	boundary="----=_Part_1579_2080704327.1487967022029"

------=_Part_1579_2080704327.1487967022029
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Friday, February 24, 2017 at 10:46:21 PM UTC+5:30, gregkh wrote:
>
> On Fri, Feb 17, 2017 at 11:20:59PM +0530, simran singhal wrote: 
> > Replaces left shift operation (1 << d) by BIT(x) macro. 
> > 
> > Fix the checkpatch.pl issue: 
> > CHECK: Prefer using the BIT macro replacing 
> > 
> > Signed-off-by: simran singhal <singhal...@gmail.com <javascript:>> 
> > --- 
> >   
> >  V2: 
> >    -modified patch message. 
> > 
> >  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 140 
> ++++++++++++------------- 
> >  1 file changed, 70 insertions(+), 70 deletions(-) 
>
> The last chunk of this patch did not apply, please fix up and resend. 
>
> thanks, 
>
> greg k-h 
>

  Can you please elaborate what's the problem with the last chunk of this 
patch and 
  to be more precise what do you mean by "last chunk of this patch". I am 
not getting 
  what's the problem with this patch.
  
  Thanks,
  Simran Singhal

       

------=_Part_1579_2080704327.1487967022029
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Friday, February 24, 2017 at 10:46:21 PM UTC+5:=
30, gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margi=
n-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Fri, Feb 1=
7, 2017 at 11:20:59PM +0530, simran singhal wrote:
<br>&gt; Replaces left shift operation (1 &lt;&lt; d) by BIT(x) macro.
<br>&gt;=20
<br>&gt; Fix the <a href=3D"http://checkpatch.pl" target=3D"_blank" rel=3D"=
nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dht=
tp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29=
dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;http://ww=
w.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x2=
6usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkpatch.pl=
</a> issue:
<br>&gt; CHECK: Prefer using the BIT macro replacing
<br>&gt;=20
<br>&gt; Signed-off-by: simran singhal &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"n4b3jpQCAgAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">singhal...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0
<br>&gt; =C2=A0V2:
<br>&gt; =C2=A0 =C2=A0-modified patch message.
<br>&gt;=20
<br>&gt; =C2=A0drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211.h | 140 ++=
++++++++++-------------
<br>&gt; =C2=A01 file changed, 70 insertions(+), 70 deletions(-)
<br>
<br>The last chunk of this patch did not apply, please fix up and resend.
<br>
<br>thanks,
<br>
<br>greg k-h
<br></blockquote><div><br></div><div>=C2=A0 Can you please elaborate what&#=
39;s the problem with the last chunk of this patch and=C2=A0</div><div>=C2=
=A0 to be more precise what do you mean by &quot;last chunk of this patch&q=
uot;. I am not getting=C2=A0</div><div>=C2=A0 what&#39;s the problem with t=
his patch.</div><div>=C2=A0=C2=A0</div><div>=C2=A0 Thanks,</div><div>=C2=A0=
 Simran Singhal</div><div><br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0</div><=
/div>
------=_Part_1579_2080704327.1487967022029--

------=_Part_1578_1118809756.1487967022029--

