X-GM-THRID: 6670962205822812160
Date: Fri, 22 Mar 2019 06:52:47 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <9c674bab-d8eb-4664-baa3-e79c29db4982@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903212250560.4720@hadrien>
References: <20190321214005.15907-1-vatsalanarang@gmail.com>
 <alpine.DEB.2.21.1903212250560.4720@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: vt6655: Add spaces
 around operator
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_789_505269987.1553262767258"
X-Google-Token: EK_R0-QFSGF5MVFA27k0
X-Google-IP: 103.87.57.101

------=_Part_789_505269987.1553262767258
Content-Type: multipart/alternative; 
	boundary="----=_Part_790_1426432682.1553262767258"

------=_Part_790_1426432682.1553262767258
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

 

> > -                MACvSetMISCFifo(priv, (unsigned 
> short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel-1]); 
> > +                MACvSetMISCFifo(priv, (unsigned 
> short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel - 1]); 
>
>
> These lines are really long.  You could fix that as well, in another patch 
> in the series. 
>
> julia 
>
 
okay I will fix this in another patch
thanks,
Vatsala


------=_Part_790_1426432682.1553262767258
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0<br><blockquote class=3D"gmail_quote" style=3D"margi=
n: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt=
; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvSetMISCFifo(priv, (unsigned short)(MISCFIF=
O_SYNDATA_IDX + ii), dwAL2230ChannelTable0[<wbr>uChannel-1]);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvSetMISCFifo(priv, (unsigned short=
)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel - 1]);
<br>
<br>
<br>These lines are really long. =C2=A0You could fix that as well, in anoth=
er patch
<br>in the series.
<br>
<br>julia
<br></blockquote><div>=C2=A0</div><div>okay I will fix this in another patc=
h</div><div>thanks,</div><div>Vatsala<br></div><div><br></div></div>
------=_Part_790_1426432682.1553262767258--

------=_Part_789_505269987.1553262767258--

