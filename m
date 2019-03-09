X-GM-THRID: 6664414939270086656
X-Received: by 2002:a25:c74f:: with SMTP id w76mr10008815ybe.16.1552143042899;
        Sat, 09 Mar 2019 06:50:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4095:: with SMTP id n143ls575609yba.13.gmail; Sat, 09
 Mar 2019 06:50:42 -0800 (PST)
X-Google-Smtp-Source: APXvYqxzRj6rmu6M9q7bqZrXNizxBUABB/idcWjB11KcyqTa8Esz3vqEZcCGwmhYegpz25zBr6M0
X-Received: by 2002:a25:6cc6:: with SMTP id h189mr11430871ybc.13.1552143042029;
        Sat, 09 Mar 2019 06:50:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552143042; cv=none;
        d=google.com; s=arc-20160816;
        b=QuQGAZ1tbgtjacHySzhjXmb21Sk9RqJeLC8IprjYrDIy6btfV5ZGH7nAAND72/B7e2
         REQxyp+ruGMmB2u7EcPegk4MYR+hgWND+QHAuefGZEoAQVNI9fvQRSobtJr0fD45rHO/
         t03XaBssk8ZLdY9Tea3iwLkdcljmJvzuWUUAZNAaHgJULChvBrkmAQOu4LUUTgSGwZ6U
         0GsMxTw1ulQj1RkVDgKUEeqzbyS2yqBZBt0Wr0bm5h1m3FiasrF6nFzA3aNOM2eIzOgm
         nT+/QuBUQUALkdGVcilsdNZkqG6dUGfcUhQ2fyLi5Aq927zOHcRJWJCmxDD3yIgymG1I
         kAkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=udZUJ5juSxnTL7t+r8b+RmJBQCynmsVEONUTLdWeHOU=;
        b=NinJPFhX6RQ8w2yNgrRwNCA74bx0J2lX6SHY0CqzXASvA+eOG8fPOcal3RjcBj1C9C
         EwbmzlKDJtI8aEPdCVJPWSsovptTdWhsL5oV5JB1laH8OYouqCYH7lYJJXO/9enBvkWX
         teQx/ZNJ3QRjDGZtpKMse953Aipyo33GWkaQREgqH63tGakO+crSbBvU3jyT5yqnMTHY
         qXeAERfirEjQa+Ityv1VTW13o3SI/ktlWiGw46fK+Gmv3waxjXWSyavVEy06Gn/13oq9
         BxbmD6kKoakle8hOMufQEipTpNAOKXIgTLMCioM5e1Q04fPFYrDRbVLfYj88vqoH6+1Z
         /zbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QTqftnWC;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com. [2607:f8b0:4864:20::835])
        by gmr-mx.google.com with ESMTPS id 62si32924ybf.2.2019.03.09.06.50.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 06:50:42 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) client-ip=2607:f8b0:4864:20::835;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QTqftnWC;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x835.google.com with SMTP id b3so487575qtj.3
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 06:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=udZUJ5juSxnTL7t+r8b+RmJBQCynmsVEONUTLdWeHOU=;
        b=QTqftnWCDHqDXhXcYQPM/bfzNWSMZS0E2HAx3bVrpFVLZISZNuPun61db00MScD9Tk
         GLNO6pfotOIbPfHMt2vgxbHcmilr5PjyWXaiqKfv/dXMOJBPDxongMxD6AgCayvxnvLx
         3YCrENTW3TtZKanIpWWrwZ/WMs/VRyAmF2h8bkG3aJ0EF+D4qxje6g542gp6kyiBH35h
         q1FGVj7/z5/36AiND+e2n6wNKaVDbsvcLYIfemA2GbLhQYub/3/Yr8WyURQU79/Tx5bF
         dDdpO5/uywYjspIY+UPVbdDub9stDQAN08a1KYsPxb3xrt9DqGt5NGXojO38EcPuqRdZ
         A0aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=udZUJ5juSxnTL7t+r8b+RmJBQCynmsVEONUTLdWeHOU=;
        b=VOImJnUt/mFYxSHi2UqJ6VG3NpZB2h3/z4mAWX4c8jsucjJBw9IZVJBTCooR1LBJ1C
         stlXx4d14AXcX0tLMU+K7pahHnfVAeRyvY/SzBXLjwNsEDmM6oeUy1jTWpg4vvHV+O0F
         kffIRVel+40ANVCna69uSamqLdRu/4eiP96f7eFdpExStixyGxv7s1By7WIkeYPO1yh9
         woNH/1pPdXB7Si9RQkZQEVXbSavSQHLcp+Sz2yX4lPaUWhH9y5FSz/WjTuTdjypkEqEG
         Euj224OssSlauL4FFgUjUSdbdS9pYiuKSbwP0Qhs1bjMGIC3VsE2bDX3sWETGtPZdKAd
         A/xQ==
