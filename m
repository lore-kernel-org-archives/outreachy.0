X-GM-THRID: 6673447635063406592
X-Received: by 2002:adf:e3cb:: with SMTP id k11mr1093604wrm.7.1553831950215;
        Thu, 28 Mar 2019 20:59:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:53cb:: with SMTP id a11ls166689wrw.0.gmail; Thu, 28 Mar
 2019 20:59:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyybZaaru24PArpyMH03YZvEXVlDi5Drkt7UkN/RFE1lvcYBFqj9J50Klj5m0lJXbwO2E7t
X-Received: by 2002:adf:eb01:: with SMTP id s1mr621784wrn.5.1553831949227;
        Thu, 28 Mar 2019 20:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553831949; cv=none;
        d=google.com; s=arc-20160816;
        b=P47L4cieT0Y3PS/5JEPBP1WGZUw/BeJNiH5cWp75CWtmaOFEwtgt6BbiXXPqFG/NqV
         NHlILZ/uUBfdFSQ+eaITBjy2GWgTl5fv+yp1dbpnz3iuyxYJQs6MdCRUXDc3+DigKp7e
         HOHpwcJgU2pJyBu6/D3L2VFJeQFCdpVtD/EYLG968O+qhURWRMTOYIwWH6bS19KIb3c0
         NtdDHy5hip4KqPW0b9V/3mPU5HIgyEl/tzK+JIZfpeAYJoLkcduc7xA8gUqLHaNShuJU
         aOIrSz89v3OBUEO0LCRpeDWYCSWFuZ+lm2MISgPp3gE5wHPSch+zUaDAPfF8+siKGHYk
         Hj5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=aeSthb5jGr/AoWNWxuwKswxO7pb+IrEaFQ00ihJTh40=;
        b=ppUjb3TzOdwZJyLJAkrWYu3GgOIxncKH2sJxDNowT0cvLEUesxormy/Vujou3rYrRK
         81F9fuwU9VCHNHJKEEhA0DumPk/ovbVR31N8Shb421OTw5FQZRYTAMAjtySpKlx4nXDB
         XAhDc6f/YwTWPv84Uh61QoSXBy+IOxXExvtbZ1D2uOm04ORbpZKRawt/yoMjTbFp5H7r
         MtMje3gf/911L29xi1BAxEwn0Rfqjg98+PK5S/2QaT1tWv5cvvrB0N91Fmn2kXICSO44
         QvCGmBbZ1Hl0NDw99yJzKzi/98akKRQ0SP1Dd88L8gjgjylDk6myg0lDhPU8z0YmJRyk
         yLJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PUxMw8QT;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id 7si50381wma.1.2019.03.28.20.59.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 20:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PUxMw8QT;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x143.google.com with SMTP id v14so485492lfi.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 20:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=aeSthb5jGr/AoWNWxuwKswxO7pb+IrEaFQ00ihJTh40=;
        b=PUxMw8QTA0ck1hTtYncgFjaiCL+gjZxC8FFQYdSYc/jQMT8eSYJyp8/R7NguvshhO8
         9o2hs2PXj/IJ7AnhIvGTRwGnQY3LSv/ps62gmz1ZSQ9R/Jveq9nGpkQo7eczWu2TKz8i
         X4N8NU0s7PjWbcPQAcJGlpWcxShhzsa4xBYNNUdNZbg4bwWdkoAE9vAx/olatI+yOMHD
         9HnWGcBmqaIEGsI+Tc0GbuNMQo4waO+Nld4KsgrLwfTyuKNfO8RejVvHTqtjmIHAs2HS
         0OsHbJTbysXzFKKQYYtXuH+y94rRyDdXbDopyfO0PdwTrnyJJoVZCT8UhhTUsO//kh9Y
         G2aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=aeSthb5jGr/AoWNWxuwKswxO7pb+IrEaFQ00ihJTh40=;
        b=sy1UGR/ZqhnH/eCiyFf1jNv70gRo1miS7ENmrR4yRzD4DVI2RzT+F13IoV8jUSywp4
         mjbEclPOihfI1ku8e5DhohxJK3i5zv2cwTH/93QmkRjyj5fZv3OOxz41z4wLO3B3N3oO
         V7dEMl5gH4HeBpjJ/8tb4dj0+TmGvVIKbD/wNfkqccSbZ+L8QI59+62C8sLPyURO31JE
         N1Q+N1kh+zlprfTEr7tA8RRQiiyX0rJdpfyQNQRvaIedpr6q4EU7V2XTZ8N8oDwpa40Y
         iivEWyxpZ/cwNbgV8PiPjlSHChMiSwQqZVU1wj073m1INVosCWGk8ympc7h3mmCol3SG
         iyTQ==
