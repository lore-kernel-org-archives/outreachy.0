X-GM-THRID: 6462748484201086976
Date: Wed, 6 Sep 2017 12:48:36 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: gregkh@linuxfoundation.org, gilad@benyossef.com,
	linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	srishtishar@gmail.com
Message-Id: <0c67de4b-ba9d-4bec-8bc2-8ac462c29a5b@googlegroups.com>
In-Reply-To: <1504725863-8495-1-git-send-email-srishtishar@gmail.com>
References: <1504725863-8495-1-git-send-email-srishtishar@gmail.com>
Subject: Re: [PATCH] Staging: ccree: ssi_cipher.c: Correct spelling mistake.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3218_2056331717.1504727316260"
X-Google-Token: EJSiwc0FZZc-P5oeoDs0
X-Google-IP: 171.61.60.94

------=_Part_3218_2056331717.1504727316260
Content-Type: multipart/alternative; 
	boundary="----=_Part_3219_10484202.1504727316261"

------=_Part_3219_10484202.1504727316261
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Thursday, September 7, 2017 at 12:54:49 AM UTC+5:30, Srishti Sharma 
wrote:
>
> Correct spelling of counter in comment . 
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com> 
> --- 
>  drivers/staging/ccree/ssi_cipher.c | 2 +- 
>  1 file changed, 1 insertion(+), 1 deletion(-) 
>
> diff --git a/drivers/staging/ccree/ssi_cipher.c 
> b/drivers/staging/ccree/ssi_cipher.c 
> index 8d31a93..99232b2 100644 
> --- a/drivers/staging/ccree/ssi_cipher.c 
> +++ b/drivers/staging/ccree/ssi_cipher.c 
> @@ -702,7 +702,7 @@ static int ssi_blkcipher_complete(struct device *dev, 
>
>          ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, 
> dst); 
>
> -        /*Set the inflight couter value to local variable*/ 
> +        /*Set the inflight counter value to local variable*/ 
>          inflight_counter =  ctx_p->drvdata->inflight_counter; 
>          /*Decrease the inflight counter*/ 
>          if (ctx_p->flow_mode == BYPASS && 
> ctx_p->drvdata->inflight_counter > 0) 
> -- 
> 2.7.4 
>


Thanks for the feedback :) , I'll work on it ! 

Regards,
Srishti 

------=_Part_3219_10484202.1504727316261
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Thursday, September 7, 2017 at 12:54:49 AM UTC+=
5:30, Srishti Sharma wrote:<blockquote class=3D"gmail_quote" style=3D"margi=
n: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Cor=
rect spelling of counter in comment .
<br>
<br>Signed-off-by: Srishti Sharma &lt;<a href=3D"mailto:srishtishar@gmail.c=
om" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mail=
to:srishtishar@gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;mai=
lto:srishtishar@gmail.com&#39;;return true;">srishtishar@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/ccree/ssi_<wbr>cipher.c | 2 +-
<br>=C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>
<br>diff --git a/drivers/staging/ccree/ssi_<wbr>cipher.c b/drivers/staging/=
ccree/ssi_<wbr>cipher.c
<br>index 8d31a93..99232b2 100644
<br>--- a/drivers/staging/ccree/ssi_<wbr>cipher.c
<br>+++ b/drivers/staging/ccree/ssi_<wbr>cipher.c
<br>@@ -702,7 +702,7 @@ static int ssi_blkcipher_complete(struct device *de=
v,
<br>
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ssi_buffer_mgr_un=
map_<wbr>blkcipher_request(dev, req_ctx, ivsize, src, dst);
<br>
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*Set the inflight cou=
ter value to local variable*/
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*Set the inflight cou=
nter value to local variable*/
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0inflight_counter =
=3D =C2=A0ctx_p-&gt;drvdata-&gt;inflight_<wbr>counter;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*Decrease the in=
flight counter*/
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ctx_p-&gt;flo=
w_mode =3D=3D BYPASS &amp;&amp; ctx_p-&gt;drvdata-&gt;inflight_<wbr>counter=
 &gt; 0)
<br>--
<br>2.7.4
<br></blockquote><div><br></div><div><br></div><div>Thanks for the feedback=
 :) , I&#39;ll work on it !=C2=A0</div><div><br></div><div>Regards,</div><d=
iv>Srishti=C2=A0</div></div>
------=_Part_3219_10484202.1504727316261--

------=_Part_3218_2056331717.1504727316260--

