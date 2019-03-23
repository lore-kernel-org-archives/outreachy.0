X-GM-THRID: 6671577370158170112
Date: Sat, 23 Mar 2019 07:44:45 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <245673de-1d54-4183-8b92-0e95c6fe1596@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903231434020.2566@hadrien>
References: <20190323132716.904-1-vatsalanarang@gmail.com>
 <alpine.DEB.2.21.1903231434020.2566@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: include: Fix a
 space issue
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_536_777512645.1553352285802"
X-Google-Token: EN2M2eQF9cCeVga087k0
X-Google-IP: 103.87.57.188

------=_Part_536_777512645.1553352285802
Content-Type: multipart/alternative; 
	boundary="----=_Part_537_1446008192.1553352285802"

------=_Part_537_1446008192.1553352285802
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

> 

> > -        struct adapter * adapter; 
> > +        struct adapter *adapter; 
> > 
> >          u8 *pbuf; 
> >          u8 *pallocated_buf; 
>
> It looks like there are more opportunities for improving this file, by 
> getting rid of the "p"s on these names. 
>
> julia 
>
> okay ,can I make this change in v2 of same patch or else should I make it 
> a patchset?
>

------=_Part_537_1446008192.1553352285802
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

&gt;
<br><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; -=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct adapter * adapter;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct adapter *a=
dapter;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 *pbuf;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 *pallocat=
ed_buf;
<br>
<br>It looks like there are more opportunities for improving this file, by
<br>getting rid of the &quot;p&quot;s on these names.
<br>
<br>julia
<br>
<br>okay ,can I make this change in v2 of same patch or else should I make =
it a patchset?<br></blockquote>
------=_Part_537_1446008192.1553352285802--

------=_Part_536_777512645.1553352285802--

