X-GM-THRID: 6608122280379678720
X-Received: by 2002:a62:c29a:: with SMTP id w26-v6mr586206pfk.13.1538574880482;
        Wed, 03 Oct 2018 06:54:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:28ab:: with SMTP id f40-v6ls628958plb.9.gmail; Wed,
 03 Oct 2018 06:54:39 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60uZOyyUdULcPYwPUu5TSrKxwFh7Xoa6SIfeocFXzZUnFERDJG/yQqfn7NhYLKv8x/SV08+
X-Received: by 2002:a17:902:9a09:: with SMTP id v9-v6mr699925plp.37.1538574879210;
        Wed, 03 Oct 2018 06:54:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538574879; cv=none;
        d=google.com; s=arc-20160816;
        b=QDTKJAZvSqmyXg4f4KxibXY87pT8x91jKJMcNtp/BUeI3tiyqnhbWMvFNb2rpG/Yxb
         88n8ba3tSxTFRr2WLlIQ/qyoXMIYPvFftNVqVekbdTqISyNPbPSjlG8wOdsE6+/PpljX
         pv1TfKgCTCWhAmOwPRt4GP75h0V23fZElk6COpR1HaYo5M+OB7dhUmTpj6CsBdsv65DX
         mDnBm0K21ZBTNjgNFpgUiQesmVUPcjBQbt3FdjyUZfqdxRm8XlYG+yj8TqPPogfe3tuf
         RPgXrwPwZygLX/S7IgYqZHT4Bcd9d9Ma75AM+5uMMJFsRHlo5BjOciSJgRdu+jA1abZ5
         8o0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2tLCHJR8oUN8500cAsP5c+zd/00mUyVqJ4G0WHq+aN4=;
        b=Sr/tl8Oe1TRiUW/tXsfJagUnZO7sYH0po2Zk6L/FASfx5WVobmRLkRPJWiukYX3vRO
         pHfU1035JRowja1K6/tER0yAWpvNnenZY5XcWU88jUt6ASNLtUcbfnCW44Ve/t2zmw5l
         Yo1vM7iEd2eJbhieNZA5MqaVMebYzYUzmNi9jtAlDUAKnJ9+jBEUQuXppkF1Ep8ePdn/
         WOmN/29i787/K/mdCrMp5Rk3uKtykRi/TJCMmbG4lsm0FC7DiMqbL2ifQZoV6HVNhb0e
         rmEjnDNUzwS3PSrsyn4CsjiRF0GQcjN2CVlIGyQi6vwvmvEks4PJKQdh8WM6NJ92BEa4
         trKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i2AcGxqV;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-it1-x12c.google.com (mail-it1-x12c.google.com. [2607:f8b0:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id q199-v6si67440pgq.0.2018.10.03.06.54.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Oct 2018 06:54:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) client-ip=2607:f8b0:4864:20::12c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i2AcGxqV;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x12c.google.com with SMTP id 74-v6so8394447itw.1
        for <outreachy-kernel@googlegroups.com>; Wed, 03 Oct 2018 06:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2tLCHJR8oUN8500cAsP5c+zd/00mUyVqJ4G0WHq+aN4=;
        b=i2AcGxqVcyQFE1biyxzD9bTCeVwKCn2RxizOsEcu+zdwT9gcBWKbE58rxWI2qgRQPB
         /ooQOeee4x+X9dhrXKmjocI+NBQ9+URbDJpbVHCUjdlsr07diWzZXoViHQGUzJSj6DSc
         WiDEXVU84fZsd2g2+D9gtvnTHw4mgMsKOYhNYT2SnPWsd85K4dL3YL1uHgjY5JS7UDsE
         nID9ZVYre39IV7SNEyC1IUnJ5QRe9iaaWwUEt0j9DrPkvN8QGh7jyO50JKMi9G+m0DFl
         jCq6if6ZUnlzuEbgHavwn0I8JnUB8UaE8rMLFEt9hTazZ2ZaZBkL4wj5P1PQU4hVdVhW
         vGdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2tLCHJR8oUN8500cAsP5c+zd/00mUyVqJ4G0WHq+aN4=;
        b=iQFWReDmn0nArThwLmKV5ZJKP3A/YU1FzVoXsG7QeQO9cbw488d7MRu6oaewpFJcmK
         aJ+BzEnMqTINSNtEyOobZFto/wmwmIV0dsbe2nJyDe5ThvsSJ2iW1HR5zHf/tNAY9yVj
         ERKJLPlvbPTKgvM3Z6WMCdfISYm5FIPpT43PzJba/3AdH82boo+nSn1NNuSIjXZwZFnl
         IaLNFeLrV/qAhNzLOG4Bgp2FC77QBtDxkU6ouix2LgDrEMHO/4ypx8j6M+dqb/5UEGm+
         GQ9RZZ2uvOhEEurj7DqCyTMENslIHA2ZjW38gBtdvzh4jMlHAOT8N1FfwHtFTssuOlgI
         xIpA==
X-Gm-Message-State: ABuFfojoWffsRaWd+3EktcCUnRF0g7pfMp75KhyfZqktkmPvm2DGiOBI
	C740tmdHIGz6mX1xydOPnXj74QgSjAc04jANJmM=
X-Received: by 2002:a24:2487:: with SMTP id f129-v6mr1338376ita.51.1538574878764;
 Wed, 03 Oct 2018 06:54:38 -0700 (PDT)
MIME-Version: 1.0
References: <20181003132917.GA29977@armorer> <alpine.DEB.2.20.1810031540180.2839@hadrien>
In-Reply-To: <alpine.DEB.2.20.1810031540180.2839@hadrien>
From: Mamta Shukla <mamtashukla555@gmail.com>
Date: Wed, 3 Oct 2018 19:07:28 +0530
Message-ID: <CAMNCNOVmRKRhY=d5H-pPu8eM0Fsg+-XJDwf5PzAcuNHGmwiq9Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Adding spaces around '<<'
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000001bf2ce0577536115"

--0000000000001bf2ce0577536115
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 3, 2018 at 7:10 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Wed, 3 Oct 2018, Mamta Shukla wrote:
>
> > Adding spaces around '<<' to fix checkpatch issue.
> > CHECK: spaces preferred around that '<<' (ctx:VxV)
>
> >It looks like the BIT macro could actually be mre useful here.
>
> >julia
>
Ok, I will make the change.
I need to write new patch, right? Because another version of this patch may
conflict the subject.

-Mamta

>
> >
> > Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> > ---
> >  drivers/staging/fbtft/fbtft.h | 56
> +++++++++++++++++++++----------------------
> >  1 file changed, 28 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/staging/fbtft/fbtft.h
> b/drivers/staging/fbtft/fbtft.h
> > index 25302ff..a3db23b 100644
> > --- a/drivers/staging/fbtft/fbtft.h
> > +++ b/drivers/staging/fbtft/fbtft.h
> > @@ -355,39 +355,39 @@ static void __exit fbtft_driver_module_exit(void)
>                         \
> >  #define DEBUG_LEVEL_6        (DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
> >  #define DEBUG_LEVEL_7        0xFFFFFFFF
> >
> > -#define DEBUG_DRIVER_INIT_FUNCTIONS (1<<3)
> > -#define DEBUG_TIME_FIRST_UPDATE     (1<<4)
> > -#define DEBUG_TIME_EACH_UPDATE      (1<<5)
> > -#define DEBUG_DEFERRED_IO           (1<<6)
> > -#define DEBUG_FBTFT_INIT_FUNCTIONS  (1<<7)
> > +#define DEBUG_DRIVER_INIT_FUNCTIONS  (1 << 3)
> > +#define DEBUG_TIME_FIRST_UPDATE      (1 << 4)
> > +#define DEBUG_TIME_EACH_UPDATE       (1 << 5)
> > +#define DEBUG_DEFERRED_IO            (1 << 6)
> > +#define DEBUG_FBTFT_INIT_FUNCTIONS   (1 << 7)
> >
> >  /* fbops */
> > -#define DEBUG_FB_READ               (1<<8)
> > -#define DEBUG_FB_WRITE              (1<<9)
> > -#define DEBUG_FB_FILLRECT           (1<<10)
> > -#define DEBUG_FB_COPYAREA           (1<<11)
> > -#define DEBUG_FB_IMAGEBLIT          (1<<12)
> > -#define DEBUG_FB_SETCOLREG          (1<<13)
> > -#define DEBUG_FB_BLANK              (1<<14)
> > +#define DEBUG_FB_READ                (1 << 8)
> > +#define DEBUG_FB_WRITE               (1 << 9)
> > +#define DEBUG_FB_FILLRECT            (1 << 10)
> > +#define DEBUG_FB_COPYAREA            (1 << 11)
> > +#define DEBUG_FB_IMAGEBLIT           (1 << 12)
> > +#define DEBUG_FB_SETCOLREG           (1 << 13)
> > +#define DEBUG_FB_BLANK               (1 << 14)
> >
> > -#define DEBUG_SYSFS                 (1<<16)
> > +#define DEBUG_SYSFS                  (1 << 16)
> >
> >  /* fbtftops */
> > -#define DEBUG_BACKLIGHT             (1<<17)
> > -#define DEBUG_READ                  (1<<18)
> > -#define DEBUG_WRITE                 (1<<19)
> > -#define DEBUG_WRITE_VMEM            (1<<20)
> > -#define DEBUG_WRITE_REGISTER        (1<<21)
> > -#define DEBUG_SET_ADDR_WIN          (1<<22)
> > -#define DEBUG_RESET                 (1<<23)
> > -#define DEBUG_MKDIRTY               (1<<24)
> > -#define DEBUG_UPDATE_DISPLAY        (1<<25)
> > -#define DEBUG_INIT_DISPLAY          (1<<26)
> > -#define DEBUG_BLANK                 (1<<27)
> > -#define DEBUG_REQUEST_GPIOS         (1<<28)
> > -#define DEBUG_FREE_GPIOS            (1<<29)
> > -#define DEBUG_REQUEST_GPIOS_MATCH   (1<<30)
> > -#define DEBUG_VERIFY_GPIOS          (1<<31)
> > +#define DEBUG_BACKLIGHT              (1 << 17)
> > +#define DEBUG_READ                   (1 << 18)
> > +#define DEBUG_WRITE                  (1 << 19)
> > +#define DEBUG_WRITE_VMEM             (1 << 20)
> > +#define DEBUG_WRITE_REGISTER         (1 << 21)
> > +#define DEBUG_SET_ADDR_WIN           (1 << 22)
> > +#define DEBUG_RESET                  (1 << 23)
> > +#define DEBUG_MKDIRTY                (1 << 24)
> > +#define DEBUG_UPDATE_DISPLAY         (1 << 25)
> > +#define DEBUG_INIT_DISPLAY           (1 << 26)
> > +#define DEBUG_BLANK                  (1 << 27)
> > +#define DEBUG_REQUEST_GPIOS          (1 << 28)
> > +#define DEBUG_FREE_GPIOS             (1 << 29)
> > +#define DEBUG_REQUEST_GPIOS_MATCH    (1 << 30)
> > +#define DEBUG_VERIFY_GPIOS           (1 << 31)
> >
> >  #define fbtft_init_dbg(dev, format, arg...)                  \
> >  do {                                                         \
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20181003132917.GA29977%40armorer
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>


--

--0000000000001bf2ce0577536115
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed=
, Oct 3, 2018 at 7:10 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawall@li=
p6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><br>
<br>
On Wed, 3 Oct 2018, Mamta Shukla wrote:<br>
<br>
&gt; Adding spaces around &#39;&lt;&lt;&#39; to fix checkpatch issue.<br>
&gt; CHECK: spaces preferred around that &#39;&lt;&lt;&#39; (ctx:VxV)<br>
<br>
&gt;It looks like the BIT macro could actually be mre useful here.<br>
<br>
&gt;julia<br></blockquote><div>Ok, I will make the change.<br></div><div>I =
need to write new patch, right? Because another version of this patch may c=
onflict the subject.<br><br></div><div>-Mamta <br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<br>
&gt;<br>
&gt; Signed-off-by: Mamta Shukla &lt;<a href=3D"mailto:mamtashukla555@gmail=
.com" target=3D"_blank">mamtashukla555@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/fbtft/fbtft.h | 56 +++++++++++++++++++++--------=
--------------<br>
&gt;=C2=A0 1 file changed, 28 insertions(+), 28 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbt=
ft.h<br>
&gt; index 25302ff..a3db23b 100644<br>
&gt; --- a/drivers/staging/fbtft/fbtft.h<br>
&gt; +++ b/drivers/staging/fbtft/fbtft.h<br>
&gt; @@ -355,39 +355,39 @@ static void __exit fbtft_driver_module_exit(void=
)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
&gt;=C2=A0 #define DEBUG_LEVEL_6=C2=A0 =C2=A0 =C2=A0 =C2=A0 (DEBUG_LEVEL_4 =
| DEBUG_LEVEL_5)<br>
&gt;=C2=A0 #define DEBUG_LEVEL_7=C2=A0 =C2=A0 =C2=A0 =C2=A0 0xFFFFFFFF<br>
&gt;<br>
&gt; -#define DEBUG_DRIVER_INIT_FUNCTIONS (1&lt;&lt;3)<br>
&gt; -#define DEBUG_TIME_FIRST_UPDATE=C2=A0 =C2=A0 =C2=A0(1&lt;&lt;4)<br>
&gt; -#define DEBUG_TIME_EACH_UPDATE=C2=A0 =C2=A0 =C2=A0 (1&lt;&lt;5)<br>
&gt; -#define DEBUG_DEFERRED_IO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1&=
lt;&lt;6)<br>
&gt; -#define DEBUG_FBTFT_INIT_FUNCTIONS=C2=A0 (1&lt;&lt;7)<br>
&gt; +#define DEBUG_DRIVER_INIT_FUNCTIONS=C2=A0 (1 &lt;&lt; 3)<br>
&gt; +#define DEBUG_TIME_FIRST_UPDATE=C2=A0 =C2=A0 =C2=A0 (1 &lt;&lt; 4)<br=
>
&gt; +#define DEBUG_TIME_EACH_UPDATE=C2=A0 =C2=A0 =C2=A0 =C2=A0(1 &lt;&lt; =
5)<br>
&gt; +#define DEBUG_DEFERRED_IO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1=
 &lt;&lt; 6)<br>
