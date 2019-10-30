X-GM-THRID: 6753200563017482240
Date: Wed, 30 Oct 2019 14:57:50 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <97327d78-e57e-4401-817a-dbe1cc08789b@googlegroups.com>
In-Reply-To: <CANR89jaTHmRieV47zcr3MZJ69cmNSBOtuTLN88bti4HAf73CkQ@mail.gmail.com>
References: <CANR89jaTHmRieV47zcr3MZJ69cmNSBOtuTLN88bti4HAf73CkQ@mail.gmail.com>
Subject: Re: Driver dependency
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2446_1420222392.1572472670635"
X-Google-Token: EN6O6O0FUcTPiJw3NJU0
X-Google-IP: 97.126.66.56

------=_Part_2446_1420222392.1572472670635
Content-Type: multipart/alternative; 
	boundary="----=_Part_2447_213992761.1572472670636"

------=_Part_2447_213992761.1572472670636
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

This is the same information I am getting from menuconfig. I was able to 
turn on COMPILE_TEST.

Are you not able to turn on COMPILE_TEST?

It is the first option under "General Setup" and it is labeled "Compile 
also drivers which will not load"

Thanks,
Jamal

On Tuesday, October 29, 2019 at 5:27:13 AM UTC-7, evan chime wrote:
>
> Hello Guys
>
> Please am trying to modify a driver and the driver depends on COMPILE_TEST.
> COMPILE_TEST is [=n]  and depends on !UML.
> UML is Symbol: UML [=UML]                                                 
>                                                            Type  : unknown
>
> I've read the newbie tutorial many times, please can someone help. I guess 
> !UML means UML shouldn't be on ie UML [=n], then "!" will make !UML true  
>
> Kind regards
> Evan
>

------=_Part_2447_213992761.1572472670636
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This is the same information I am getting from menuco=
nfig. I was able to turn on COMPILE_TEST.</div><div><br></div><div>Are you =
not able to turn on COMPILE_TEST?</div><div><br></div><div>It is the first =
option under &quot;General Setup&quot; and it is labeled &quot;Compile also=
 drivers which will not load&quot;</div><div><br></div><div>Thanks,</div><d=
iv>Jamal<br></div><br>On Tuesday, October 29, 2019 at 5:27:13 AM UTC-7, eva=
n chime wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr"=
>Hello Guys<br><br>Please am trying to modify a driver and the driver depen=
ds on COMPILE_TEST.<br>COMPILE_TEST is [=3Dn] =C2=A0and depends on !UML.<br=
>UML is Symbol: UML [=3DUML] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 Type =C2=A0: unknown<br><br>I&#39;ve =
read the newbie tutorial many times, please can someone help. I guess !UML =
means UML shouldn&#39;t be on ie UML [=3Dn], then &quot;!&quot; will make !=
UML true =C2=A0<br><br>Kind regards<br>Evan<br></div>
</blockquote></div>
------=_Part_2447_213992761.1572472670636--

------=_Part_2446_1420222392.1572472670635--