X-Gm-Message-State: APjAAAWFi2o4hOiIgRVnDCWxU3ftZSDXMXqH5XVfTJIvi/J0D3RfLd0K
	KAk1ELAsuzx0K7upCdd9U0ERJ9uiONkD3P1T29iN5g==
X-Received: by 2002:ac8:28a8:: with SMTP id i37mr19450494qti.215.1552143041539;
 Sat, 09 Mar 2019 06:50:41 -0800 (PST)
MIME-Version: 1.0
References: <20190309143505.GA14822@bhagyashri-Lenovo-G570> <alpine.DEB.2.21.1903091543120.2452@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903091543120.2452@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Sat, 9 Mar 2019 20:20:04 +0530
Message-ID: <CAOMPgjjSi30WgoVKDGhMsaaYTP=rwJF8vLodUH8E7QZYmNfdHw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: fbtft: line over 80 characters.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000a1b4a20583aa7618"

--000000000000a1b4a20583aa7618
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 9, 2019 at 8:14 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Sat, 9 Mar 2019, Bhagyashri Dighole wrote:
>
> > Fix coding style issues, which solves checkpatch.pl warning:
> > "WARNING: line over 80 characters".
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> > Changes in v4:
> >   - Convert a ternary statement into a if statement.
> >
> > Changes in v3:
> >   - Make the code in original form.
> >   - Use tab to line up the code.
> >
> > Changes in v2:
> >   - Improve code order.
> >   - Make the code more readable.
> >
> >  drivers/staging/fbtft/fb_ssd1306.c |  5 ++++-
> >  drivers/staging/fbtft/fb_ssd1331.c |  3 ++-
> >  drivers/staging/fbtft/fbtft.h      | 14 +++++++++++---
> >  drivers/staging/fbtft/flexfb.c     |  3 ++-
> >  4 files changed, 19 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/fbtft/fb_ssd1306.c
b/drivers/staging/fbtft/fb_ssd1306.c
> > index d7c5e2e..22c506a 100644
> > --- a/drivers/staging/fbtft/fb_ssd1306.c
> > +++ b/drivers/staging/fbtft/fb_ssd1306.c
> > @@ -184,7 +184,10 @@ static int write_vmem(struct fbtft_par *par,
size_t offset, size_t len)
> >               for (y = 0; y < yres / 8; y++) {
> >                       *buf = 0x00;
> >                       for (i = 0; i < 8; i++)
> > -                             *buf |= (vmem16[(y * 8 + i) * xres + x] ?
1 : 0) << i;
> > +                             if (vmem16[(y * 8 + i) * xres + x])
> > +                                     *buf |= (1 << i);
> > +                             else
> > +                                     *buf |= (0 << i);
>
> You don't need the parentheses.
>
> I think that the above should be in a different patch than the rest, since
> you do more than just add newlines.

Do i need to create two patches?
patch one: line over 80 characters.
patch two:  if statement conversion !
> julia
>
>
> >                       buf++;
> >               }
> >       }
> > diff --git a/drivers/staging/fbtft/fb_ssd1331.c
b/drivers/staging/fbtft/fb_ssd1331.c
> > index 9f54fe2..4cfe9f8 100644
> > --- a/drivers/staging/fbtft/fb_ssd1331.c
> > +++ b/drivers/staging/fbtft/fb_ssd1331.c
> > @@ -74,7 +74,8 @@ static void write_reg8_bus8(struct fbtft_par *par,
int len, ...)
> >               for (i = 0; i < len; i++)
> >                       buf[i] = (u8)va_arg(args, unsigned int);
> >               va_end(args);
> > -             fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par,
par->info->device, u8, buf, len, "%s: ", __func__);
> > +             fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par,
par->info->device,
> > +                               u8, buf, len, "%s: ", __func__);
> >       }
> >
> >       va_start(args, len);
> > diff --git a/drivers/staging/fbtft/fbtft.h
b/drivers/staging/fbtft/fbtft.h
> > index 7fdd3b0..22c0c5d 100644
> > --- a/drivers/staging/fbtft/fbtft.h
> > +++ b/drivers/staging/fbtft/fbtft.h
> > @@ -347,9 +347,17 @@ module_exit(fbtft_driver_module_exit);
> >
> >  /* shorthand debug levels */
> >  #define DEBUG_LEVEL_1        DEBUG_REQUEST_GPIOS
> > -#define DEBUG_LEVEL_2        (DEBUG_LEVEL_1 |
DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
> > -#define DEBUG_LEVEL_3        (DEBUG_LEVEL_2 | DEBUG_RESET |
DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS |
DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
> > -#define DEBUG_LEVEL_4        (DEBUG_LEVEL_2 | DEBUG_FB_READ |
DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT
| DEBUG_FB_BLANK)
> > +#define DEBUG_LEVEL_2        (DEBUG_LEVEL_1 |
DEBUG_DRIVER_INIT_FUNCTIONS |  \
> > +                      DEBUG_TIME_FIRST_UPDATE)                       \
> > +#define DEBUG_LEVEL_3        (DEBUG_LEVEL_2 | DEBUG_RESET |
       \