&gt; +#define DEBUG_FBTFT_INIT_FUNCTIONS=C2=A0 =C2=A0(1 &lt;&lt; 7)<br>
&gt;<br>
&gt;=C2=A0 /* fbops */<br>
&gt; -#define DEBUG_FB_READ=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0(1&lt;&lt;8)<br>
&gt; -#define DEBUG_FB_WRITE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (1&lt;&lt;9)<br>
&gt; -#define DEBUG_FB_FILLRECT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1&=
lt;&lt;10)<br>
&gt; -#define DEBUG_FB_COPYAREA=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1&=
lt;&lt;11)<br>
&gt; -#define DEBUG_FB_IMAGEBLIT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&l=
t;12)<br>
&gt; -#define DEBUG_FB_SETCOLREG=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&l=
t;13)<br>
&gt; -#define DEBUG_FB_BLANK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (1&lt;&lt;14)<br>
&gt; +#define DEBUG_FB_READ=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 (1 &lt;&lt; 8)<br>
&gt; +#define DEBUG_FB_WRITE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0(1 &lt;&lt; 9)<br>
&gt; +#define DEBUG_FB_FILLRECT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1=
 &lt;&lt; 10)<br>
&gt; +#define DEBUG_FB_COPYAREA=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1=
 &lt;&lt; 11)<br>
