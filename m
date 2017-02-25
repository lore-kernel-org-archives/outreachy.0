X-GM-THRID: 6390634706454446080
Date: Sat, 25 Feb 2017 03:53:29 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, gregkh@linuxfoundation.org,
	samuel.thibault@ens-lyon.org
Message-Id: <4c317e55-1fa9-40cd-af99-b7689a8f618f@googlegroups.com>
In-Reply-To: <20170225114536.sazkaxnrxbymvml6@var.youpi.perso.aquilenet.fr>
References: <58b067d9.4d8d620a.8af7e.1ae6@mx.google.com>
 <alpine.DEB.2.20.1702241814330.3089@hadrien>
 <3607bae1-f325-4a95-bbe8-d94fcf492009@googlegroups.com>
 <20170225094123.ssback7e4kmw2ett@var.youpi.perso.aquilenet.fr>
 <a3261158-0050-4599-935e-2ad2a13b8a00@googlegroups.com>
 <20170225114536.sazkaxnrxbymvml6@var.youpi.perso.aquilenet.fr>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: speakup: Replace
 BUG_ON() with WARN_ON().
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2173_1221927399.1488023609322"
X-Google-Token: ELngxcUFDCUW7R_dzJI0
X-Google-IP: 117.192.154.88

------=_Part_2173_1221927399.1488023609322
Content-Type: multipart/alternative; 
	boundary="----=_Part_2174_1528849342.1488023609323"

------=_Part_2174_1528849342.1488023609323
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



>
> You don't necessarily need to look what __ATTR does (it's a long way up 
> to getting something useful), but just check how other users of __ATTR 
> behave, or see its documentation, which can be found by simply grepping 
> for __ATTR in linux/Documentation/ 
>
>    Okay, thanks I'll look into it in the documentation. 
 

------=_Part_2174_1528849342.1488023609323
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>You don&#39;t necessarily need to look what __ATTR does (it&#39;s a lon=
g way up
<br>to getting something useful), but just check how other users of __ATTR
<br>behave, or see its documentation, which can be found by simply grepping
<br>for __ATTR in linux/Documentation/
<br>
<br></blockquote><div>=C2=A0=C2=A0 Okay, thanks I&#39;ll look into it in th=
e documentation. <br>=C2=A0</div></div>
------=_Part_2174_1528849342.1488023609323--

------=_Part_2173_1221927399.1488023609322--

