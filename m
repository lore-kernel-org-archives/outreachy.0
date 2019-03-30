X-GM-THRID: 6673502133906571264
Date: Sat, 30 Mar 2019 08:57:19 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <e3dddcd4-07a4-4809-9e07-e38dbee03234@googlegroups.com>
In-Reply-To: <20190329160945.GC6197@kroah.com>
References: <20190329060238.15688-1-sanjana99reddy99@gmail.com>
 <20190329160945.GC6197@kroah.com>
Subject: Re: [PATCH v2] staging: wilc1000: host_interface.c: Modify return
 statement.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_115_980679171.1553961439776"
X-Google-Token: EN-j_uQFoBaM6XuNwgs0
X-Google-IP: 123.201.165.90

------=_Part_115_980679171.1553961439776
Content-Type: multipart/alternative; 
	boundary="----=_Part_116_2114382719.1553961439777"

------=_Part_116_2114382719.1553961439777
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Friday, March 29, 2019 at 9:39:50 PM UTC+5:30, gregkh wrote:
>
> On Fri, Mar 29, 2019 at 11:32:38AM +0530, Sanjana Sanikommu wrote: 
> > Challenge suggested by coccinelle. 
> > Remove return variable and directly return the value 
> > Issue found using ret.cocci 
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> > Changes in v2: 
> > Adjust spaces for last argument in return statement. 
> >  drivers/staging/wilc1000/host_interface.c | 31 +++++++---------------- 
> >  1 file changed, 9 insertions(+), 22 deletions(-) 
>
> You sent 3 different patches with the same subject line, so I have no 
> idea what is going on here.  Please make this a patch series of all 
> remaining patches for this driver, so I have a chance to be able to 
> review it properly. 
>

    Sure I would make a patch series and send them in v3 

>
> thanks, 
>
> greg k-h 
>

------=_Part_116_2114382719.1553961439777
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Friday, March 29, 2019 at 9:39:50 PM UTC+5:30, =
gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-le=
ft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Fri, Mar 29, 2=
019 at 11:32:38AM +0530, Sanjana Sanikommu wrote:
<br>&gt; Challenge suggested by coccinelle.
<br>&gt; Remove return variable and directly return the value
<br>&gt; Issue found using ret.cocci
<br>&gt;=20
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"glBetOYpBgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; Changes in v2:
<br>&gt; Adjust spaces for last argument in return statement.
<br>&gt; =C2=A0drivers/staging/wilc1000/<wbr>host_interface.c | 31 +++++++-=
---------------
<br>&gt; =C2=A01 file changed, 9 insertions(+), 22 deletions(-)
<br>
<br>You sent 3 different patches with the same subject line, so I have no
<br>idea what is going on here. =C2=A0Please make this a patch series of al=
l
<br>remaining patches for this driver, so I have a chance to be able to
<br>review it properly.
<br></blockquote><div><br></div><div>=C2=A0 =C2=A0 Sure I would make a patc=
h series and send them in v3=C2=A0</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-le=
ft: 1ex;">
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_116_2114382719.1553961439777--

------=_Part_115_980679171.1553961439776--

