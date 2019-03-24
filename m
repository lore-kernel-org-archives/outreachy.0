X-GM-THRID: 6671642851007266816
Date: Sun, 24 Mar 2019 11:49:57 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <cd4ba850-97ab-4707-9d18-053077cc6a4a@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903240724560.2526@hadrien>
References: <20190323220542.9331-1-vatsalanarang@gmail.com>
 <alpine.DEB.2.21.1903240724560.2526@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v3 2/3] staging: rtl8723bs: include:
 Eliminate p
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_367_117030486.1553453397890"
X-Google-Token: ENWi3-QFBR6jLR6APKk0
X-Google-IP: 103.87.57.5

------=_Part_367_117030486.1553453397890
Content-Type: multipart/alternative; 
	boundary="----=_Part_368_899914642.1553453397890"

------=_Part_368_899914642.1553453397890
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



> Again, you are only changing the definitions of the structures, and not 
> their uses.  Doing grep for pallocated_buf shows four uses in 
> os_dep/xmit_linux.c. 
>
> On the other hand, all of them are in xmit_bufs.  There seem to be no uses 
> of the fields of the other types.  I looked into the use of the mp_tx type 
> a bit.  It seems to be only used in the definition of the mp_prive 
> structure in rtw_mp.h.  Grepping for mp_priv only shows uses in rtw_mp.h. 
> These are the definition, a function prototype in a comment, and as a 
> substring in the names of two functions init_mp_priv and free_mp_priv. 
>
> So it seems that all of this can be dropped: 
> - The entire mp_tx structure definition 
> - The entire mp_priv structure defintion 
> - The comment about the prototype of alloc_mp_xmitframe 
> - The prototype of init_mp_priv 
> - The prototype of free_mp_priv 
>
> It would be good to do a similar check on the recv_buf structure, to see 
> if it is ever used. 
>
> julia 
>
>
 Yes, I missed some steps in compilation so was unsure of their usage,now i 
understand what you are saying.
so i will check their usage and drop them accordingly.
thanks for guidance
Vatsala

------=_Part_368_899914642.1553453397890
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">Again, you are only changi=
ng the definitions of the structures, and not
<br>their uses. =C2=A0Doing grep for pallocated_buf shows four uses in
<br>os_dep/xmit_linux.c.
<br>
<br>On the other hand, all of them are in xmit_bufs. =C2=A0There seem to be=
 no uses
<br>of the fields of the other types. =C2=A0I looked into the use of the mp=
_tx type
<br>a bit. =C2=A0It seems to be only used in the definition of the mp_prive
<br>structure in rtw_mp.h. =C2=A0Grepping for mp_priv only shows uses in rt=
w_mp.h.
<br>These are the definition, a function prototype in a comment, and as a
<br>substring in the names of two functions init_mp_priv and free_mp_priv.
<br>
<br>So it seems that all of this can be dropped:
<br>- The entire mp_tx structure definition
<br>- The entire mp_priv structure defintion
<br>- The comment about the prototype of alloc_mp_xmitframe
<br>- The prototype of init_mp_priv
<br>- The prototype of free_mp_priv
<br>
<br>It would be good to do a similar check on the recv_buf structure, to se=
e
<br>if it is ever used.
<br>
<br>julia
<br>
<br></blockquote><div><br></div><div>=C2=A0Yes, I missed some steps in comp=
ilation so was unsure of their usage,now i understand what you are saying.<=
/div><div>so i will check their usage and drop them accordingly.</div><div>=
thanks for guidance</div><div>Vatsala<br></div>
------=_Part_368_899914642.1553453397890--

------=_Part_367_117030486.1553453397890--

