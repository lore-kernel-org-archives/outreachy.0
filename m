X-GM-THRID: 6664414939270086656
X-Received: by 2002:a67:df08:: with SMTP id s8mr831212vsk.4.1551778468780;
        Tue, 05 Mar 2019 01:34:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:7201:: with SMTP id u1ls4224088uao.3.gmail; Tue, 05 Mar
 2019 01:34:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqx4AJrT8njxZ6uwnmoIMZ5Wde1UhYjlcfcpCxT+nmSEchp0Mu8Fp2CY/RBoF7UvB7vhbkQl
X-Received: by 2002:ab0:30b7:: with SMTP id b23mr848251uam.3.1551778468072;
        Tue, 05 Mar 2019 01:34:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551778468; cv=none;
        d=google.com; s=arc-20160816;
        b=JIlHOSrJ7y/NelowIls4XAJEvKKo5em+DIalE8lBjxUKXHZb1vfGU6nNw+Uk+KmHSB
         JOTcHZRvOTrtXvwNrgjJegf02hYSezOHo0yRVKDapMuZ5BuyDB1oYsh6esFZgKW93M02
         9YjLYTBpMdVHusnghKgFAVTSuggv1ujtpV9VMyDrfiUnkJ4tMDKOrBTxf5FZNaD0yvio
         SS9ut18j2M077CNrGBpkEJZCgPpA5Evd0B8BJ6Fcr+8mS7JN9HlnAXS0WTdHHTlP7bS6
         RDUmL4I9FgDpapZ+RrX+kMtYxTOlcS3fmHLSg50NOyMBPcoKl0S2N66zXzeLgHiHMlHe
         z/8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YplTMGBtcpuaOfYRzXkRMGgYCdAVz2KisNvJGatZxDI=;
        b=YeyFbj7t/NIBC3EMMzhjbehMZFmVPz4JojeHgl8+4f32KBHqpKqpJp4UgYpGrjnlfF
         H+G7OBZi4Gj7clIOSKwyEsrW4oORUlTqg76NgoPR5o73Tiob+OgSwuz7WjLmWkvcqlcR
         XX4TTnEScWmlb3fBCmv90jcDahUOn961e1l67hFy0uTbsPSDvOEFJYXErj9UTsGH7vE6
         Mkp4v84dRWCQOIc1nuljm+7JwoykKUifoPeScCVPOED7OuSubZnQffLOExB7MODBkTu7
         SLNgZIMa/wrYP4+mk4/32bpAvJAJ9jFO5bycT2Zv13UtfBlwOqgQkEPdjmwBbb1csHhC
         Oh9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ai2JkUBS;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com. [2607:f8b0:4864:20::82e])
        by gmr-mx.google.com with ESMTPS id e17si463993vke.0.2019.03.05.01.34.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 01:34:28 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) client-ip=2607:f8b0:4864:20::82e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ai2JkUBS;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82e.google.com with SMTP id z25so8268513qti.13
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 01:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YplTMGBtcpuaOfYRzXkRMGgYCdAVz2KisNvJGatZxDI=;
        b=Ai2JkUBScPJz/PKvHtCCL+uZ6CgK57+KtrCkx86JslCIcYaSeZfXtDhrJ9uy7oRrmq
         Yv9wHcuGXTHzs8jK12scgb/Kxta1awebhKjMOqeyXvkXYTfZqyFcn2E/wMcBkOSGyPcN
         QU2RLutuaIN/OUm3kgcH4HFn/kC2t1/EWpxQE1fjLqjpyRDRte3YG/MN24TYrWFqVWoi
         JcTE7FpjZp8i06IykVvQxRHFjNIGP2bJxRiaKD12mB8eGDNzHOHpmV1LLSQauXBpbMiy
         egWX7c43sGe3Ugj5nw1PBXL4iSZWB9cAtZE8zjZsFk8/IVTaAHrhTpQrDtIZ5YDs3MHU
         zyog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YplTMGBtcpuaOfYRzXkRMGgYCdAVz2KisNvJGatZxDI=;
        b=kYuYpMyriJtBpi4HHvyXRzgzJANyXEXVzwH3OvAtjvvhKDvH0qobESMI2XREZ/MQ0+
         GLG6MUasnPw72avhZOEqkcPRz17nhfALxYyy4Y+7fmCPzNiomWqrFdHH7EfLTTveVyO/
         TnPbK1x4+6SdFeJxh05dQ8KQZxnhAwInSBdtL2afNOmElOPU9varuSY0EUoEFqQeJ4C0
         dOTjBrUqm/9G0x2Hd8lRsozd+r1Amux07B/M8f+9CQJ+12/bOAWwetUqKj2tryCzqoPE
         ZMzag7h5PCyRJdsSe1yM4ZYiYeF5hbIeuQXzvD7tFHFq1vUnBt6xoBcJj6gzde7s/20I
         RqsQ==
