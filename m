X-GM-THRID: 6670961947938127872
Date: Fri, 22 Mar 2019 13:17:36 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <b88448d8-1044-42c1-80cd-8e0e44d472ca@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903222113270.2433@hadrien>
References: <20190322200747.23965-1-vatsalanarang@gmail.com>
 <alpine.DEB.2.21.1903222113270.2433@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v3 1/3] staging: vt6655: line over 80
 characters
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_974_70132277.1553285856933"
X-Google-Token: EOCF1eQF33-yhXHxeyY0
X-Google-IP: 103.87.57.101

------=_Part_974_70132277.1553285856933
Content-Type: multipart/alternative; 
	boundary="----=_Part_975_329424072.1553285856933"

------=_Part_975_329424072.1553285856933
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

> 

> > -                MACvSetMISCFifo(priv, (unsigned 
> short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel-1]); 
> > +                MACvSetMISCFifo(priv, 
> > +                                (unsigned short)(MISCFIFO_SYNDATA_IDX + 
> ii), 
> > +                                 dwAL2230ChannelTable0[uChannel-1]); 
>
> dwAL2230ChannelTable0 needs to go one space to the left.  It should be 
> lined up with the other arguments.  It is not inside the ( above it, but 
> rather parallel to it. 
>
> If checkpatch suggested to add the extra space, you can ignore it. 
>
> julia 
>
>
Yes checkpatch was throwing an error for this that's why i did it. I will 
revert this change.
thanks,
Vatsala

------=_Part_975_329424072.1553285856933
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

&gt;
<br><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; -=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), =
dwAL2230ChannelTable0[<wbr>uChannel-1]);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvSetMISCFifo(priv,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0(unsigned short)=
(MISCFIFO_SYNDATA_IDX + ii),
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 dwAL2230Channel=
Table0[<wbr>uChannel-1]);
<br>
<br>dwAL2230ChannelTable0 needs to go one space to the left. =C2=A0It shoul=
d be
<br>lined up with the other arguments. =C2=A0It is not inside the ( above i=
t, but
<br>rather parallel to it.
<br>
<br>If checkpatch suggested to add the extra space, you can ignore it.
<br>
<br>julia
<br>
<br></blockquote><div><br></div><div>Yes checkpatch was throwing an error f=
or this that&#39;s why i did it. I will revert this change.</div><div>thank=
s,</div><div>Vatsala<br></div>
------=_Part_975_329424072.1553285856933--

------=_Part_974_70132277.1553285856933--