&gt; +#define DEBUG_FB_IMAGEBLIT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1=
 &lt;&lt; 12)<br>
&gt; +#define DEBUG_FB_SETCOLREG=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1=
 &lt;&lt; 13)<br>
&gt; +#define DEBUG_FB_BLANK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0(1 &lt;&lt; 14)<br>
&gt;<br>
&gt; -#define DEBUG_SYSFS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0(1&lt;&lt;16)<br>
&gt; +#define DEBUG_SYSFS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (1 &lt;&lt; 16)<br>
&gt;<br>
&gt;=C2=A0 /* fbtftops */<br>
&gt; -#define DEBUG_BACKLIGHT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(1&lt;&lt;17)<br>
&gt; -#define DEBUG_READ=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (1&lt;&lt;18)<br>
&gt; -#define DEBUG_WRITE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0(1&lt;&lt;19)<br>
&gt; -#define DEBUG_WRITE_VMEM=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&=
lt;&lt;20)<br>
&gt; -#define DEBUG_WRITE_REGISTER=C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&lt;21)=
<br>
&gt; -#define DEBUG_SET_ADDR_WIN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&l=
t;22)<br>
&gt; -#define DEBUG_RESET=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0(1&lt;&lt;23)<br>
&gt; -#define DEBUG_MKDIRTY=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0(1&lt;&lt;24)<br>
&gt; -#define DEBUG_UPDATE_DISPLAY=C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&lt;25)=
<br>
&gt; -#define DEBUG_INIT_DISPLAY=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&l=
t;26)<br>
&gt; -#define DEBUG_BLANK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0(1&lt;&lt;27)<br>
&gt; -#define DEBUG_REQUEST_GPIOS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1&lt;&l=
t;28)<br>
&gt; -#define DEBUG_FREE_GPIOS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&=
lt;&lt;29)<br>
&gt; -#define DEBUG_REQUEST_GPIOS_MATCH=C2=A0 =C2=A0(1&lt;&lt;30)<br>
&gt; -#define DEBUG_VERIFY_GPIOS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1&lt;&l=
t;31)<br>
&gt; +#define DEBUG_BACKLIGHT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (1 &lt;&lt; 17)<br>
&gt; +#define DEBUG_READ=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0(1 &lt;&lt; 18)<br>
&gt; +#define DEBUG_WRITE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (1 &lt;&lt; 19)<br>
&gt; +#define DEBUG_WRITE_VMEM=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(1 &lt;&lt; 20)<br>
&gt; +#define DEBUG_WRITE_REGISTER=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1 &lt;=
&lt; 21)<br>
&gt; +#define DEBUG_SET_ADDR_WIN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1=
 &lt;&lt; 22)<br>
