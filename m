X-GM-THRID: 6393291379359875072
Date: Fri, 3 Mar 2017 07:30:29 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: gregkh@linuxfoundation.org, david.kershner@unisys.com,
	sparmaintainer@unisys.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com
Message-Id: <60e2e77a-a0e2-4d7b-a5e1-955cea241c48@googlegroups.com>
In-Reply-To: <1488554960-8697-1-git-send-email-singhalsimran0@gmail.com>
References: <1488554960-8697-1-git-send-email-singhalsimran0@gmail.com>
Subject: Re: [PATCH v2 1/3] staging: wlan-ng: Replace "the the " with "the"
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_662_452369747.1488555029276"
X-Google-Token: EJWY5sUFSa5vzfGxeIY0
X-Google-IP: 14.139.82.6

------=_Part_662_452369747.1488555029276
Content-Type: multipart/alternative; 
	boundary="----=_Part_663_684807958.1488555029276"

------=_Part_663_684807958.1488555029276
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Please Ignore this patch

On Friday, March 3, 2017 at 8:59:25 PM UTC+5:30, SIMRAN SINGHAL wrote:
>
> This patch replace "the the " with "the". The replacement couldn't be 
> automated because sometimes the first "the" was meant to be another 
> word. 
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com> 
> --- 
>  drivers/staging/wlan-ng/prism2sta.c | 2 +- 
>  1 file changed, 1 insertion(+), 1 deletion(-) 
>
> diff --git a/drivers/staging/wlan-ng/prism2sta.c 
> b/drivers/staging/wlan-ng/prism2sta.c 
> index 82d3a70..3ef85ac 100644 
> --- a/drivers/staging/wlan-ng/prism2sta.c 
> +++ b/drivers/staging/wlan-ng/prism2sta.c 
> @@ -1310,7 +1310,7 @@ void prism2sta_processing_defer(struct work_struct 
> *data) 
>                  /* This one indicates that the MAC has decided to and 
>                   * successfully completed a change to another AP.  We 
>                   * should probably implement a reassociation indication 
> -                 * in response to this one.  I'm thinking that the the 
> +                 * in response to this one.  I'm thinking that the 
>                   * p80211 layer needs to be notified in case of 
>                   * buffering/queueing issues.  User mode also needs to be 
>                   * notified so that any BSS dependent elements can be 
> -- 
> 2.7.4 
>
>
------=_Part_663_684807958.1488555029276
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please Ignore this patch<br><br>On Friday, March 3, 2017 a=
t 8:59:25 PM UTC+5:30, SIMRAN SINGHAL wrote:<blockquote class=3D"gmail_quot=
e" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;paddin=
g-left: 1ex;">This patch replace &quot;the the &quot; with &quot;the&quot;.=
 The replacement couldn&#39;t be
<br>automated because sometimes the first &quot;the&quot; was meant to be a=
nother
<br>word.
<br>
<br>Signed-off-by: simran singhal &lt;<a href=3D"mailto:singhalsimran0@gmai=
l.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;m=
ailto:singhalsimran0@gmail.com&#39;;return true;" onclick=3D"this.href=3D&#=
39;mailto:singhalsimran0@gmail.com&#39;;return true;">singhalsimran0@gmail.=
com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/wlan-ng/<wbr>prism2sta.c | 2 +-
<br>=C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>
<br>diff --git a/drivers/staging/wlan-ng/<wbr>prism2sta.c b/drivers/staging=
/wlan-ng/<wbr>prism2sta.c
<br>index 82d3a70..3ef85ac 100644
<br>--- a/drivers/staging/wlan-ng/<wbr>prism2sta.c
<br>+++ b/drivers/staging/wlan-ng/<wbr>prism2sta.c
<br>@@ -1310,7 +1310,7 @@ void prism2sta_processing_defer(<wbr>struct work_=
struct *data)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* This one indicates that the MAC has dec=
ided to and
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * successfully completed a change to anot=
her AP. =C2=A0We
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * should probably implement a reassociati=
on indication
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 * in response to this one. =C2=A0I&#39;m thinki=
ng that the the
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 * in response to this one. =C2=A0I&#39;m thinki=
ng that the
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * p80211 layer needs to be notified in ca=
se of
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * buffering/queueing issues. =C2=A0User m=
ode also needs to be
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * notified so that any BSS dependent elem=
ents can be
<br>--=20
<br>2.7.4
<br>
<br></blockquote></div>
------=_Part_663_684807958.1488555029276--

------=_Part_662_452369747.1488555029276--

