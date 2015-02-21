X-GM-THRID: 2004918206464
Date: Sat, 21 Feb 2015 13:47:44 -0800 (PST)
From: =?UTF-8?Q?Hatice_ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: haticeerturk27@gmail.com
Message-Id: <efcf0928-ffb8-408d-bb30-ac6634d72b3c@googlegroups.com>
In-Reply-To: <13586314.AW5Wp0HSbj@wuerfel>
References: <1424542612-19551-1-git-send-email-haticeerturk27@gmail.com>
 <13586314.AW5Wp0HSbj@wuerfel>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: else is
 not generally useful after a break or return
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_361_2016952630.1424555264380"
X-Google-Token: EID6o6cFTO1WWFafYhs0
X-Google-IP: 78.189.63.210

------=_Part_361_2016952630.1424555264380
Content-Type: multipart/alternative; 
	boundary="----=_Part_362_893484515.1424555264380"

------=_Part_362_893484515.1424555264380
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

ok.I'have changed. But it says "else is not generally useful after a break=
=20
or return"

21 =C5=9Eubat 2015 Cumartesi 23:34:34 UTC+2 tarihinde Arnd Bergmann yazd=C4=
=B1:
>
> On Saturday 21 February 2015 20:16:52 Hatice ERT=C3=9CRK wrote:=20
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c=20
> b/drivers/staging/rtl8188eu/core/rtw_recv.c=20
> > index bd79e9e..2b022be 100644=20
> > --- a/drivers/staging/rtl8188eu/core/rtw_recv.c=20
> > +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c=20
> > @@ -1779,8 +1779,8 @@ static int enqueue_reorder_recvframe(struct=20
> recv_reorder_ctrl *preorder_ctrl,=20
> >                         plist =3D plist->next;=20
> >                 else if (SN_EQUAL(pnextattrib->seq_num,=20
> pattrib->seq_num))=20
> >                         return false;=20
> > -               else=20
> > -                       break;=20
> > +=20
> > +               break;=20
> >         }=20
> >  =20
>
> This is not a correct change, you add a 'break' in the case that=20
> the first condition was true, which did not exist earlier.=20
>
>         Arnd=20
>

------=_Part_362_893484515.1424555264380
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family: arial, sans-serif; font-size: =
small;">ok.I'have changed. But it says "else is not generally useful after =
a break or return"</span><br><br>21 =C5=9Eubat 2015 Cumartesi 23:34:34 UTC+=
2 tarihinde Arnd Bergmann yazd=C4=B1:<blockquote class=3D"gmail_quote" styl=
e=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left:=
 1ex;">On Saturday 21 February 2015 20:16:52 Hatice ERT=C3=9CRK wrote:
<br>&gt; diff --git a/drivers/staging/rtl8188eu/<wbr>core/rtw_recv.c b/driv=
ers/staging/rtl8188eu/<wbr>core/rtw_recv.c
<br>&gt; index bd79e9e..2b022be 100644
<br>&gt; --- a/drivers/staging/rtl8188eu/<wbr>core/rtw_recv.c
<br>&gt; +++ b/drivers/staging/rtl8188eu/<wbr>core/rtw_recv.c
<br>&gt; @@ -1779,8 +1779,8 @@ static int enqueue_reorder_recvframe(<wbr>st=
ruct recv_reorder_ctrl *preorder_ctrl,
<br>&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; plist =3D plist-&gt;next;
<br>&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; else if (S=
N_EQUAL(pnextattrib-&gt;seq_<wbr>num, pattrib-&gt;seq_num))
<br>&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; return false;
<br>&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; else
<br>&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; break;
<br>&gt; +
<br>&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; break;
<br>&gt; &nbsp; &nbsp; &nbsp; &nbsp; }
<br>&gt; &nbsp;
<br>
<br>This is not a correct change, you add a 'break' in the case that
<br>the first condition was true, which did not exist earlier.
<br>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arnd
<br></blockquote></div>
------=_Part_362_893484515.1424555264380--

------=_Part_361_2016952630.1424555264380--

