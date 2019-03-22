X-GM-THRID: 6670961947938127872
Date: Fri, 22 Mar 2019 07:34:22 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <1f4b10b2-ff22-4777-bea3-0f6bd7e930e6@googlegroups.com>
In-Reply-To: <20190322141421.GA25959@kroah.com>
References: <20190321213906.15851-1-vatsalanarang@gmail.com>
 <20190322141421.GA25959@kroah.com>
Subject: Re: [PATCH 1/3] staging: vt6655: line over 80 characters
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_767_1815008365.1553265263015"
X-Google-Token: EO7k0-QF3j7NkQN6QPQ0
X-Google-IP: 103.87.57.101

------=_Part_767_1815008365.1553265263015
Content-Type: multipart/alternative; 
	boundary="----=_Part_768_1815217022.1553265263016"

------=_Part_768_1815217022.1553265263016
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

  

>  
> > -        } else if ((byOldChannel > CB_MAX_CHANNEL_24G) && (byNewChannel 
> <= CB_MAX_CHANNEL_24G)) { 
> > +        } else if ((byOldChannel > CB_MAX_CHANNEL_24G) && 
> > +                        (byNewChannel <= CB_MAX_CHANNEL_24G)) { 
>
> This needs to line up like the other one does. 
>
> thanks, 
>
> greg k-h 
>

okay I will add these changes in v2
thanks,
Vatsala

------=_Part_768_1815217022.1553265263016
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0
<br><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">=C2=A0<br>&gt; -=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if ((byOldChannel &gt; CB_MAX=
_CHANNEL_24G) &amp;&amp; (byNewChannel &lt;=3D CB_MAX_CHANNEL_24G)) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if ((byOld=
Channel &gt; CB_MAX_CHANNEL_24G) &amp;&amp;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(<wbr>byNewChannel &lt;=3D CB_MAX_CHANNEL_24G)) {
<br>
<br>This needs to line up like the other one does.
<br>
<br>thanks,
<br>
<br>greg k-h
<br></blockquote><div><br></div><div>okay I will add these changes in v2</d=
iv><div>thanks,</div><div>Vatsala<br></div></div>
------=_Part_768_1815217022.1553265263016--

------=_Part_767_1815008365.1553265263015--

