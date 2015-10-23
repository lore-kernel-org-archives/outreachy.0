X-GM-THRID: 6208828760687378432
X-Received: by 10.194.82.193 with SMTP id k1mr905618wjy.2.1445607208936;
        Fri, 23 Oct 2015 06:33:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.205.7 with SMTP id d7ls437701lfg.82.gmail; Fri, 23 Oct 2015
 06:33:27 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr4868702lbp.24.1445607207919;
        Fri, 23 Oct 2015 06:33:27 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id hs5si127269wib.1.2015.10.23.06.33.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 06:33:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id ll6so31758752wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 06:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=5XKL6t5MYmyjrfE4643/tpNVbaBDN735BkJ+UT1AfZw=;
        b=whc21Mrk07pEpcHyxW9NCB6KXtRk36iz+q9L/4N2RErfNnJruOxTSXwPIpWCxfAy7R
         o12/Us/rlUz0ZtDth+j0dTRtulp5CyniUeqNNc4P/fHSFFf+fl7I5jx8ZZS3Q07LJjap
         IA0z+pFHuKNjKyk3snUArcmUeHCfYUM/sJa3ptbtuShkVl8yGC+VClRl9ipBXAHDK+mt
         L6/hHn7XZ/d2uH1p1MumF5uQOFnJLmofhwXJtvE5tOyKFjAMmHHiJIxMn22GI+23KRfm
         z0w5Mlo7C9lnSgi9ehk0ELoZldMR7X2cFJGM/uJeOtmosYjqgRbRJ8tEMTqje6dgrJ44
         pnYA==
MIME-Version: 1.0
X-Received: by 10.180.231.42 with SMTP id td10mr4607629wic.19.1445607207718;
 Fri, 23 Oct 2015 06:33:27 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Fri, 23 Oct 2015 06:33:27 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Fri, 23 Oct 2015 06:33:27 -0700 (PDT)
In-Reply-To: <1445605588-16640-1-git-send-email-shraddha.6596@gmail.com>
References: <1445605588-16640-1-git-send-email-shraddha.6596@gmail.com>
Date: Fri, 23 Oct 2015 19:03:27 +0530
Message-ID: <CAK-LDb+8RnwEbL95WiS0ednY3NCENOe=tnCoRekkJKEoEjOa0w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Use put_unaligned_le32
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1134daae19d2070522c5a8f4

--001a1134daae19d2070522c5a8f4
Content-Type: text/plain; charset=UTF-8

On 23 Oct 2015 18:36, "Shraddha Barke" <shraddha.6596@gmail.com> wrote:
>
> Introduce the use of function put_unaligned_le32.
>
> Coccinelle semantic patch used -

This is not whole patch which I wrote. So, it could be good to write
'simplified semantic patch'.

Also, you can check the whole patch in my github account if you are
interested. :)

> @@ identifier tmp; expression ptr; expression y,e; type T; @@
>
> - tmp = cpu_to_le32(y);
>
>   <+... when != tmp
> - memcpy(ptr, (T)&tmp, ...);
> + put_unaligned_le32(y,ptr);
>   ...+>
> ? tmp = e
>
> @@ type T; identifier tmp; @@
>
> - T tmp;
> ...when != tmp
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/rtl8723au/hal/rtl8723a_cmd.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
b/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
> index 9733aa6..1662c03c 100644
> --- a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
> +++ b/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
> @@ -127,8 +127,7 @@ int rtl8723a_set_raid_cmd(struct rtw_adapter
*padapter, u32 mask, u8 arg)
>         u8 buf[5];
>
>         memset(buf, 0, 5);
> -       mask = cpu_to_le32(mask);
> -       memcpy(buf, &mask, 4);
> +       put_unaligned_le32(mask, buf);
>         buf[4]  = arg;
>
>         FillH2CCmd(padapter, MACID_CONFIG_EID, 5, buf);
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups
"outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
https://groups.google.com/d/msgid/outreachy-kernel/1445605588-16640-1-git-send-email-shraddha.6596%40gmail.com
.
> For more options, visit https://groups.google.com/d/optout.

--001a1134daae19d2070522c5a8f4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On 23 Oct 2015 18:36, &quot;Shraddha Barke&quot; &lt;<a href=3D"mailto:shra=
ddha.6596@gmail.com">shraddha.6596@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Introduce the use of function put_unaligned_le32.<br>
&gt;<br>
&gt; Coccinelle semantic patch used -</p>
<p dir=3D"ltr">This is not whole patch which I wrote. So, it could be good =
to write &#39;simplified semantic patch&#39;. </p>
<p dir=3D"ltr">Also, you can check the whole patch in my github account if =
you are interested. :)</p>
<p dir=3D"ltr">&gt; @@ identifier tmp; expression ptr; expression y,e; type=
 T; @@<br>
&gt;<br>
&gt; - tmp =3D cpu_to_le32(y);<br>
&gt;<br>
&gt; =C2=A0 &lt;+... when !=3D tmp<br>
&gt; - memcpy(ptr, (T)&amp;tmp, ...);<br>
&gt; + put_unaligned_le32(y,ptr);<br>
&gt; =C2=A0 ...+&gt;<br>
&gt; ? tmp =3D e<br>
&gt;<br>
&gt; @@ type T; identifier tmp; @@<br>
&gt;<br>
&gt; - T tmp;<br>
&gt; ...when !=3D tmp<br>
&gt;<br>
&gt; Signed-off-by: Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmai=
l.com">shraddha.6596@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; =C2=A0drivers/staging/rtl8723au/hal/rtl8723a_cmd.c | 3 +--<br>
&gt; =C2=A01 file changed, 1 insertion(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c b/drivers/st=
aging/rtl8723au/hal/rtl8723a_cmd.c<br>
&gt; index 9733aa6..1662c03c 100644<br>
&gt; --- a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c<br>
&gt; +++ b/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c<br>
&gt; @@ -127,8 +127,7 @@ int rtl8723a_set_raid_cmd(struct rtw_adapter *pada=
pter, u32 mask, u8 arg)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 buf[5];<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 memset(buf, 0, 5);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0mask =3D cpu_to_le32(mask);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(buf, &amp;mask, 4);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0put_unaligned_le32(mask, buf);<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 buf[4]=C2=A0 =3D arg;<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 FillH2CCmd(padapter, MACID_CONFIG_EID, 5, =
buf);<br>
&gt; --<br>
&gt; 2.1.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1445605588-16640-1-git-send-email-shraddha=
.6596%40gmail.com">https://groups.google.com/d/msgid/outreachy-kernel/14456=
05588-16640-1-git-send-email-shraddha.6596%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
>https://groups.google.com/d/optout</a>.<br>
</p>

--001a1134daae19d2070522c5a8f4--

