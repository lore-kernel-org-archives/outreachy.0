X-GM-THRID: 6254256942088192000
X-Received: by 10.140.174.65 with SMTP id u62mr657257qhu.15.1457462174680;
        Tue, 08 Mar 2016 10:36:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.34 with SMTP id t31ls666595qge.98.gmail; Tue, 08 Mar
 2016 10:36:12 -0800 (PST)
X-Received: by 10.13.248.4 with SMTP id i4mr666592ywf.20.1457462172878;
        Tue, 08 Mar 2016 10:36:12 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-ob0-x232.google.com (mail-ob0-x232.google.com. [2607:f8b0:4003:c01::232])
        by gmr-mx.google.com with ESMTPS id iq8si317229igb.0.2016.03.08.10.36.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 10:36:12 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2607:f8b0:4003:c01::232 as permitted sender) client-ip=2607:f8b0:4003:c01::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2607:f8b0:4003:c01::232 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x232.google.com with SMTP id fz5so22770591obc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 10:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=qhaKHcns7EYpLe359rqUIpGk/a9HfXThBAiz9H0Q+Sc=;
        b=bz5wGD7HhTCnedQWDkFLg5sw8tfPSadAXpTrlv1BjTvNWnQMvBBbV66t4rH1cDV7Zp
         5KJ0nz70UaEMDWOREESKDVobJK2Qmgwhqt261dC9iqT8HJgHaVA+1tJV/3hD5Iyz5P3/
         e+wYsc6PJ0eAVWkpamzj4VAbSPPA7+VLWbBLsEdOo2qqe6Z0/Zrq33B9fRd4OEg1MLZ0
         Da6Y48aaA9tCOE/NZS6ZTxn4LaTmMyJ3mQYivmBMaPYFJd7W9hlJokG3YADO5yp3A9KB
         ooT9H7cCAe5xg9CoAMRXxOhJrJaCnUo+KG1bGRp53tkYKNgyCJ1esySoJqVlmFuWNnZC
         pafw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=qhaKHcns7EYpLe359rqUIpGk/a9HfXThBAiz9H0Q+Sc=;
        b=CpAfEsI3MN23aIPgrv2cRH4RG9YuupzpbmdJmMSeRNHMKYj1Cwrfgs1RJ80iavXXlu
         qfE/Fl6kk+Evup6wlhoHdg6xKHVSkrWEzK4c9WaRsnCz/WuL/PGS/buwb7PVs9wNFuEp
         ZfdmfQsXX+uj6iYMmClhRu1gFYqRX26Me0XH+cuFlQRjerz3nPZr330piCS65kLyZ9yk
         +BCCg7RhtUW04cNGFkuyYWMeRefXYgpwXksGG6NRWDRYMiV9DugEsrf9/u7HQ5yq/r38
         S9FOdO9ooVd+GcWJKavCDrbJSuipNcYPpum5B9rjJdJq0dE/OHm+fbP8SOu3oN4TN+jF
         9mhQ==
X-Gm-Message-State: AD7BkJKQx6VF4vFKcJChixuaElT7M/7ak3ixvw6fhAyG4s6ndJipdJSHOwJ76xXSus9qs2PqClgJQNNWiWY+NA==
MIME-Version: 1.0
X-Received: by 10.182.103.167 with SMTP id fx7mr18391353obb.36.1457462172615;
 Tue, 08 Mar 2016 10:36:12 -0800 (PST)
Received: by 10.76.25.131 with HTTP; Tue, 8 Mar 2016 10:36:12 -0800 (PST)
Received: by 10.76.25.131 with HTTP; Tue, 8 Mar 2016 10:36:12 -0800 (PST)
In-Reply-To: <1456182661-6726-1-git-send-email-dilekuzulmez@gmail.com>
References: <1456182661-6726-1-git-send-email-dilekuzulmez@gmail.com>
Date: Tue, 8 Mar 2016 20:36:12 +0200
Message-ID: <CAOBDAptRviyzxD1srM-8KSsTAs_d9UqF8hLWxECKf2EBuRmzKA@mail.gmail.com>
Subject: Re: [PATCH] Staging: sm750fb: Remove space after cast
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e011602f8128c23052d8ddb1d

--089e011602f8128c23052d8ddb1d
Content-Type: text/plain; charset=UTF-8

Did you check this ?
On Feb 23, 2016 1:11 AM, "Dilek Uzulmez" <dilekuzulmez@gmail.com> wrote:

> Remove unnecessary space after cast. Problem found using checkpatch.pl
> CHECK: No space is necessary after a cast
>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c
> b/drivers/staging/sm750fb/ddk750_chip.c
> index 5e6798e..0251eab 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -146,7 +146,7 @@ void setMemoryClock(unsigned int frequency)
>                         frequency = MHz(336);
>
>                 /* Calculate the divisor */
> -               divisor = (unsigned int) roundedDiv(getChipClock(),
> frequency);
> +               divisor = (unsigned int)roundedDiv(getChipClock(),
> frequency);
>
>                 /* Set the corresponding divisor in the register. */
>                 ulReg = PEEK32(CURRENT_GATE);
> --
> 1.9.1
>
>

--089e011602f8128c23052d8ddb1d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Did you check this ?</p>
<div class=3D"gmail_quote">On Feb 23, 2016 1:11 AM, &quot;Dilek Uzulmez&quo=
t; &lt;<a href=3D"mailto:dilekuzulmez@gmail.com">dilekuzulmez@gmail.com</a>=
&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Remove u=
nnecessary space after cast. Problem found using <a href=3D"http://checkpat=
ch.pl" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a><br>
CHECK: No space is necessary after a cast<br>
<br>
Signed-off-by: Dilek Uzulmez &lt;<a href=3D"mailto:dilekuzulmez@gmail.com">=
dilekuzulmez@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/sm750fb/ddk750_chip.c | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750f=
b/ddk750_chip.c<br>
index 5e6798e..0251eab 100644<br>
--- a/drivers/staging/sm750fb/ddk750_chip.c<br>
+++ b/drivers/staging/sm750fb/ddk750_chip.c<br>
@@ -146,7 +146,7 @@ void setMemoryClock(unsigned int frequency)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 frequency =3D MHz(336);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Calculate the di=
visor */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0divisor =3D (unsign=
ed int) roundedDiv(getChipClock(), frequency);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0divisor =3D (unsign=
ed int)roundedDiv(getChipClock(), frequency);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Set the correspo=
nding divisor in the register. */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ulReg =3D PEEK32(CU=
RRENT_GATE);<br>
--<br>
1.9.1<br>
<br>
</blockquote></div>

--089e011602f8128c23052d8ddb1d--

