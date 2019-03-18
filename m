X-GM-THRID: 6669776681791651840
Date: Mon, 18 Mar 2019 11:16:22 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <d6938f01-e191-44d8-97a1-69b47a59f6e3@googlegroups.com>
In-Reply-To: <20190318165938.2503-1-vatsalanarang@gmail.com>
References: <20190318165938.2503-1-vatsalanarang@gmail.com>
Subject: Re: [PATCH 2/2] Eliminate camel case
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1722_1656195870.1552932982686"
X-Google-Token: EPbAv-QFWSZ8v56domg0
X-Google-IP: 103.87.56.146

------=_Part_1722_1656195870.1552932982686
Content-Type: multipart/alternative; 
	boundary="----=_Part_1723_1407278804.1552932982686"

------=_Part_1723_1407278804.1552932982686
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Patch 1/2 is under the heading:Edit CamelCase function names to make code 
more readable; as the heading earlier was too long so I made it concise

> -                sw_panel_power_sequence 
> -                ((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET, 4); 
> +                sw_panel_power_sequence((output & PNL_SEQ_MASK) >> 
> PNL_SEQ_OFFSET, 
> +                                4); 
>  
>
I corrected its camelcase in earlier patch,if the patchset should have 
similar title, I will combine both and resend it.
thanks,
Vatsala
 

------=_Part_1723_1407278804.1552932982686
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Patch 1/2 is under the heading:Edit CamelCase function nam=
es to make code more readable; as the heading earlier was too long so I mad=
e it concise<br><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0sw_panel_<wbr>power_sequence
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0((output &amp; PNL_SEQ_MASK) &gt;&gt; PNL_SEQ_OF=
FSET, 4);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0sw_panel_<wbr>power_sequence((output &amp; PNL_S=
EQ_MASK) &gt;&gt; PNL_SEQ_OFFSET,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A04);
<br>=C2=A0<br></blockquote><div>I corrected its camelcase in earlier patch,=
if the patchset should have similar title, I will combine both and resend i=
t.</div><div>thanks,</div><div>Vatsala<br></div><div>=C2=A0<br></div></div>
------=_Part_1723_1407278804.1552932982686--

------=_Part_1722_1656195870.1552932982686--

