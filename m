X-GM-THRID: 612983898112
Date: Fri, 20 Feb 2015 01:39:22 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: ksenija.stanojevic@gmail.com, gregkh@linuxfoundation.org
Message-Id: <96fe9c8a-4cb6-4058-a4be-3740e3e3cf58@googlegroups.com>
In-Reply-To: <7991599.GNC6NCM7mQ@wuerfel>
References: <1424369068-6070-1-git-send-email-ksenija.stanojevic@gmail.com> <6147170.92TzAG2Bsj@wuerfel> <CAL7P5jKjQPYvyJD2RDSV8rTFxMCaM0zjMNCXy_oEtqYEpWm2GA@mail.gmail.com>
 <7991599.GNC6NCM7mQ@wuerfel>
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: media: vino: Replace
 printk() and dprintk() with dev_dbg()
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_553_1054486504.1424425162310"
X-Google-Token: EMqBnKcF0qFOMH4qdmQ0
X-Google-IP: 212.200.53.104

------=_Part_553_1054486504.1424425162310
Content-Type: multipart/alternative; 
	boundary="----=_Part_554_1719617684.1424425162310"

------=_Part_554_1719617684.1424425162310
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hm, so I should not send this patch at all?=20

On Friday, February 20, 2015 at 10:34:55 AM UTC+1, Arnd Bergmann wrote:
>
> On Friday 20 February 2015 10:21:48 Ksenija Stanojevi=C4=87 wrote:=20
> > I based it on staging-next, like in a tutorial=20
>
> Ok, I've investigated a bit further now and found that four=20
> staging drivers have been removed in mainline that are still=20
> present in staging-next:=20
>
> drivers/staging/line6/ (moved to sound/usb)=20
> drivers/staging/media/parport/=20
> drivers/staging/media/tlg2300/=20
> drivers/staging/media/vino/=20
>
> Any patches against these could in theory still make it into=20
> Greg's tree but they would be completely pointless because they=20
> get removed with the next mainline synchronization.=20
>
>         Arnd=20
>

------=_Part_554_1719617684.1424425162310
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hm, so I should not send this patch at all?&nbsp;<br><br>O=
n Friday, February 20, 2015 at 10:34:55 AM UTC+1, Arnd Bergmann wrote:<bloc=
kquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-l=
eft: 1px #ccc solid;padding-left: 1ex;">On Friday 20 February 2015 10:21:48=
 Ksenija Stanojevi=C4=87 wrote:
<br>&gt; I based it on staging-next, like in a tutorial
<br>
<br>Ok, I've investigated a bit further now and found that four
<br>staging drivers have been removed in mainline that are still
<br>present in staging-next:
<br>
<br>drivers/staging/line6/ (moved to sound/usb)
<br>drivers/staging/media/parport/
<br>drivers/staging/media/tlg2300/
<br>drivers/staging/media/vino/
<br>
<br>Any patches against these could in theory still make it into
<br>Greg's tree but they would be completely pointless because they
<br>get removed with the next mainline synchronization.
<br>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arnd
<br></blockquote></div>
------=_Part_554_1719617684.1424425162310--

------=_Part_553_1054486504.1424425162310--

