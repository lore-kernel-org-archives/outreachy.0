X-GM-THRID: 6670961947938127872
Date: Fri, 22 Mar 2019 12:49:10 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <26eeb2b0-cc6c-4bdf-b0ca-40723c39cce8@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903221958130.2433@hadrien>
References: <20190322183641.22025-1-vatsalanarang@gmail.com>
 <alpine.DEB.2.21.1903221958130.2433@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] staging: vt6655: line over 80
 characters
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1005_213288754.1553284150570"
X-Google-Token: ELb41OQF12PqpSlepBw0
X-Google-IP: 103.87.57.101

------=_Part_1005_213288754.1553284150570
Content-Type: multipart/alternative; 
	boundary="----=_Part_1006_2038996841.1553284150570"

------=_Part_1006_2038996841.1553284150570
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

> 

> > -                MACvSetMISCFifo(priv, (unsigned 
> short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel-1]); 
> > +                MACvSetMISCFifo(priv, (unsigned 
> short)(MISCFIFO_SYNDATA_IDX + 
> > +                                ii), 
> dwAL2230ChannelTable0[uChannel-1]); 
>
> It would be better to cut at the commas instead of in the middle of an 
> expression. 
>
> julia 
>
>  okay, i will resend it
 thanks,
Vatsala

------=_Part_1006_2038996841.1553284150570
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt;
<br><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; -=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), =
dwAL2230ChannelTable0[<wbr>uChannel-1]);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvSetMISCFifo(priv, (unsigned short=
)(MISCFIFO_SYNDATA_IDX +
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0ii), dwAL2230Cha=
nnelTable0[<wbr>uChannel-1]);
<br>
<br>It would be better to cut at the commas instead of in the middle of an
<br>expression.
<br>
<br>julia
<br>
<br></blockquote><div>=C2=A0okay, i will resend it<br></div><div>=C2=A0than=
ks,</div><div> Vatsala</div></div>
------=_Part_1006_2038996841.1553284150570--

------=_Part_1005_213288754.1553284150570--

