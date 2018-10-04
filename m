X-GM-THRID: 6608144919941873664
X-Received: by 2002:a0c:8976:: with SMTP id 51-v6mr2882245qvq.51.1538672048988;
        Thu, 04 Oct 2018 09:54:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:aee3:: with SMTP id n35-v6ls1905363qvd.11.gmail; Thu, 04
 Oct 2018 09:54:08 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61Lks7X5JD7LTdKPjxChQqURhdoFvQbMYFqcqRlPwlLtyDqAOOHgJalJIK4vwrfnDF24Hic
X-Received: by 2002:a0c:9371:: with SMTP id e46-v6mr5370916qve.14.1538672048324;
        Thu, 04 Oct 2018 09:54:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538672048; cv=none;
        d=google.com; s=arc-20160816;
        b=KcZTCUCrhu3onn489o86OpUrZYpuBzvucotjFtfQanaHUSf1smekImTCmj5gZ7oPCm
         S2GlFT1Th0IS4doWKpYGpxVTWEMiJInajkf1pujg44FVPEI14cCI18liwOfpATULLdsz
         padsut16RIvNVx5b+NYBKMZZVAccFP7tKFo7vELOn5A5/qO4GSVVM+AzJ60TyvgFirIb
         oJ9Ug7gjXvL4vkhUZcNsDtyS6kK3VgiIH5ute3GXVPc3Jo93Q0z5fMxtzENdyskvAxLy
         2299wAcExwKOeenSCUm/nxSdd5/mEcUGC8Loi9gCYT8Rnb8cWkm0unOFIGK6GQ8cQQsZ
         5QjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5D4EEDOh7WbXnX/qkEEnqwpLen4zs2x2PHvTLMhsWxg=;
        b=krDHA3K/J1QkFU6aJwQt9kjlqbcGOf8NIsYl+5tCbM7Nzlemih4w0qPaI9Ly8DOy8b
         G9Irt3bHNjGY8J9iiP5VxN/fVb39ku2lR4fKZ03lmDUMiUVvt2QQJ38oIV4PxTrzJeID
         sx0QMQ8uIptryk2bqmbrNcwL5rqlqNCLrdsK/DC4cP+NAJJEsWKIl6TImXIVJbNl4hpe
         fY78gzoTaaKtBr9HzfBvyr1f0gwCgItI7DaQ62YArDEVA27uW5Lg4tQoL0T3R5reV/iw
         vMPHR8237m8ehYSPW5BkY0q1u5f7Kq4hV+Qwr6A5k+3A67ne72CVaE3AqVGR7BGwbTca
         wfDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iu5bZeYa;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com. [2607:f8b0:4864:20::830])
        by gmr-mx.google.com with ESMTPS id r25-v6si283593qtb.0.2018.10.04.09.54.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 09:54:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) client-ip=2607:f8b0:4864:20::830;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iu5bZeYa;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x830.google.com with SMTP id v19-v6so10667952qtg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 09:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5D4EEDOh7WbXnX/qkEEnqwpLen4zs2x2PHvTLMhsWxg=;
        b=iu5bZeYa78dqmnoTHfdAnTmXK+MgM8ggIM50mMoE7qg6ruxx8k7VpyskX4UWLl82dX
         3T/JqzRkC58poBx65MNscKsRZqqOskcii7wYPNMXBsAR5aYm9p3xpsOzmeaF+L5v7SqH
         rtmx70oDUEwr5sAJgPTHEmkligNesm1H2osEH8lKO1s091EiQ3gsjZaKmILv3+QxyYaN
         ADoTlkG4U+eLNhW2rkDqYIB8PdkU6cFgl0KmkyPJu92YjyN6HKSjP1478Btrhtyai3yg
         mhD/6KCBaSP5ZLJTkbuVisaWiC6I/4gP3zIVBWgUqh23yRPXayOcoHFmNNefefN4N7o7
         4UJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5D4EEDOh7WbXnX/qkEEnqwpLen4zs2x2PHvTLMhsWxg=;
        b=Ipf7PXmEzr4prBa545QdJ+kKQsE7TGGxXNkBXOzjdSF5t9gLcW11RJ/M9VbqV5pr8g
         tTiP2dkLW+scw+BicF9QiGks0CawJ8FdjSLQQE2aDJBSnSmxw6GeNQYJJhetm68D2Sou
         R1eQ58rHG8qLf84LPR/S6dxX3pFUFzYR6zR6dnKI/P1+R7OmHOVxzvRJJW2QqSGQTLZb
         Ij52JjLW86bKsGcZIqbGruOsBgLF7qpCsTrNH11ZH7L/OoXtdsqV/fntLTKHWQuJQpZM
         JjiOHtBGRUTR6j30soXRZTjcGc7HF3vM1vFdNv0AmBHK/lWdDfwsMZV9MvStdfGEozBz
         bHig==
