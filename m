X-GM-THRID: 6884588339702267904
X-Received: by 2002:adf:f2c1:: with SMTP id d1mr10827663wrp.179.1602943134905;
        Sat, 17 Oct 2020 06:58:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:7d02:: with SMTP id y2ls2378533wmc.2.canary-gmail; Sat,
 17 Oct 2020 06:58:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwViEiYhRtBc0kCWeyWyfgvOebcpPDTM8o2QRdrX72Hb8ngpsmeXTZlc0l2lZVoUDmPLapd
X-Received: by 2002:a1c:960a:: with SMTP id y10mr8456276wmd.128.1602943133187;
        Sat, 17 Oct 2020 06:58:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602943133; cv=none;
        d=google.com; s=arc-20160816;
        b=txY1mIcMYIm4gXKNk5SFQrrFOzOSu3WdzZeLpgVMmVsbF0qzTbwsSMRm1eeVamU0Na
         L9pqenP83ne9r1mBQUWEqJl765rul83K/V1GFCQKeNoCfcUBndqRKYYofU9lY2X5zjsx
         2pgLRBwCzVjvFSLQPXkRP8f5sr5S+2D1jPUvnfZw0vwT0O+w/Q/+vE/EhQIzw3jjdDDn
         Lskf5xTGLgTlhk7o+Sl9ie6AuWiq5AlyOyPqNjnQbpYPHRSTUbE/4hKiQI12em8WZ1ua
         +uCY+u7wpFj7zEe7yo+ya6m2pWtBh8NS2S43EQ80rrRWdhqobk/LHcE8QUyz5kwrzrXG
         Jvjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=mbUvRjIQEwkEXP7Thn3mq5h6p7KJ//vQaHzT49+B//8=;
        b=PrAaXdFtx/YxcNHpDxb91HHGPvQxQXyjEsgVTQ8MHd3fcGzBi6wBR9AKc+r4uQ4kqt
         33Melp8AY0jYhAWocOU25uHQS6J3wHfXUJMYNJo07HimdKU5kNLuZrNg1t813K2A6wZg
         7ytKUjEFoSRoCEXby2Gg4s7nK7WNHGY0HXm0WwyItEIb6ZWzYA7pfoizPWLS1ybDtH0t
         FHgIun/ZGTwGfSVMek7V6L4zk9rsyIKgbSVoMk/bXAb3P7ezUwMzmvDl7IgoaILvpE6r
         kw5Lm4lLFR0u5LFSD/ntQSyRPPgA+WcPwXuhXKtftTrRhKDctBxO6Ha13XVkME2hVF90
         hNqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AD3go3Kr;
       spf=pass (google.com: domain of leonf008@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=leonf008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <leonf008@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id o4si29062wrx.4.2020.10.17.06.58.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2020 06:58:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of leonf008@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AD3go3Kr;
       spf=pass (google.com: domain of leonf008@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=leonf008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id 23so1450593ljv.7
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2020 06:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=mbUvRjIQEwkEXP7Thn3mq5h6p7KJ//vQaHzT49+B//8=;
        b=AD3go3Krvln6eLjCvrRQZh6IZkYw9dmOLcynPLuO3g9WPII05RPNegPLtkxVaaZ2X0
         mRMh9Q4bxaOwymWUjXTHtPvnQab4mXOccVBnsMtbx7o6S3ROqBTvz00+kxCF7jeHD/Bi
         smBVUITO8IR+3fvq01oJ+Mnvhhm0vfJO1s33xdTCyfVTolrXSh8Aq1aYNJ6BcmagUJl0
         O65Yi7u5zR8rt/ksnb6vxmYucSPuhC4w6psy+K/pJqU7xAFLOHJF3qSq9jnSE04qarY3
         qIB+cmbzDsbm9qOXjiX1rQi88Bixl6evSNR8lanFlEz06NmdodTGtbHc6e86cXgR9xGX
         CiGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=mbUvRjIQEwkEXP7Thn3mq5h6p7KJ//vQaHzT49+B//8=;
        b=cD4G0XPqTTh4kyOiAcW0DYBxPe2wxsNxW7helZm2L/k7I2Gz9r6V5i3mCCp4TIYV/I
         Bjt66/FSTz+wtUvqZY5J1/DoyOW4/oHCy7TGh/tALcQALpVeK+tC3ahaCJ8fTKvFU2is
         zJZPf505MCZTNTRh7aSF0CfSnAVUPd2LSHdU2fuE094D19xvOOCqajseuph/Ri5XKAmw
         paA+RlUmCYxAzT9P54lHHPI+1030XCov0tAJzc808YDtp/KGd4UBdoCqH9aXyOJ1r01n
         icVtMdzKvUE9nZ0YGEUWJ1WQ52+KnmsFB5JqAUBbo1czerGF7N92zoFLx/D5shqubJMK
         4LfQ==
X-Gm-Message-State: AOAM532FEgFygDl6NOEcOYOEwVMZfHiJJqvXafs/x9nyTkwMeRaoukYT
	LtGU1QYgaW1M+3hIaPtYbpMr7Itci3m5Seav6T108SQroSvq1w==
X-Received: by 2002:a2e:9c52:: with SMTP id t18mr3251374ljj.65.1602943132322;
 Sat, 17 Oct 2020 06:58:52 -0700 (PDT)
MIME-Version: 1.0
References: <20201006202903.GA8346@linux>
In-Reply-To: <20201006202903.GA8346@linux>
From: leonf08 <leonf008@gmail.com>
Date: Sat, 17 Oct 2020 15:58:41 +0200
Message-ID: <CAN+ihrq_v6OFbOrZUhHZPRTjsUO5nrnr7Kj3AHQJYSD7+oXe5g@mail.gmail.com>
Subject: Re: [PATCH 3/3] media: staging: atomisp: Corrected error handling in function
To: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000ff4f8c05b1de475b"

--000000000000ff4f8c05b1de475b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello. I=E2=80=98ve sent recently my first two patches and haven=E2=80=99t =
received any
feedback. Can I expect it. I=E2=80=99m a newbie in kernel contribution proc=
ess, so
don=E2=80=99t know all the details.
Thanks.

=D0=B2=D1=82, 6 =D0=BE=D0=BA=D1=82. 2020 =D0=B3. =D0=B2 22:29, Leonid Kushn=
ir <leonf008@gmail.com>:

> This patch fixes check of a result of 'power_up()' function call in
> function 'gc0310_s_power()' to do "error handling" instead of "success
> handling" as Dan Carpenter noted in his comment on the previous patch.
> Lines 'return gc0310_init(sd)' and 'return ret' are swapped, and direct
> value of 'ret' is checked in IF statement now.
>
> Signed-off-by: Leonid Kushnir <leonf008@gmail.com>
> ---
>  drivers/staging/media/atomisp/i2c/atomisp-gc0310.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
> b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
> index 8201c15b5769..d170d0adfea4 100644
> --- a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
> +++ b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
> @@ -874,11 +874,12 @@ static int gc0310_s_power(struct v4l2_subdev *sd,
> int on)
>
>         if (on =3D=3D 0)
>                 return power_down(sd);
> +
>         ret =3D power_up(sd);
> -       if (!ret)
> -               return gc0310_init(sd);
> +       if (ret)
> +               return ret;
>
> -       return ret;
> +       return gc0310_init(sd);
>  }
>
>  /*
> --
> 2.25.1
>
>

--000000000000ff4f8c05b1de475b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello. I=E2=80=98ve sent recently my first two patches an=
d haven=E2=80=99t received any feedback. Can I expect it. I=E2=80=99m a new=
bie in kernel contribution process, so don=E2=80=99t know all the details.<=
/div><div dir=3D"auto">Thanks.</div><div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">=D0=B2=D1=82, 6 =D0=BE=D0=BA=D1=82. 2020=
 =D0=B3. =D0=B2 22:29, Leonid Kushnir &lt;<a href=3D"mailto:leonf008@gmail.=
com">leonf008@gmail.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:=
solid;padding-left:1ex;border-left-color:rgb(204,204,204)">This patch fixes=
 check of a result of &#39;power_up()&#39; function call in<br>
function &#39;gc0310_s_power()&#39; to do &quot;error handling&quot; instea=
d of &quot;success<br>
handling&quot; as Dan Carpenter noted in his comment on the previous patch.=
<br>
Lines &#39;return gc0310_init(sd)&#39; and &#39;return ret&#39; are swapped=
, and direct<br>
value of &#39;ret&#39; is checked in IF statement now.<br>
<br>
Signed-off-by: Leonid Kushnir &lt;<a href=3D"mailto:leonf008@gmail.com" tar=
get=3D"_blank">leonf008@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/media/atomisp/i2c/atomisp-gc0310.c | 7 ++++---<br>
=C2=A01 file changed, 4 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c b/drivers/s=
taging/media/atomisp/i2c/atomisp-gc0310.c<br>
index 8201c15b5769..d170d0adfea4 100644<br>
--- a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c<br>
+++ b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c<br>
@@ -874,11 +874,12 @@ static int gc0310_s_power(struct v4l2_subdev *sd, int=
 on)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (on =3D=3D 0)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return power_down(s=
d);<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D power_up(sd);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!ret)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return gc0310_init(=
sd);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return gc0310_init(sd);<br>
=C2=A0}<br>
<br>
=C2=A0/*<br>
-- <br>
2.25.1<br>
<br>
</blockquote></div></div>

--000000000000ff4f8c05b1de475b--

