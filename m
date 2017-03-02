X-GM-THRID: 6392997475785900032
Date: Thu, 2 Mar 2017 13:21:18 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: marvin24@gmx.de, gregkh@linuxfoundation.org, ac100@lists.launchpad.net,
	linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Message-Id: <49976d5d-eecd-48c0-bae9-36f14ca8a298@googlegroups.com>
In-Reply-To: <20170302201511.GA5080@singhal-Inspiron-5558>
References: <20170302201511.GA5080@singhal-Inspiron-5558>
Subject: Re: [PATCH] staging: nvec: Remove unnecessary cast on void pointer
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1595_357217965.1488489678597"
X-Google-Token: EM6Z4sUFM-REjc71QeU0
X-Google-IP: 14.139.82.6

------=_Part_1595_357217965.1488489678597
Content-Type: multipart/alternative; 
	boundary="----=_Part_1596_314395313.1488489678597"

------=_Part_1596_314395313.1488489678597
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Please ignore this patch.
I have send this again as a part of patch series.

On Friday, March 3, 2017 at 1:45:17 AM UTC+5:30, SIMRAN SINGHAL wrote:
>
> The following Coccinelle script was used to detect this: 
>
> @r@ 
> expression x; 
> void* e; 
> type T; 
> identifier f; 
> @@ 
> ( 
>   *((T *)e) 
> | 
>   ((T *)x)[...] 
> | 
>   ((T*)x)->f 
> | 
> - (T*) 
>   e 
> ) 
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com> 
> --- 
>  drivers/staging/nvec/nvec_kbd.c | 2 +- 
>  1 file changed, 1 insertion(+), 1 deletion(-) 
>
> diff --git a/drivers/staging/nvec/nvec_kbd.c 
> b/drivers/staging/nvec/nvec_kbd.c 
> index e881e6b..a01f486 100644 
> --- a/drivers/staging/nvec/nvec_kbd.c 
> +++ b/drivers/staging/nvec/nvec_kbd.c 
> @@ -58,7 +58,7 @@ static int nvec_keys_notifier(struct notifier_block *nb, 
>                                unsigned long event_type, void *data) 
>  { 
>          int code, state; 
> -        unsigned char *msg = (unsigned char *)data; 
> +        unsigned char *msg = data; 
>   
>          if (event_type == NVEC_KB_EVT) { 
>                  int _size = (msg[0] & (3 << 5)) >> 5; 
> -- 
> 2.7.4 
>
>
------=_Part_1596_314395313.1488489678597
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please ignore this patch.<div>I have send this again as a =
part of patch series.<br><br>On Friday, March 3, 2017 at 1:45:17 AM UTC+5:3=
0, SIMRAN SINGHAL wrote:<blockquote class=3D"gmail_quote" style=3D"margin: =
0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">The fo=
llowing Coccinelle script was used to detect this:
<br>
<br>@r@
<br>expression x;
<br>void* e;
<br>type T;
<br>identifier f;
<br>@@
<br>(
<br>=C2=A0 *((T *)e)
<br>|
<br>=C2=A0 ((T *)x)[...]
<br>|
<br>=C2=A0 ((T*)x)-&gt;f
<br>|
<br>- (T*)
<br>=C2=A0 e
<br>)
<br>
<br>Signed-off-by: simran singhal &lt;<a href=3D"mailto:singhalsimran0@gmai=
l.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;m=
ailto:singhalsimran0@gmail.com&#39;;return true;" onclick=3D"this.href=3D&#=
39;mailto:singhalsimran0@gmail.com&#39;;return true;">singhalsimran0@gmail.=
com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/nvec/nvec_<wbr>kbd.c | 2 +-
<br>=C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>
<br>diff --git a/drivers/staging/nvec/nvec_<wbr>kbd.c b/drivers/staging/nve=
c/nvec_<wbr>kbd.c
<br>index e881e6b..a01f486 100644
<br>--- a/drivers/staging/nvec/nvec_<wbr>kbd.c
<br>+++ b/drivers/staging/nvec/nvec_<wbr>kbd.c
<br>@@ -58,7 +58,7 @@ static int nvec_keys_notifier(struct notifier_block *=
nb,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long event_type, void *data)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int code, state;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned char *msg =3D=
 (unsigned char *)data;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned char *msg =3D=
 data;
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (event_type =
=3D=3D NVEC_KB_EVT) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int _size =3D (msg[0] &amp; (3 &lt;&lt; 5)=
) &gt;&gt; 5;
<br>--=20
<br>2.7.4
<br>
<br></blockquote></div></div>
------=_Part_1596_314395313.1488489678597--

------=_Part_1595_357217965.1488489678597--