X-Gm-Message-State: ABuFfoiz+HMTGS7d3m4iNXZR1xkCNG15ixlyqEtf1Vf3TLIunwr61C7S
	avrJ64G9juLvKG0B28BXxOwVW8euoUh00QE68tYkfQ==
X-Received: by 2002:ac8:2595:: with SMTP id e21-v6mr5701499qte.233.1538672047667;
 Thu, 04 Oct 2018 09:54:07 -0700 (PDT)
MIME-Version: 1.0
References: <20181004121447.GA9212@armorer>
In-Reply-To: <20181004121447.GA9212@armorer>
From: Shraddha Barke <shraddha.6596@gmail.com>
Date: Thu, 4 Oct 2018 09:53:55 -0700
Message-ID: <CAO393AAQzS3Vv0fWcMQ5KGcQmwJM7=tU9oyeTY1qVqOX2a6Ujg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: fbtft: Prefer using the
 BIT macro
To: mamtashukla555@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000d3bd0605776a00f4"

--000000000000d3bd0605776a00f4
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 4, 2018 at 5:24 AM Mamta Shukla <mamtashukla555@gmail.com>
wrote:

> Replace all occurrences of (1<<x) with BIT(x) to fix checkpatch issue.
> CHECK:Prefer using the BIT macro
>
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
>
> ---
> change in v2:
>
> 'Replace' in place of 'Replacing'.
>
>
Hello Mamta,

I think this patch should've been a v3 since now you've sent 2 v2 patches.
You can add different version changes like so:

---
Changes in v3:
- Fixed Changelog
Changes in v2:
 - 'Replace' in place of 'Replacing'.