X-Gm-Message-State: APjAAAUW282KGCg1kLg89wxk+T5fwaf5k/SbYGWnaf3XNPn3cnOfzH57
	pX5KkzHjKoNQHTUejnC5WOWoHyadpoeKoYcWCR/zcUah
X-Received: by 2002:a0c:933d:: with SMTP id d58mr1313096qvd.92.1551778467589;
 Tue, 05 Mar 2019 01:34:27 -0800 (PST)
MIME-Version: 1.0
References: <20190304111754.GA3926@bhagyashri-Lenovo-G570> <20190305074615.GC6158@kroah.com>
In-Reply-To: <20190305074615.GC6158@kroah.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Tue, 5 Mar 2019 15:03:50 +0530
Message-ID: <CAOMPgji9SQQ7Z2D2FVp8eZ2M4Z81CfKnPH_9nx=FOB+LUiiB_g@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] staging: fbtft: line over 80 characters.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000054b24a058355943a"

--00000000000054b24a058355943a
Content-Type: text/plain; charset="UTF-8"

Yes,  I will resend with the necessary changes.


On Tue, Mar 5, 2019 at 1:16 PM Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Mon, Mar 04, 2019 at 04:47:54PM +0530, Bhagyashri Dighole wrote:
> > Fix coding style issues, which solves checkpatch.pl warning:
> > "WARNING: line over 80 characters"
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> > Changes in v2:
> >   - Improve code order.
> >   - Make the code more readable.
> >
> >  drivers/staging/fbtft/fb_ssd1306.c  |  3 ++-
> >  drivers/staging/fbtft/fb_ssd1331.c  |  3 ++-
> >  drivers/staging/fbtft/fbtft-sysfs.c |  3 ++-
> >  drivers/staging/fbtft/fbtft.h       | 20 ++++++++++++++------
> >  drivers/staging/fbtft/flexfb.c      | 12 ++++++++----
> >  5 files changed, 28 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/staging/fbtft/fb_ssd1306.c
> b/drivers/staging/fbtft/fb_ssd1306.c
> > index d7c5e2e..412871b 100644
> > --- a/drivers/staging/fbtft/fb_ssd1306.c
> > +++ b/drivers/staging/fbtft/fb_ssd1306.c
> > @@ -184,7 +184,8 @@ static int write_vmem(struct fbtft_par *par, size_t
> offset, size_t len)
> >               for (y = 0; y < yres / 8; y++) {
> >                       *buf = 0x00;
> >                       for (i = 0; i < 8; i++)
> > -                             *buf |= (vmem16[(y * 8 + i) * xres + x] ?
> 1 : 0) << i;
> > +                             *buf |= (vmem16[(y * 8 + i) * xres + x] ?
> > +                                              1 : 0) << i;
>
> This is now harder to read, the original was fine.
>
> Well, it was horrible, the whole ? : style is a mess and impossible to
> read.  I would just rewrite that as a proper if() statement as I have no
> idea what the code is doing when I first look at it :(
>
>
> >                       buf++;
> >               }
> >       }
> > diff --git a/drivers/staging/fbtft/fb_ssd1331.c
> b/drivers/staging/fbtft/fb_ssd1331.c
> > index 9f54fe2..4cfe9f8 100644
> > --- a/drivers/staging/fbtft/fb_ssd1331.c
> > +++ b/drivers/staging/fbtft/fb_ssd1331.c
> > @@ -74,7 +74,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int
> len, ...)
> >               for (i = 0; i < len; i++)
> >                       buf[i] = (u8)va_arg(args, unsigned int);
> >               va_end(args);
> > -             fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par,
> par->info->device, u8, buf, len, "%s: ", __func__);
> > +             fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par,
> par->info->device,
> > +                               u8, buf, len, "%s: ", __func__);
>
> This is fine.
>
> >       }
> >
> >       va_start(args, len);
> > diff --git a/drivers/staging/fbtft/fbtft-sysfs.c
> b/drivers/staging/fbtft/fbtft-sysfs.c
> > index 2a5c630..26c971f 100644
> > --- a/drivers/staging/fbtft/fbtft-sysfs.c
> > +++ b/drivers/staging/fbtft/fbtft-sysfs.c
> > @@ -68,7 +68,8 @@ int fbtft_gamma_parse_str(struct fbtft_par *par, u32
> *curves,
> >                       ret = get_next_ulong(&curve_p, &val, " ", 16);
> >                       if (ret)
> >                               goto out;
> > -                     curves[curve_counter * par->gamma.num_values +
> value_counter] = val;
> > +                     curves[curve_counter * par->gamma.num_values +
> value_counter]
> > +                             = val;
>
> Not good, the original is fine.
>
>
> >                       value_counter++;
> >               }
> >               if (value_counter != par->gamma.num_values) {
> > diff --git a/drivers/staging/fbtft/fbtft.h
> b/drivers/staging/fbtft/fbtft.h
> > index 7fdd3b0..7b66926 100644
> > --- a/drivers/staging/fbtft/fbtft.h
> > +++ b/drivers/staging/fbtft/fbtft.h
> > @@ -347,9 +347,15 @@ module_exit(fbtft_driver_module_exit);
> >
> >  /* shorthand debug levels */
> >  #define DEBUG_LEVEL_1        DEBUG_REQUEST_GPIOS
> > -#define DEBUG_LEVEL_2        (DEBUG_LEVEL_1 |
> DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
> > -#define DEBUG_LEVEL_3        (DEBUG_LEVEL_2 | DEBUG_RESET |
> DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS |
> DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
> > -#define DEBUG_LEVEL_4        (DEBUG_LEVEL_2 | DEBUG_FB_READ |
> DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT
> | DEBUG_FB_BLANK)
> > +#define DEBUG_LEVEL_2        (DEBUG_LEVEL_1 |
> DEBUG_DRIVER_INIT_FUNCTIONS       \
> > +                     | DEBUG_TIME_FIRST_UPDATE)
>
> We normally write things with the operator at the end of the line, so
> this would be:
>
> #define DEBUG_LEVEL_2   (DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS |  \
>                          DEBUG_TIME_FIRST_UPDATE)
>
> Also note the tab before the '\' character so you can line them all up
> with the other entries below.
>
>
>
> > +#define DEBUG_LEVEL_3        (DEBUG_LEVEL_2 | DEBUG_RESET |
> DEBUG_INIT_DISPLAY  \
> > +                     | DEBUG_BLANK |  DEBUG_REQUEST_GPIOS
>  \
> > +                     | DEBUG_FREE_GPIOS | DEBUG_VERI Y_GPIOS
> \
> > +                     | DEBUG_BACKLIGHT | DEBUG_SYSFS)
> > +#define DEBUG_LEVEL_4        (DEBUG_LEVEL_2 | DEBUG_FB_READ |
> DEBUG_FB_WRITE    \
> > +                     | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA
> \
> > +                     | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
> >  #define DEBUG_LEVEL_5        (DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
> >  #define DEBUG_LEVEL_6        (DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
> >  #define DEBUG_LEVEL_7        0xFFFFFFFF
> > @@ -390,9 +396,11 @@ module_exit(fbtft_driver_module_exit);
> >
> >  #define fbtft_init_dbg(dev, format, arg...)                  \
> >  do {                                                         \
> > -     if (unlikely((dev)->platform_data &&                 \
> > -         (((struct fbtft_platform_data
> *)(dev)->platform_data)->display.debug & DEBUG_DRIVER_INIT_FUNCTIONS))) \
> > -             dev_info(dev, format, ##arg);                \
> > +     if (unlikely((dev)->platform_data &&                 \
> > +         (((struct fbtft_platform_data *)                 \
> > +           (dev)->platform_data)->display.debug           \
> > +          & DEBUG_DRIVER_INIT_FUNCTIONS)))                \
> > +             dev_info(dev, format, ##arg);
>
> The original code is fine, I would just leave it alone.
>
>
>
> >  } while (0)
> >
> >  #define fbtft_par_dbg(level, par, format, arg...)            \
> > diff --git a/drivers/staging/fbtft/flexfb.c
> b/drivers/staging/fbtft/flexfb.c
> > index c5fa591..48e9c73 100644
> > --- a/drivers/staging/fbtft/flexfb.c
> > +++ b/drivers/staging/fbtft/flexfb.c
> > @@ -667,11 +667,13 @@ static int flexfb_probe_common(struct spi_device
> *sdev,
> >               case 8:
> >                       par->fbtftops.write_vmem = fbtft_write_vmem16_bus8;
> >                       if (!par->startbyte)
> > -                             par->fbtftops.verify_gpios =
> flexfb_verify_gpios_dc;
> > +                             par->fbtftops.verify_gpios =
> > +                                     flexfb_verify_gpios_dc;
>
> Original is fine.
>
> >                       break;
> >               case 9:
> >                       if (regwidth == 16) {
> > -                             dev_err(dev, "argument 'regwidth': %d is
> not supported with buswidth=%d and SPI.\n", regwidth, buswidth);
> > +                             dev_err(dev, "argument 'regwidth': %d is
> not supported with buswidth=%d and SPI.\n",
> > +                                     regwidth, buswidth);
>
> This change is good.
>
> >                               return -EINVAL;
> >                       }
> >                       par->fbtftops.write_register =
> fbtft_write_reg8_bus9;
> > @@ -712,13 +714,15 @@ static int flexfb_probe_common(struct spi_device
> *sdev,
> >               case 16:
> >                       par->fbtftops.write_register =
> fbtft_write_reg16_bus16;
> >                       if (latched)
> > -                             par->fbtftops.write =
> fbtft_write_gpio16_wr_latched;
> > +                             par->fbtftops.write =
> > +                                     fbtft_write_gpio16_wr_latched;
>
> Original is fine.
>
> >                       else
> >                               par->fbtftops.write =
> fbtft_write_gpio16_wr;
> >                       par->fbtftops.write_vmem =
> fbtft_write_vmem16_bus16;
> >                       break;
> >               default:
> > -                     dev_err(dev, "argument 'buswidth': %d is not
> supported with parallel.\n", buswidth);
> > +                     dev_err(dev, "argument 'buswidth': %d is not
> supported with parallel.\n",
> > +                             buswidth);
>
> This change is good.
>
> Can you fix this patch up based on these comments and resend?
>
> thanks,
>
> greg k-h
>

--00000000000054b24a058355943a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes,=C2=A0 I will resend with the necessary changes.<=
/div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Tue, Mar 5, 2019 at 1:16 PM Greg Kroah-Hartman &lt;<=
a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On M=
on, Mar 04, 2019 at 04:47:54PM +0530, Bhagyashri Dighole wrote:<br>
&gt; Fix coding style issues, which solves <a href=3D"http://checkpatch.pl"=
 rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a> warning:<br>
&gt; &quot;WARNING: line over 80 characters&quot;<br>
&gt; <br>
&gt; Signed-off-by: Bhagyashri Dighole &lt;<a href=3D"mailto:digholebhagyas=
hri@gmail.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; Changes in v2:<br>
&gt;=C2=A0 =C2=A0- Improve code order.<br>
&gt;=C2=A0 =C2=A0- Make the code more readable.<br>
&gt; <br>
&gt;=C2=A0 drivers/staging/fbtft/fb_ssd1306.c=C2=A0 |=C2=A0 3 ++-<br>
&gt;=C2=A0 drivers/staging/fbtft/fb_ssd1331.c=C2=A0 |=C2=A0 3 ++-<br>
&gt;=C2=A0 drivers/staging/fbtft/fbtft-sysfs.c |=C2=A0 3 ++-<br>
&gt;=C2=A0 drivers/staging/fbtft/fbtft.h=C2=A0 =C2=A0 =C2=A0 =C2=A0| 20 +++=
+++++++++++------<br>
&gt;=C2=A0 drivers/staging/fbtft/flexfb.c=C2=A0 =C2=A0 =C2=A0 | 12 ++++++++=
----<br>
&gt;=C2=A0 5 files changed, 28 insertions(+), 13 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtf=
t/fb_ssd1306.c<br>
&gt; index d7c5e2e..412871b 100644<br>
&gt; --- a/drivers/staging/fbtft/fb_ssd1306.c<br>
&gt; +++ b/drivers/staging/fbtft/fb_ssd1306.c<br>
&gt; @@ -184,7 +184,8 @@ static int write_vmem(struct fbtft_par *par, size_=
t offset, size_t len)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for (y =3D 0; y =
&lt; yres / 8; y++) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0*buf =3D 0x00;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0for (i =3D 0; i &lt; 8; i++)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*buf |=3D (vmem16[(y * 8 + i) * xres + x=
] ? 1 : 0) &lt;&lt; i;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*buf |=3D (vmem16[(y * 8 + i) * xres + x=
] ?<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 1 : 0) &lt;&lt; i;<br>
<br>
This is now harder to read, the original was fine.<br>
<br>
Well, it was horrible, the whole ? : style is a mess and impossible to<br>
read.=C2=A0 I would just rewrite that as a proper if() statement as I have =
no<br>
idea what the code is doing when I first look at it :(<br>
<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0buf++;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtf=
t/fb_ssd1331.c<br>
&gt; index 9f54fe2..4cfe9f8 100644<br>
&gt; --- a/drivers/staging/fbtft/fb_ssd1331.c<br>
&gt; +++ b/drivers/staging/fbtft/fb_ssd1331.c<br>
&gt; @@ -74,7 +74,8 @@ static void write_reg8_bus8(struct fbtft_par *par, i=
nt len, ...)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i =
&lt; len; i++)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0buf[i] =3D (u8)va_arg(args, unsigned int);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0va_end(args);<br=
>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fbtft_par_dbg_hex(DEB=
UG_WRITE_REGISTER, par, par-&gt;info-&gt;device, u8, buf, len, &quot;%s: &q=
uot;, __func__);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fbtft_par_dbg_hex(DEB=
UG_WRITE_REGISTER, par, par-&gt;info-&gt;device,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u8, buf, len, &quot;%s: &quot;, _=
_func__);<br>
<br>
This is fine.<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0va_start(args, len);<br>
&gt; diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbt=
ft/fbtft-sysfs.c<br>
&gt; index 2a5c630..26c971f 100644<br>
&gt; --- a/drivers/staging/fbtft/fbtft-sysfs.c<br>
&gt; +++ b/drivers/staging/fbtft/fbtft-sysfs.c<br>
&gt; @@ -68,7 +68,8 @@ int fbtft_gamma_parse_str(struct fbtft_par *par, u32=
 *curves,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0ret =3D get_next_ulong(&amp;curve_p, &amp;val, &quot; &quot;, =
16);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0curves[curve_counter * par-&gt;gamma.num_values + value_counter] =3D=
 val;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0curves[curve_counter * par-&gt;gamma.num_values + value_counter]<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D val;<br>
<br>
Not good, the original is fine.<br>
<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0value_counter++;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (value_counte=
r !=3D par-&gt;gamma.num_values) {<br>
&gt; diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbt=
ft.h<br>
&gt; index 7fdd3b0..7b66926 100644<br>
&gt; --- a/drivers/staging/fbtft/fbtft.h<br>
&gt; +++ b/drivers/staging/fbtft/fbtft.h<br>
&gt; @@ -347,9 +347,15 @@ module_exit(fbtft_driver_module_exit);<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 /* shorthand debug levels */<br>
&gt;=C2=A0 #define DEBUG_LEVEL_1=C2=A0 =C2=A0 =C2=A0 =C2=A0 DEBUG_REQUEST_G=
PIOS<br>
&gt; -#define DEBUG_LEVEL_2=C2=A0 =C2=A0 =C2=A0 =C2=A0 (DEBUG_LEVEL_1 | DEB=
UG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)<br>
&gt; -#define DEBUG_LEVEL_3=C2=A0 =C2=A0 =C2=A0 =C2=A0 (DEBUG_LEVEL_2 | DEB=
UG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_F=
REE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)<br>
&gt; -#define DEBUG_LEVEL_4=C2=A0 =C2=A0 =C2=A0 =C2=A0 (DEBUG_LEVEL_2 | DEB=
UG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG=
_FB_IMAGEBLIT | DEBUG_FB_BLANK)<br>
&gt; +#define DEBUG_LEVEL_2=C2=A0 =C2=A0 =C2=A0 =C2=A0 (DEBUG_LEVEL_1 | DEB=
UG_DRIVER_INIT_FUNCTIONS=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0| DEBUG_TIME_FIRST_UPDATE)<br>
<br>
We normally write things with the operator at the end of the line, so<br>
this would be:<br>
<br>
#define DEBUG_LEVEL_2=C2=A0 =C2=A0(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTI=
ONS |=C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0DEBUG_TIME_FIRST_UPDATE)<br>
<br>
Also note the tab before the &#39;\&#39; character so you can line them all=
 up<br>
with the other entries below.<br>
<br>
<br>
<br>
&gt; +#define DEBUG_LEVEL_3=C2=A0 =C2=A0 =C2=A0 =C2=A0 (DEBUG_LEVEL_2 | DEB=
UG_RESET | DEBUG_INIT_DISPLAY=C2=A0 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0| DEBUG_BLANK |=C2=A0 DEBUG_REQUEST_GPIOS=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0| DEBUG_FREE_GPIOS | DEBUG_VERI Y_GPIOS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0| DEBUG_BACKLIGHT | DEBUG_SYSFS)<br>
&gt; +#define DEBUG_LEVEL_4=C2=A0 =C2=A0 =C2=A0 =C2=A0 (DEBUG_LEVEL_2 | DEB=
UG_FB_READ | DEBUG_FB_WRITE=C2=A0 =C2=A0 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0| DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0| DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)<br>
&gt;=C2=A0 #define DEBUG_LEVEL_5=C2=A0 =C2=A0 =C2=A0 =C2=A0 (DEBUG_LEVEL_3 =
| DEBUG_UPDATE_DISPLAY)<br>
&gt;=C2=A0 #define DEBUG_LEVEL_6=C2=A0 =C2=A0 =C2=A0 =C2=A0 (DEBUG_LEVEL_4 =
| DEBUG_LEVEL_5)<br>
&gt;=C2=A0 #define DEBUG_LEVEL_7=C2=A0 =C2=A0 =C2=A0 =C2=A0 0xFFFFFFFF<br>
&gt; @@ -390,9 +396,11 @@ module_exit(fbtft_driver_module_exit);<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 #define fbtft_init_dbg(dev, format, arg...)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt;=C2=A0 do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (unlikely((dev)-&gt;platform_data &amp;&amp;=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(((struct fbtft_platform_data *)(de=
v)-&gt;platform_data)-&gt;display.debug &amp; DEBUG_DRIVER_INIT_FUNCTIONS))=
) \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_info(dev, format,=
 ##arg);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (unlikely((dev)-&gt;platform_data &amp;&amp;=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(((struct fbtft_platform_data *)=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(dev)-&gt;platform_data)-&gt=
;display.debug=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp; DEBUG_DRIVER_INIT_FUNCTIONS)=
))=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_info(dev, format,=
 ##arg);<br>
<br>
The original code is fine, I would just leave it alone.<br>
<br>
<br>
<br>
&gt;=C2=A0 } while (0)<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 #define fbtft_par_dbg(level, par, format, arg...)=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; diff --git a/drivers/staging/fbtft/flexfb.c b/drivers/staging/fbtft/fl=
exfb.c<br>
&gt; index c5fa591..48e9c73 100644<br>
&gt; --- a/drivers/staging/fbtft/flexfb.c<br>
&gt; +++ b/drivers/staging/fbtft/flexfb.c<br>
&gt; @@ -667,11 +667,13 @@ static int flexfb_probe_common(struct spi_device=
 *sdev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case 8:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0par-&gt;fbtftops.write_vmem =3D fbtft_write_vmem16_bus8;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (!par-&gt;startbyte)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0par-&gt;fbtftops.verify_gpios =3D flexfb=
_verify_gpios_dc;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0par-&gt;fbtftops.verify_gpios =3D<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0flexfb_verif=
y_gpios_dc;<br>
<br>
Original is fine.<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case 9:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (regwidth =3D=3D 16) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dev, &quot;argument &#39;regwidt=
h&#39;: %d is not supported with buswidth=3D%d and SPI.\n&quot;, regwidth, =
buswidth);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dev, &quot;argument &#39;regwidt=
h&#39;: %d is not supported with buswidth=3D%d and SPI.\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regwidth, bu=
swidth);<br>
<br>
This change is good.<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0par-&gt;fbtftops.write_register =3D fbtft_write_reg8_bus9;<br>
&gt; @@ -712,13 +714,15 @@ static int flexfb_probe_common(struct spi_device=
 *sdev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case 16:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0par-&gt;fbtftops.write_register =3D fbtft_write_reg16_bus16;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (latched)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0par-&gt;fbtftops.write =3D fbtft_write_g=
pio16_wr_latched;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0par-&gt;fbtftops.write =3D<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fbtft_write_=
gpio16_wr_latched;<br>
<br>
Original is fine.<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0par-&gt;fbtftops.write =3D fbtft_w=
rite_gpio16_wr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0par-&gt;fbtftops.write_vmem =3D fbtft_write_vmem16_bus16;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0default:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0dev_err(dev, &quot;argument &#39;buswidth&#39;: %d is not supported =
with parallel.\n&quot;, buswidth);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0dev_err(dev, &quot;argument &#39;buswidth&#39;: %d is not supported =
with parallel.\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0buswidth);<br>
<br>
This change is good.<br>
<br>
Can you fix this patch up based on these comments and resend?<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>

--00000000000054b24a058355943a--