&gt; +#define DEBUG_RESET=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (1 &lt;&lt; 23)<br>
&gt; +#define DEBUG_MKDIRTY=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 (1 &lt;&lt; 24)<br>
&gt; +#define DEBUG_UPDATE_DISPLAY=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1 &lt;=
&lt; 25)<br>
&gt; +#define DEBUG_INIT_DISPLAY=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1=
 &lt;&lt; 26)<br>
&gt; +#define DEBUG_BLANK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (1 &lt;&lt; 27)<br>
&gt; +#define DEBUG_REQUEST_GPIOS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1 &lt;=
&lt; 28)<br>
&gt; +#define DEBUG_FREE_GPIOS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(1 &lt;&lt; 29)<br>
&gt; +#define DEBUG_REQUEST_GPIOS_MATCH=C2=A0 =C2=A0 (1 &lt;&lt; 30)<br>
&gt; +#define DEBUG_VERIFY_GPIOS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1=
 &lt;&lt; 31)<br>
&gt;<br>
&gt;=C2=A0 #define fbtft_init_dbg(dev, format, arg...)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt;=C2=A0 do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20181003132917.GA29977%40armorer" rel=3D"n=
oreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-ke=
rnel/20181003132917.GA29977%40armorer</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><font f=
ace=3D"arial, helvetica, sans-serif"></font><br></div></div></div>

--0000000000001bf2ce0577536115--