>  drivers/staging/fbtft/fbtft.h | 56
> +++++++++++++++++++++----------------------
>  1 file changed, 28 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
> index 25302ff..ac427ba 100644
> --- a/drivers/staging/fbtft/fbtft.h
> +++ b/drivers/staging/fbtft/fbtft.h
> @@ -355,39 +355,39 @@ static void __exit fbtft_driver_module_exit(void)
>                       \
>  #define DEBUG_LEVEL_6  (DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
>  #define DEBUG_LEVEL_7  0xFFFFFFFF
>
> -#define DEBUG_DRIVER_INIT_FUNCTIONS (1<<3)
> -#define DEBUG_TIME_FIRST_UPDATE     (1<<4)
> -#define DEBUG_TIME_EACH_UPDATE      (1<<5)
> -#define DEBUG_DEFERRED_IO           (1<<6)
> -#define DEBUG_FBTFT_INIT_FUNCTIONS  (1<<7)
> +#define DEBUG_DRIVER_INIT_FUNCTIONS BIT(3)
> +#define DEBUG_TIME_FIRST_UPDATE     BIT(4)
> +#define DEBUG_TIME_EACH_UPDATE      BIT(5)
> +#define DEBUG_DEFERRED_IO           BIT(6)
> +#define DEBUG_FBTFT_INIT_FUNCTIONS  BIT(7)
>
>  /* fbops */
> -#define DEBUG_FB_READ               (1<<8)
> -#define DEBUG_FB_WRITE              (1<<9)
> -#define DEBUG_FB_FILLRECT           (1<<10)
> -#define DEBUG_FB_COPYAREA           (1<<11)
> -#define DEBUG_FB_IMAGEBLIT          (1<<12)
> -#define DEBUG_FB_SETCOLREG          (1<<13)
> -#define DEBUG_FB_BLANK              (1<<14)
> +#define DEBUG_FB_READ               BIT(8)
> +#define DEBUG_FB_WRITE              BIT(9)
> +#define DEBUG_FB_FILLRECT           BIT(10)
> +#define DEBUG_FB_COPYAREA           BIT(11)
> +#define DEBUG_FB_IMAGEBLIT          BIT(12)
> +#define DEBUG_FB_SETCOLREG          BIT(13)
> +#define DEBUG_FB_BLANK              BIT(14)
>
> -#define DEBUG_SYSFS                 (1<<16)
> +#define DEBUG_SYSFS                 BIT(16)
>
>  /* fbtftops */
> -#define DEBUG_BACKLIGHT             (1<<17)
> -#define DEBUG_READ                  (1<<18)
> -#define DEBUG_WRITE                 (1<<19)
> -#define DEBUG_WRITE_VMEM            (1<<20)
> -#define DEBUG_WRITE_REGISTER        (1<<21)
> -#define DEBUG_SET_ADDR_WIN          (1<<22)
> -#define DEBUG_RESET                 (1<<23)
> -#define DEBUG_MKDIRTY               (1<<24)
> -#define DEBUG_UPDATE_DISPLAY        (1<<25)
> -#define DEBUG_INIT_DISPLAY          (1<<26)
> -#define DEBUG_BLANK                 (1<<27)
> -#define DEBUG_REQUEST_GPIOS         (1<<28)
> -#define DEBUG_FREE_GPIOS            (1<<29)
> -#define DEBUG_REQUEST_GPIOS_MATCH   (1<<30)
> -#define DEBUG_VERIFY_GPIOS          (1<<31)
> +#define DEBUG_BACKLIGHT             BIT(17)
> +#define DEBUG_READ                  BIT(18)
> +#define DEBUG_WRITE                 BIT(19)
> +#define DEBUG_WRITE_VMEM            BIT(20)
> +#define DEBUG_WRITE_REGISTER        BIT(21)
> +#define DEBUG_SET_ADDR_WIN          BIT(22)
> +#define DEBUG_RESET                 BIT(23)
> +#define DEBUG_MKDIRTY               BIT(24)
> +#define DEBUG_UPDATE_DISPLAY        BIT(25)
> +#define DEBUG_INIT_DISPLAY          BIT(26)
> +#define DEBUG_BLANK                 BIT(27)
> +#define DEBUG_REQUEST_GPIOS         BIT(28)
> +#define DEBUG_FREE_GPIOS            BIT(29)
> +#define DEBUG_REQUEST_GPIOS_MATCH   BIT(30)
> +#define DEBUG_VERIFY_GPIOS          BIT(31)
>
>  #define fbtft_init_dbg(dev, format, arg...)                  \
>  do {                                                         \
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20181004121447.GA9212%40armorer
> .
> For more options, visit https://groups.google.com/d/optout.
>


-- 
Shraddha

--000000000000d3bd0605776a00f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu=
, Oct 4, 2018 at 5:24 AM Mamta Shukla &lt;<a href=3D"mailto:mamtashukla555@=
gmail.com" target=3D"_blank">mamtashukla555@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">Replace all occurrences of (1&lt;&lt;x) w=
ith BIT(x) to fix checkpatch issue.<br>
CHECK:Prefer using the BIT macro<br>
<br>
Signed-off-by: Mamta Shukla &lt;<a href=3D"mailto:mamtashukla555@gmail.com"=
 target=3D"_blank">mamtashukla555@gmail.com</a>&gt;<br>
<br>
---<br>
change in v2:<br>
<br>
&#39;Replace&#39; in place of &#39;Replacing&#39;.<br>
<br></blockquote><div><br></div><div>Hello Mamta,</div><div><br></div><div>=
I think this patch should&#39;ve been a v3 since now you&#39;ve sent 2 v2 p=
atches. You can add different version changes like so:</div><div><br></div>=
<div>--- <br></div><div>Changes in v3:</div><div>- Fixed Changelog<br></div=
><div>Changes in v2:
<br>=C2=A0- &#39;Replace&#39; in place of &#39;Replacing&#39;.</div><div><b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">
<br>
=C2=A0drivers/staging/fbtft/fbtft.h | 56 +++++++++++++++++++++-------------=
---------<br>
=C2=A01 file changed, 28 insertions(+), 28 deletions(-)<br>
<br>
diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h<=
br>
index 25302ff..ac427ba 100644<br>
--- a/drivers/staging/fbtft/fbtft.h<br>
+++ b/drivers/staging/fbtft/fbtft.h<br>
@@ -355,39 +355,39 @@ static void __exit fbtft_driver_module_exit(void)=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
=C2=A0#define DEBUG_LEVEL_6=C2=A0 (DEBUG_LEVEL_4 | DEBUG_LEVEL_5)<br>
=C2=A0#define DEBUG_LEVEL_7=C2=A0 0xFFFFFFFF<br>
<br>
-#define DEBUG_DRIVER_INIT_FUNCTIONS (1&lt;&lt;3)<br>
-#define DEBUG_TIME_FIRST_UPDATE=C2=A0 =C2=A0 =C2=A0(1&lt;&lt;4)<br>
-#define DEBUG_TIME_EACH_UPDATE=C2=A0 =C2=A0 =C2=A0 (1&lt;&lt;5)<br>
-#define DEBUG_DEFERRED_IO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1&lt;&l=
t;6)<br>
-#define DEBUG_FBTFT_INIT_FUNCTIONS=C2=A0 (1&lt;&lt;7)<br>
+#define DEBUG_DRIVER_INIT_FUNCTIONS BIT(3)<br>
+#define DEBUG_TIME_FIRST_UPDATE=C2=A0 =C2=A0 =C2=A0BIT(4)<br>
+#define DEBUG_TIME_EACH_UPDATE=C2=A0 =C2=A0 =C2=A0 BIT(5)<br>
+#define DEBUG_DEFERRED_IO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BIT(6)<b=
r>
+#define DEBUG_FBTFT_INIT_FUNCTIONS=C2=A0 BIT(7)<br>
<br>
=C2=A0/* fbops */<br>
-#define DEBUG_FB_READ=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(1&lt;&lt;8)<br>
-#define DEBUG_FB_WRITE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&=
lt;&lt;9)<br>
-#define DEBUG_FB_FILLRECT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1&lt;&l=
t;10)<br>
-#define DEBUG_FB_COPYAREA=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1&lt;&l=
t;11)<br>
-#define DEBUG_FB_IMAGEBLIT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&lt;12)=
<br>
-#define DEBUG_FB_SETCOLREG=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&lt;13)=
<br>
-#define DEBUG_FB_BLANK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&=
lt;&lt;14)<br>
+#define DEBUG_FB_READ=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0BIT(8)<br>
+#define DEBUG_FB_WRITE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT=
(9)<br>
+#define DEBUG_FB_FILLRECT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BIT(10)<=
br>
+#define DEBUG_FB_COPYAREA=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BIT(11)<=
br>
+#define DEBUG_FB_IMAGEBLIT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT(12)<br>
+#define DEBUG_FB_SETCOLREG=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT(13)<br>
+#define DEBUG_FB_BLANK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT=
(14)<br>
<br>
-#define DEBUG_SYSFS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0(1&lt;&lt;16)<br>
+#define DEBUG_SYSFS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0BIT(16)<br>
<br>
=C2=A0/* fbtftops */<br>
-#define DEBUG_BACKLIGHT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1&=
lt;&lt;17)<br>
-#define DEBUG_READ=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (1&lt;&lt;18)<br>
-#define DEBUG_WRITE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0(1&lt;&lt;19)<br>
-#define DEBUG_WRITE_VMEM=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&l=
t;20)<br>
-#define DEBUG_WRITE_REGISTER=C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&lt;21)<br>
-#define DEBUG_SET_ADDR_WIN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&lt;22)=
<br>
-#define DEBUG_RESET=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0(1&lt;&lt;23)<br>
-#define DEBUG_MKDIRTY=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(1&lt;&lt;24)<br>
-#define DEBUG_UPDATE_DISPLAY=C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&lt;25)<br>
-#define DEBUG_INIT_DISPLAY=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&lt;26)=
<br>
-#define DEBUG_BLANK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0(1&lt;&lt;27)<br>
-#define DEBUG_REQUEST_GPIOS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1&lt;&lt;28)=
<br>
-#define DEBUG_FREE_GPIOS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&l=
t;29)<br>
-#define DEBUG_REQUEST_GPIOS_MATCH=C2=A0 =C2=A0(1&lt;&lt;30)<br>
-#define DEBUG_VERIFY_GPIOS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&lt;31)=
<br>
+#define DEBUG_BACKLIGHT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BIT=
(17)<br>
+#define DEBUG_READ=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 BIT(18)<br>
+#define DEBUG_WRITE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0BIT(19)<br>
+#define DEBUG_WRITE_VMEM=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT(20)<=
br>
+#define DEBUG_WRITE_REGISTER=C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT(21)<br>
+#define DEBUG_SET_ADDR_WIN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT(22)<br>
+#define DEBUG_RESET=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0BIT(23)<br>
+#define DEBUG_MKDIRTY=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0BIT(24)<br>
+#define DEBUG_UPDATE_DISPLAY=C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT(25)<br>
+#define DEBUG_INIT_DISPLAY=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT(26)<br>
+#define DEBUG_BLANK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0BIT(27)<br>
+#define DEBUG_REQUEST_GPIOS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BIT(28)<br>
+#define DEBUG_FREE_GPIOS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT(29)<=
br>
+#define DEBUG_REQUEST_GPIOS_MATCH=C2=A0 =C2=A0BIT(30)<br>
+#define DEBUG_VERIFY_GPIOS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT(31)<br>
<br>
=C2=A0#define fbtft_init_dbg(dev, format, arg...)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-- <br>
1.9.1<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/20181004121447.GA9212%40armorer" rel=3D"norefer=
rer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/2=
0181004121447.GA9212%40armorer</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"m=
_6149216737638423225gmail_signature" data-smartmail=3D"gmail_signature"><di=
v dir=3D"ltr">Shraddha<br></div></div></div>

--000000000000d3bd0605776a00f4--