X-Gm-Message-State: APjAAAUPPYGS6siv7Si81NOJNVP0h7jr760XyS2HzfvbUrOeOxuf8AQe
	O1mWan5+8Iz1Rl8QtL0kkVDtLyzL85aMsA8Ovpej/g==
X-Received: by 2002:ac2:4561:: with SMTP id k1mr18924420lfm.95.1553831948543;
 Thu, 28 Mar 2019 20:59:08 -0700 (PDT)
MIME-Version: 1.0
References: <1553783090-10879-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <1553783090-10879-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Fri, 29 Mar 2019 09:28:55 +0530
Message-ID: <CANTOzWGS4xhiZPLpdRh7kaJHFTiJPzN0hGtJxmHULLMhQhtafw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: Remove unnecessary parentheses
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000556955058533b108"

--000000000000556955058533b108
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 28, 2019, 7:55 PM Payal Kshirsagar <
payal.s.kshirsagar.98@gmail.com> wrote:

> Challenge suggested by coccinelle
>
> This patch removes unnecessary parentheses while returning a value using
> an expression.
> Using following semantic patch:
>
> @@
> expression e;
> @@
>
> return
> - (
> e
> - )
> ;
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c>
> ---
> diff -u -p a/sdio.c b/sdio.c
> --- a/sdio.c
> +++ b/sdio.c
> @@ -94,7 +94,7 @@ static void _gb_sdio_set_host_caps(struc
>
>  static u32 _gb_sdio_get_host_ocr(u32 ocr)
>  {
> -       return (((ocr & GB_SDIO_VDD_165_195) ? MMC_VDD_165_195 : 0) |
> +       return ((ocr & GB_SDIO_VDD_165_195) ? MMC_VDD_165_195 : 0) |
>                 ((ocr & GB_SDIO_VDD_20_21) ? MMC_VDD_20_21 : 0) |
>                 ((ocr & GB_SDIO_VDD_21_22) ? MMC_VDD_21_22 : 0) |
>                 ((ocr & GB_SDIO_VDD_22_23) ? MMC_VDD_22_23 : 0) |
> @@ -111,7 +111,7 @@ static u32 _gb_sdio_get_host_ocr(u32 ocr
>                 ((ocr & GB_SDIO_VDD_33_34) ? MMC_VDD_33_34 : 0) |
>                 ((ocr & GB_SDIO_VDD_34_35) ? MMC_VDD_34_35 : 0) |
>                 ((ocr & GB_SDIO_VDD_35_36) ? MMC_VDD_35_36 : 0)
> -               );
> +               ;
>  }
>
>  static int gb_sdio_get_caps(struct gb_sdio_host *host)
> diff -u -p a/power_supply.c b/power_supply.c
> --- a/power_supply.c
> +++ b/power_supply.c
> @@ -337,7 +337,7 @@ static int is_psy_prop_writeable(struct
>
>  static int is_prop_valint(enum power_supply_property psp)
>  {
> -       return ((psp < POWER_SUPPLY_PROP_MODEL_NAME) ? 1 : 0);
> +       return (psp < POWER_SUPPLY_PROP_MODEL_NAME) ? 1 : 0;
>  }
>
>  static void next_interval(struct gb_power_supply *gbpsy)
> @@ -424,7 +424,7 @@ static void check_changed(struct gb_powe
>  static int total_props(struct gb_power_supply *gbpsy)
>  {
>         /* this return the intval plus the strval properties */
> -       return (gbpsy->properties_count + gbpsy->properties_count_str);
> +       return gbpsy->properties_count + gbpsy->properties_count_str;
>  }
>
>  static void prop_append(struct gb_power_supply *gbpsy,
>

--000000000000556955058533b108
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On =
Thu, Mar 28, 2019, 7:55 PM Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.k=
shirsagar.98@gmail.com">payal.s.kshirsagar.98@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">Challenge suggested by coccinelle<br>
<br>
This patch removes unnecessary parentheses while returning a value using an=
 expression.<br>
Using following semantic patch:<br>
<br>
@@ <br>
expression e;<br>
@@<br>
<br>
return<br>
- (<br>
e<br>
- )<br>
;<br>
<br>
Signed-off-by: Payal Kshirsagar &lt;payal.s.kshirsagar.98@gmail.c&gt;<br>
---<br>
diff -u -p a/sdio.c b/sdio.c<br>
--- a/sdio.c<br>
+++ b/sdio.c<br>
@@ -94,7 +94,7 @@ static void _gb_sdio_set_host_caps(struc<br>
<br>
=C2=A0static u32 _gb_sdio_get_host_ocr(u32 ocr)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return (((ocr &amp; GB_SDIO_VDD_165_195) ? MMC_=
VDD_165_195 : 0) |<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return ((ocr &amp; GB_SDIO_VDD_165_195) ? MMC_V=
DD_165_195 : 0) |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((ocr &amp; GB_SDIO=
_VDD_20_21) ? MMC_VDD_20_21 : 0) |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((ocr &amp; GB_SDIO=
_VDD_21_22) ? MMC_VDD_21_22 : 0) |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((ocr &amp; GB_SDIO=
_VDD_22_23) ? MMC_VDD_22_23 : 0) |<br>
@@ -111,7 +111,7 @@ static u32 _gb_sdio_get_host_ocr(u32 ocr<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((ocr &amp; GB_SDIO=
_VDD_33_34) ? MMC_VDD_33_34 : 0) |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((ocr &amp; GB_SDIO=
_VDD_34_35) ? MMC_VDD_34_35 : 0) |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((ocr &amp; GB_SDIO=
_VDD_35_36) ? MMC_VDD_35_36 : 0)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0;<br>
=C2=A0}<br>
<br>
=C2=A0static int gb_sdio_get_caps(struct gb_sdio_host *host)<br>
diff -u -p a/power_supply.c b/power_supply.c<br>
--- a/power_supply.c<br>
+++ b/power_supply.c<br>
@@ -337,7 +337,7 @@ static int is_psy_prop_writeable(struct<br>
<br>
=C2=A0static int is_prop_valint(enum power_supply_property psp)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return ((psp &lt; POWER_SUPPLY_PROP_MODEL_NAME)=
 ? 1 : 0);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return (psp &lt; POWER_SUPPLY_PROP_MODEL_NAME) =
? 1 : 0;<br>
=C2=A0}<br>
<br>
=C2=A0static void next_interval(struct gb_power_supply *gbpsy)<br>
@@ -424,7 +424,7 @@ static void check_changed(struct gb_powe<br>
=C2=A0static int total_props(struct gb_power_supply *gbpsy)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* this return the intval plus the strval prope=
rties */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return (gbpsy-&gt;properties_count + gbpsy-&gt;=
properties_count_str);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return gbpsy-&gt;properties_count + gbpsy-&gt;p=
roperties_count_str;<br>
=C2=A0}<br>
<br>
=C2=A0static void prop_append(struct gb_power_supply *gbpsy,<br>
</blockquote></div>

--000000000000556955058533b108--

