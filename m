X-GM-THRID: 6673959669244887040
Date: Sat, 30 Mar 2019 05:59:28 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <b991d5c6-ac29-4a0f-98a3-8c1a7f47f1e5@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903300746450.2817@hadrien>
References: <20190329233147.27039-1-vatsalanarang@gmail.com>
 <alpine.DEB.2.21.1903300746450.2817@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v6 1/3] staging: vt6655: line over 80
 characters.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_304_367588792.1553950768606"
X-Google-Token: ELDQ_eQFgw-14zcCA8M0
X-Google-IP: 103.87.57.245

------=_Part_304_367588792.1553950768606
Content-Type: multipart/alternative; 
	boundary="----=_Part_305_195692227.1553950768606"

------=_Part_305_195692227.1553950768606
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

> Changes in v6: 

> >  -fixed patch 1 and resent it 
> >  drivers/staging/vt6655/rf.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > 
> >          MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, 
> > -                        (unsigned long)MAKEWORD(bySleepCount, 
> byInitCount)); 
> > +                               (unsigned long)MAKEWORD(bySleepCount, 
> byInitCount)); 
>
> The two lines look the same, although there are probably spacing 
> differences.  I think you have the wrong log message for this patch. 
>
> julia 
>
> Apart from this when I rebased the earlier patch it was corrupted with 
multiple lines that were not present in the file,so I also removed those 
lines and i don't know why its not visible here .Anyways I will send this 
again with correct log message.
thanks 
Vatsala

------=_Part_305_195692227.1553950768606
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

&gt; Changes in v6:
<br><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; =C2=A0-fixed patch 1 =
and resent it
<br>&gt; =C2=A0drivers/staging/vt6655/rf.c | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvSetMISCF=
ifo(priv, MISCFIFO_SYNINFO_IDX,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(<wbr>unsigned long)MAKEWORD(bySleepCount, byInitCount));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(unsigned long)MAKEWORD(bySleepCount, byInitC=
ount));
<br>
<br>The two lines look the same, although there are probably spacing
<br>differences. =C2=A0I think you have the wrong log message for this patc=
h.
<br>
<br>julia
<br><br></blockquote><div>Apart from this when I rebased the earlier patch =
it was corrupted with multiple lines that were not present in the file,so I=
 also removed those lines and i don&#39;t know why its not visible here .An=
yways I will send this again with correct log message.</div><div>thanks <br=
></div><div>Vatsala<br></div>
------=_Part_305_195692227.1553950768606--

------=_Part_304_367588792.1553950768606--

