X-GM-THRID: 6254220636972908544
X-Received: by 10.66.142.135 with SMTP id rw7mr689497pab.20.1457462195622;
        Tue, 08 Mar 2016 10:36:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.182 with SMTP id c51ls588386qga.60.gmail; Tue, 08 Mar
 2016 10:36:33 -0800 (PST)
X-Received: by 10.31.160.209 with SMTP id j200mr677666vke.6.1457462193952;
        Tue, 08 Mar 2016 10:36:33 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-oi0-x22b.google.com (mail-oi0-x22b.google.com. [2607:f8b0:4003:c06::22b])
        by gmr-mx.google.com with ESMTPS id im4si293170igb.2.2016.03.08.10.36.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 10:36:33 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2607:f8b0:4003:c06::22b as permitted sender) client-ip=2607:f8b0:4003:c06::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2607:f8b0:4003:c06::22b as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x22b.google.com with SMTP id d205so17192320oia.0
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 10:36:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=pOe4xxugW1ZxaIkrNpfCF6r63ZPnCCugdgyRi8/8eiM=;
        b=LEYQSWnFPIhJSKI9Hi0AuCa+guAH0ZYf5qGIPSfW/o7+Bv4+p5AAosvn9CgTJqgd+L
         oc0gy3mimv1kmQ5YdgRihbT6gAj+wtqapMi+Uz7WGQPo4fU4ANRqYuher+R9iMESPv4Y
         Nqrp1dpGBmZeYRt3e9ZiOlExUOXass7IDBkZOv2fgmZReCw4ZyMa9nm9aft50iaat+Tg
         M+fxP5LzHAYiPgNk6Td9JaUBbz1a5rPNHnHZBwq0cxC23lGF0S5vw+jmRmDKmYrh37Lk
         kUYLyKtWEvFJyhCM/UHQxQbq5dcCCdACBn8X5YuVw/LXk2gy+2ZeHdLjDyEq11pdkE2Q
         0leg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=pOe4xxugW1ZxaIkrNpfCF6r63ZPnCCugdgyRi8/8eiM=;
        b=NVHv/6esMMLK5RI3RtfqaY3cZT3sN6lXuuo1StaqtrBzVuWVpuGZxB7B5VpJcD7ZV1
         u8OE5EeDxk/26N5BiOtK49Icq2u0XoOePzyogjzzcwgBuY7YAiDP2+KtCuNfMkp5RDtI
         XDb0G4zWrWGAJKfT9uqw+EaF0CfwX+Lj6pdZ5YqbqGig65KkYJrKpK+T4m5wycj8Dsrs
         XIlq84CAW6WSIntOxIkcHc4p+KKw/nBE3/ME3UbcWT/60FyW1d5EdNMzSJWk53ZFxxGl
         Oyx0nn30eQBAbBO/BeoeY7Yuu5vkqvs/ATJjD9uzZzGHuFEWoM9VsKg0FA6qeDx2P4Wx
         RRrg==
X-Gm-Message-State: AD7BkJJZFxqcmn5LDj8ClFnquq1N6vUOxfIuZPDBxm9IZZYyF2PvIA+pqVDg11E7R73LZvU6O9nGco07D39o8w==
MIME-Version: 1.0
X-Received: by 10.202.199.11 with SMTP id x11mr2383837oif.21.1457462193717;
 Tue, 08 Mar 2016 10:36:33 -0800 (PST)
Received: by 10.76.25.131 with HTTP; Tue, 8 Mar 2016 10:36:33 -0800 (PST)
Received: by 10.76.25.131 with HTTP; Tue, 8 Mar 2016 10:36:33 -0800 (PST)
In-Reply-To: <1456174208-5179-1-git-send-email-dilekuzulmez@gmail.com>
References: <1456174208-5179-1-git-send-email-dilekuzulmez@gmail.com>
Date: Tue, 8 Mar 2016 20:36:33 +0200
Message-ID: <CAOBDApv1rNRsU7RiA2E2=k+emF8jUYMLD+N1ciTbL3gsoxdOYg@mail.gmail.com>
Subject: Re: [PATCH] Staging: goldfish: Add space around '+'
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1137d9825487ad052d8ddc8b

--001a1137d9825487ad052d8ddc8b
Content-Type: text/plain; charset=UTF-8

Did you check this ?
On Feb 22, 2016 10:50 PM, "Dilek Uzulmez" <dilekuzulmez@gmail.com> wrote:

> Add space around operator '+'. Problem found using checkpatch.pl
> CHECK: spaces preferred around that '+' (ctx:VxV)
>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/goldfish/goldfish_audio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/goldfish/goldfish_audio.c
> b/drivers/staging/goldfish/goldfish_audio.c
> index b0927e4..f1e1838 100644
> --- a/drivers/staging/goldfish/goldfish_audio.c
> +++ b/drivers/staging/goldfish/goldfish_audio.c
> @@ -63,7 +63,7 @@ struct goldfish_audio {
>  #define AUDIO_READ(data, addr)         (readl(data->reg_base + addr))
>  #define AUDIO_WRITE(data, addr, x)     (writel(x, data->reg_base + addr))
>  #define AUDIO_WRITE64(data, addr, addr2, x)    \
> -       (gf_write_dma_addr((x), data->reg_base + addr,
> data->reg_base+addr2))
> +       (gf_write_dma_addr((x), data->reg_base + addr, data->reg_base +
> addr2))
>
>  /*
>   *  temporary variable used between goldfish_audio_probe() and
> --
> 1.9.1
>
>

--001a1137d9825487ad052d8ddc8b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Did you check this ?</p>
<div class=3D"gmail_quote">On Feb 22, 2016 10:50 PM, &quot;Dilek Uzulmez&qu=
ot; &lt;<a href=3D"mailto:dilekuzulmez@gmail.com">dilekuzulmez@gmail.com</a=
>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Add spa=
ce around operator &#39;+&#39;. Problem found using <a href=3D"http://check=
patch.pl" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a><br>
CHECK: spaces preferred around that &#39;+&#39; (ctx:VxV)<br>
<br>
Signed-off-by: Dilek Uzulmez &lt;<a href=3D"mailto:dilekuzulmez@gmail.com">=
dilekuzulmez@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/goldfish/goldfish_audio.c | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/drivers/staging/goldfish/goldfish_audio.c b/drivers/staging/go=
ldfish/goldfish_audio.c<br>
index b0927e4..f1e1838 100644<br>
--- a/drivers/staging/goldfish/goldfish_audio.c<br>
+++ b/drivers/staging/goldfish/goldfish_audio.c<br>
@@ -63,7 +63,7 @@ struct goldfish_audio {<br>
=C2=A0#define AUDIO_READ(data, addr)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(read=
l(data-&gt;reg_base + addr))<br>
=C2=A0#define AUDIO_WRITE(data, addr, x)=C2=A0 =C2=A0 =C2=A0(writel(x, data=
-&gt;reg_base + addr))<br>
=C2=A0#define AUDIO_WRITE64(data, addr, addr2, x)=C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0(gf_write_dma_addr((x), data-&gt;reg_base + add=
r, data-&gt;reg_base+addr2))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0(gf_write_dma_addr((x), data-&gt;reg_base + add=
r, data-&gt;reg_base + addr2))<br>
<br>
=C2=A0/*<br>
=C2=A0 *=C2=A0 temporary variable used between goldfish_audio_probe() and<b=
r>
--<br>
1.9.1<br>
<br>
</blockquote></div>

--001a1137d9825487ad052d8ddc8b--