> > +                      DEBUG_INIT_DISPLAY | DEBUG_BLANK |             \
> > +                      DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS |       \
> > +                      DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT |         \
> > +                      DEBUG_SYSFS)                                   \
> > +#define DEBUG_LEVEL_4        (DEBUG_LEVEL_2 | DEBUG_FB_READ |
       \
> > +                      DEBUG_FB_WRITE | DEBUG_FB_FILLRECT |           \
> > +                      DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT |       \
> > +                      DEBUG_FB_BLANK)
> >  #define DEBUG_LEVEL_5        (DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
> >  #define DEBUG_LEVEL_6        (DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
> >  #define DEBUG_LEVEL_7        0xFFFFFFFF
> > diff --git a/drivers/staging/fbtft/flexfb.c
b/drivers/staging/fbtft/flexfb.c
> > index b91b459..3747321 100644
> > --- a/drivers/staging/fbtft/flexfb.c
> > +++ b/drivers/staging/fbtft/flexfb.c
> > @@ -671,7 +671,8 @@ static int flexfb_probe_common(struct spi_device
*sdev,
> >                       break;
> >               case 9:
> >                       if (regwidth == 16) {
> > -                             dev_err(dev, "argument 'regwidth': %d is
not supported with buswidth=%d and SPI.\n", regwidth, buswidth);
> > +                             dev_err(dev, "argument 'regwidth': %d is
not supported with buswidth=%d and SPI.\n",
> > +                                     regwidth, buswidth);
> >                               return -EINVAL;
> >                       }
> >                       par->fbtftops.write_register =
fbtft_write_reg8_bus9;
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
https://groups.google.com/d/msgid/outreachy-kernel/20190309143505.GA14822%40bhagyashri-Lenovo-G570
.
> > For more options, visit https://groups.google.com/d/optout.
> >

--000000000000a1b4a20583aa7618
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>On Sat, Mar 9, 2019 at 8:14 PM Julia Lawall &lt;<a hre=
f=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>&g=
t;<br>&gt;<br>&gt;<br>&gt; On Sat, 9 Mar 2019, Bhagyashri Dighole wrote:<br=
>&gt;<br>&gt; &gt; Fix coding style issues, which solves <a href=3D"http://=
checkpatch.pl">checkpatch.pl</a> warning:<br>&gt; &gt; &quot;WARNING: line =
over 80 characters&quot;.<br>&gt; &gt;<br>&gt; &gt; Signed-off-by: Bhagyash=
ri Dighole &lt;<a href=3D"mailto:digholebhagyashri@gmail.com">digholebhagya=
shri@gmail.com</a>&gt;<br>&gt; &gt; ---<br>&gt; &gt; Changes in v4:<br>&gt;=
 &gt; =C2=A0 - Convert a ternary statement into a if statement.<br>&gt; &gt=
;<br>&gt; &gt; Changes in v3:<br>&gt; &gt; =C2=A0 - Make the code in origin=
al form.<br>&gt; &gt; =C2=A0 - Use tab to line up the code.<br>&gt; &gt;<br=
>&gt; &gt; Changes in v2:<br>&gt; &gt; =C2=A0 - Improve code order.<br>&gt;=
 &gt; =C2=A0 - Make the code more readable.<br>&gt; &gt;<br>&gt; &gt; =C2=
=A0drivers/staging/fbtft/fb_ssd1306.c | =C2=A05 ++++-<br>&gt; &gt; =C2=A0dr=
ivers/staging/fbtft/fb_ssd1331.c | =C2=A03 ++-<br>&gt; &gt; =C2=A0drivers/s=
taging/fbtft/fbtft.h =C2=A0 =C2=A0 =C2=A0| 14 +++++++++++---<br>&gt; &gt; =
=C2=A0drivers/staging/fbtft/flexfb.c =C2=A0 =C2=A0 | =C2=A03 ++-<br>&gt; &g=
t; =C2=A04 files changed, 19 insertions(+), 6 deletions(-)<br>&gt; &gt;<br>=
&gt; &gt; diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging=
/fbtft/fb_ssd1306.c<br>&gt; &gt; index d7c5e2e..22c506a 100644<br>&gt; &gt;=
 --- a/drivers/staging/fbtft/fb_ssd1306.c<br>&gt; &gt; +++ b/drivers/stagin=
g/fbtft/fb_ssd1306.c<br>&gt; &gt; @@ -184,7 +184,10 @@ static int write_vme=
m(struct fbtft_par *par, size_t offset, size_t len)<br>&gt; &gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (y =3D 0; y &lt; yres / 8; y++) =
{<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 *buf =3D 0x00;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; 8; i+=
+)<br>&gt; &gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *buf |=3D (vmem16[(y * 8 + i) * x=
res + x] ? 1 : 0) &lt;&lt; i;<br>&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (v=
mem16[(y * 8 + i) * xres + x])<br>&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 *buf |=3D (1 &lt;&lt; i);<br>&gt; &gt; + =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 else<br>&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 *buf |=3D (0 &lt;&lt; i);<br>&gt;<br>&gt; You don&#39;t n=
eed the parentheses.<br>&gt;<br>&gt; I think that the above should be in a =
different patch than the rest, since<br>&gt; you do more than just add newl=
ines.<br><div><br></div><div>Do i need to create two patches?</div><div>pat=
ch one: line over 80 characters.</div><div>patch two:=C2=A0 if statement co=
nversion !<br></div>&gt; julia<br>&gt;<br>&gt;<br>&gt; &gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 buf++;<br>&g=
t; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; &gt; =C2=
=A0 =C2=A0 =C2=A0 }<br>&gt; &gt; diff --git a/drivers/staging/fbtft/fb_ssd1=
331.c b/drivers/staging/fbtft/fb_ssd1331.c<br>&gt; &gt; index 9f54fe2..4cfe=
9f8 100644<br>&gt; &gt; --- a/drivers/staging/fbtft/fb_ssd1331.c<br>&gt; &g=
t; +++ b/drivers/staging/fbtft/fb_ssd1331.c<br>&gt; &gt; @@ -74,7 +74,8 @@ =
static void write_reg8_bus8(struct fbtft_par *par, int len, ...)<br>&gt; &g=
t; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; le=
n; i++)<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 buf[i] =3D (u8)va_arg(args, unsigned int);<br>&gt;=
 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 va_end(args);<br>&gt=
