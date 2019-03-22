X-GM-THRID: 6670962421189836800
Date: Fri, 22 Mar 2019 06:54:54 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <d1fe6d37-d88c-41a0-aca3-faa344b46fa8@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903212247170.4720@hadrien>
References: <20190321214056.15963-1-vatsalanarang@gmail.com>
 <alpine.DEB.2.21.1903212247170.4720@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: vt6655: lines should
 not end with a parentheses
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_735_1593741037.1553262894657"
X-Google-Token: EK7S0-QFQ4C39V5Ob7A0
X-Google-IP: 103.87.57.101

------=_Part_735_1593741037.1553262894657
Content-Type: multipart/alternative; 
	boundary="----=_Part_736_1680348696.1553262894658"

------=_Part_736_1680348696.1553262894658
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> -bool RFbSetPower( 

> > -        struct vnt_private *priv, 
> > -        unsigned int rate, 
> > -        u16 uCH 
> > -) 
> > +bool RFbSetPower(struct vnt_private *priv, unsigned int rate, 
> > +                 u16 uCH) 
>
> You can put the whol thing on one line. 
>
>
> okay I will  add this change in v2
thanks,
Vatsala


------=_Part_736_1680348696.1553262894658
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>&gt; -bool RFbSetPower(
</div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8=
ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; -=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct vnt_private *priv,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned int rate=
,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u16 uCH
<br>&gt; -)
<br>&gt; +bool RFbSetPower(struct vnt_private *priv, unsigned int rate,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 uCH)
<br>
<br>You can put the whol thing on one line.
<br>
<br><br></blockquote><div>okay I will=C2=A0 add this change in v2</div><div=
>thanks,</div><div>Vatsala</div><div><br></div></div>
------=_Part_736_1680348696.1553262894658--

------=_Part_735_1593741037.1553262894657--

