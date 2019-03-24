X-GM-THRID: 6671742657236041728
Date: Sun, 24 Mar 2019 11:59:25 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <0d550144-5842-4eea-b7ca-9be58c77d05d@googlegroups.com>
In-Reply-To: <20190324090955.GA7359@kroah.com>
References: <20190324000832.12027-1-vatsalanarang@gmail.com>
 <20190324090955.GA7359@kroah.com>
Subject: Re: [PATCH] staging: rtl8192u: ieee80211: Remove unnecessary
 braces.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_914_1440706789.1553453965981"
X-Google-Token: EI2n3-QFPbHZY1yu5VQ0
X-Google-IP: 103.87.57.5

------=_Part_914_1440706789.1553453965981
Content-Type: multipart/alternative; 
	boundary="----=_Part_915_110848867.1553453965981"

------=_Part_915_110848867.1553453965981
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

> -                                if (is_multicast_ether_addr(dst)) { 

> > +                                if (is_multicast_ether_addr(dst)) 
> >                                          stats->multicast++; 
> > -                                } 
>
> ALWAYS run your patches through checkpatch.pl so you do not add new 
> errors to the file, like you did here :( 
>
> greg k-h 
>
okay i will verify it again and send it correctly
thanks,
Vatsala

------=_Part_915_110848867.1553453965981
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (is_mu=
lticast_ether_addr(dst)) {
<br><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; +=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0if (is_multicast_ether_addr(dst))=20
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0stats-&gt;multicast++;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0}
<br>
<br>ALWAYS run your patches through <a href=3D"http://checkpatch.pl" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.goo=
gle.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\=
x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x=
3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return t=
rue;">checkpatch.pl</a> so you do not add new
<br>errors to the file, like you did here :(
<br>
<br>greg k-h
<br></blockquote><div>okay i will verify it again and send it correctly</di=
v><div>thanks,</div><div>Vatsala<br></div></div>
------=_Part_915_110848867.1553453965981--

------=_Part_914_1440706789.1553453965981--