; &gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fbtft_par_dbg_hex(DEBUG_=
WRITE_REGISTER, par, par-&gt;info-&gt;device, u8, buf, len, &quot;%s: &quot=
;, __func__);<br>&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fbtf=
t_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par-&gt;info-&gt;device,<br>&gt; &=
gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u8, buf, len, &quot;%s: &quot;, __func_=
_);<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 }<br>&gt; &gt;<br>&gt; &gt; =C2=A0 =
=C2=A0 =C2=A0 va_start(args, len);<br>&gt; &gt; diff --git a/drivers/stagin=
g/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h<br>&gt; &gt; index 7fdd3b0.=
.22c0c5d 100644<br>&gt; &gt; --- a/drivers/staging/fbtft/fbtft.h<br>&gt; &g=
t; +++ b/drivers/staging/fbtft/fbtft.h<br>&gt; &gt; @@ -347,9 +347,17 @@ mo=
dule_exit(fbtft_driver_module_exit);<br>&gt; &gt;<br>&gt; &gt; =C2=A0/* sho=
rthand debug levels */<br>&gt; &gt; =C2=A0#define DEBUG_LEVEL_1 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0DEBUG_REQUEST_GPIOS<br>&gt; &gt; -#define DEBUG_LEVEL_2 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | D=
EBUG_TIME_FIRST_UPDATE)<br>&gt; &gt; -#define DEBUG_LEVEL_3 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLAN=
K | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BAC=
KLIGHT | DEBUG_SYSFS)<br>&gt; &gt; -#define DEBUG_LEVEL_4 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRE=
CT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)<br>&gt; &gt; =
+#define DEBUG_LEVEL_2 =C2=A0 =C2=A0 =C2=A0 =C2=A0(DEBUG_LEVEL_1 | DEBUG_DR=
IVER_INIT_FUNCTIONS | =C2=A0\<br>&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG_TIME_FIRST_UPDATE) =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>&gt; &gt; +#define DEBUG_LEVEL_3 =C2=A0 =C2=A0 =C2=A0 =C2=A0(DEBUG=
_LEVEL_2 | DEBUG_RESET | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0\<br>&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG_INIT_DISPLAY | DEBUG_BLANK | =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG_REQUEST_GPIOS =
| DEBUG_FREE_GPIOS | =C2=A0 =C2=A0 =C2=A0 \<br>&gt; &gt; + =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG_VERIFY_=
GPIOS | DEBUG_BACKLIGHT | =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>&gt; &gt; + =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DE=
BUG_SYSFS) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>&gt; &gt; +#de=
fine DEBUG_LEVEL_4 =C2=A0 =C2=A0 =C2=A0 =C2=A0(DEBUG_LEVEL_2 | DEBUG_FB_REA=
D | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>&gt; &gt; +=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
\<br>&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | =C2=A0 =C2=A0 =
=C2=A0 \<br>&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG_FB_BLANK)<br>&gt; &gt; =C2=A0#define DEBUG=
_LEVEL_5 =C2=A0 =C2=A0 =C2=A0 =C2=A0(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)<=
br>&gt; &gt; =C2=A0#define DEBUG_LEVEL_6 =C2=A0 =C2=A0 =C2=A0 =C2=A0(DEBUG_=
LEVEL_4 | DEBUG_LEVEL_5)<br>&gt; &gt; =C2=A0#define DEBUG_LEVEL_7 =C2=A0 =
=C2=A0 =C2=A0 =C2=A00xFFFFFFFF<br>&gt; &gt; diff --git a/drivers/staging/fb=
tft/flexfb.c b/drivers/staging/fbtft/flexfb.c<br>&gt; &gt; index b91b459..3=
747321 100644<br>&gt; &gt; --- a/drivers/staging/fbtft/flexfb.c<br>&gt; &gt=
; +++ b/drivers/staging/fbtft/flexfb.c<br>&gt; &gt; @@ -671,7 +671,8 @@ sta=
tic int flexfb_probe_common(struct spi_device *sdev,<br>&gt; &gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break=
;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 case 9:<br>=
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 if (regwidth =3D=3D 16) {<br>&gt; &gt; - =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 dev_err(dev, &quot;argument &#39;regwidth&#39;: %d is not supported wit=
h buswidth=3D%d and SPI.\n&quot;, regwidth, buswidth);<br>&gt; &gt; + =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 dev_err(dev, &quot;argument &#39;regwidth&#39;: %d is =
not supported with buswidth=3D%d and SPI.\n&quot;,<br>&gt; &gt; + =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 regwidth, buswidth);<br>&gt; =
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EINVAL;<br>&gt; &gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt=
; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 par-&gt;fbtftops.write_register =3D fbtft_write_reg8_bus9;<br>&g=
t; &gt; --<br>&gt; &gt; 2.7.4<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; &gt; You=
 received this message because you are subscribed to the Google Groups &quo=
t;outreachy-kernel&quot; group.<br>&gt; &gt; To unsubscribe from this group=
 and stop receiving emails from it, send an email to <a href=3D"mailto:outr=
eachy-kernel%2Bunsubscribe@googlegroups.com">outreachy-kernel+unsubscribe@g=
ooglegroups.com</a>.<br>&gt; &gt; To post to this group, send email to <a h=
ref=3D"mailto:outreachy-kernel@googlegroups.com">outreachy-kernel@googlegro=
ups.com</a>.<br>&gt; &gt; To view this discussion on the web visit <a href=
=3D"https://groups.google.com/d/msgid/outreachy-kernel/20190309143505.GA148=
22%40bhagyashri-Lenovo-G570">https://groups.google.com/d/msgid/outreachy-ke=
rnel/20190309143505.GA14822%40bhagyashri-Lenovo-G570</a>.<br>&gt; &gt; For =
more options, visit <a href=3D"https://groups.google.com/d/optout">https://=
groups.google.com/d/optout</a>.<br>&gt; &gt;</div>

--000000000000a1b4a20583aa7618--

