X-GM-THRID: 6469221009179279360
X-Received: by 10.176.0.51 with SMTP id 48mr4054935uai.82.1506285391126;
        Sun, 24 Sep 2017 13:36:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.218.72 with SMTP id x8ls2743102plv.13.gmail; Sun, 24 Sep
 2017 13:36:30 -0700 (PDT)
X-Received: by 10.84.233.2 with SMTP id j2mr3136158plk.14.1506285390081;
        Sun, 24 Sep 2017 13:36:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506285390; cv=none;
        d=google.com; s=arc-20160816;
        b=W4cZTFafjyrZU3JiWFMXFwu3xRo5xHyAbyfyPEJX6osn1TVZ0aQGLo6gRro5sx6wTk
         xMoxRTvnY/d3ceIgOHMWWxVbhhtuP22SCaq0kfEpTm3KzSvs25JLkhoNzcN80aLQLmy5
         Io7pogTxyHToSIBVVjSXsbhaMQWI0Z+HAeSdNFXH84sfj21J1i8Q5MqunRirCTnbulQs
         r96zbflLHrtDw0s7xzsplGvSR+fMVjPFm2d9mQg62TQ40dEa+IO0lBZGrmxWe4hxXigx
         uXCcRsTy8331+NxJp656Jt9YsD2x9SKpskbveDJafjYnUavLkIYdS46peEhF5/qQ6XgT
         OoLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=v8vQuMY8mGqnsVB1IVt3tul/AXROL/9j+UJpiGIx/KA=;
        b=kiWoc6qzCZJ63ZaQOj7myxbkWHvicYwdMaJ0fspi2BpAhgaD7EVBPNazK/OP1mIjpY
         9z+8+VBNM6ODbljQ+7B+IHuUDaANXGbg9dnjuqiZMmbxjV+icAMj3EDgQcNrgY/T4x4j
         L3r+EIeOmjAjHKJJD0VE6R2ONzsVraASV8CkQs0y2FJiBUHwLZzjH3Doa5No0v2ShyXN
         gLE+PjG7CMy/+7gnjVm6LTparfqXJHv3RcsM6nXLYmIXTSb5ilB3Wc2dMf591CMLf0XE
         g+veZSeGmzRGHaOQpR1EjQBpt/YEGrytt//XA+am9yfpqiKHOXjHpbvolpePFDu8U5Yz
         ZLpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uNpfnp4b;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-ua0-x243.google.com (mail-ua0-x243.google.com. [2607:f8b0:400c:c08::243])
        by gmr-mx.google.com with ESMTPS id t10si198131vkb.12.2017.09.24.13.36.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Sep 2017 13:36:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) client-ip=2607:f8b0:400c:c08::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uNpfnp4b;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x243.google.com with SMTP id k23so1717603uaf.3
        for <outreachy-kernel@googlegroups.com>; Sun, 24 Sep 2017 13:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=v8vQuMY8mGqnsVB1IVt3tul/AXROL/9j+UJpiGIx/KA=;
        b=uNpfnp4bZLY08elCW5dcXklALOJe8rb0/8z9f7IRczzjszGWjK0CtuS8TKsneZRfY5
         xPcW/ObNT6y6wf3OEDMDu6j9sdmsDG7i9OZGr8IxSeesBsiR38iT6HlO+FLgYQimQ6rD
         mGEWNdwvx7KLI3hMo9RwlEIpCcZfB/zwVJHX76gspTDUd3Q1ae+aqbwH92adqq4Cbl/N
         6PmAwpv8rBXMi6eIWrj1MRLj9wgR0YH1Y+ELlrgY1E8FI3EaJXsT7EvNawswYS16UQ63
         AK471owqNUbAoQkuBVrJPDvRDrUjAsFJ29zD5wsWtAFZfOlacOUkfeSCyaWqV6/BrR6W
         kunA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=v8vQuMY8mGqnsVB1IVt3tul/AXROL/9j+UJpiGIx/KA=;
        b=F2WwfmfK/gmOWD+YO9dEsKscOBNmldUkhhXv5mg7dmzFAS2Csk3XxFbjnlk2Zk+WPf
         1y7Rk9XAyNtUvEHKYIRKUfmvHkVHW50SxkXLBVYdbAKg6qaFOQZ4S3rnvfl2q/4vPyOr
         pvcsS1HUillnwDB49IxAY62zSeiFh4vH1i/LwMG0kPbdMtGea0gNX9jqYUMwCcU5P+ia
         Hh7lRz7mbE66YU5v8blD26KQKQ8xSSYpOvFVjuYQ4I/m2ig8WQq5+33mFo9rOsAlyWJm
         XW2lq9QKsfxGoJFqBCKberi//rGa9POn14E2kBNXUm5G4EjNsJTG7eYrBnRpISg2529X
         IbAw==
X-Gm-Message-State: AHPjjUhw0jAA8Ukpm8riLB5raEQUQZIo4AFEjHcLhpcyMf/f82w7HqqL
	sGWkmHAbl4GXo0S9zfGU+5BI/Xyt69TwqOR/hNY=
X-Google-Smtp-Source: AOwi7QD+TTCBrpA3F6R4lR7DlITHFHGqpPbhQbPIUmULUi5bxZRuIgSgBQXR3jKdGAhyo3zNZMAqTVi84GJX63nH1V8=
X-Received: by 10.176.29.12 with SMTP id j12mr5754062uak.3.1506285389748; Sun,
 24 Sep 2017 13:36:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.38.65 with HTTP; Sun, 24 Sep 2017 13:36:29 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709241854120.2366@hadrien>
References: <1506271437-23058-1-git-send-email-harshasharmaiitr@gmail.com> <alpine.DEB.2.20.1709241854120.2366@hadrien>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Mon, 25 Sep 2017 02:06:29 +0530
Message-ID: <CANMOCy0TvwMk2r76-+3jstGfbVG=RXUWDAJ-TQxsh68yh3dR6g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] drm/tegra: Replace dev_* with DRM_DEV_*
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Thierry Reding <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="089e082682b8961d8b0559f56557"

--089e082682b8961d8b0559f56557
Content-Type: text/plain; charset="UTF-8"

Hi,
Thanks a lot for your feedback.
I will send another version for this patch.
Thanks for your time.

Regards,
Harsha Sharma

On Sun, Sep 24, 2017 at 10:30 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 24 Sep 2017, Harsha Sharma wrote:
>
> > Replace all occurences of dev_info/err/dbg with DRM_DEV_INFO/
> > ERROR/DEBUG as we have DRM_DEV_* variants of drm print macros
> > Done using following coccinelle semantic patch
> >
> > @r@
> > @@
> >
> > (
> > -dev_info
> > +DRM_DEV_INFO
> > |
> > -dev_err
> > +DRM_DEV_ERROR
> > |
> > -dev_dbg
> > +DRM_DEV_DEBUG
> > )
> >
> > Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> > ---
> > Changes in v2:
> >  -Break line over 80 characters
> >  -Changes in comments not required
> >
> >  drivers/gpu/drm/tegra/dc.c     |  53 +++++++-----
> >  drivers/gpu/drm/tegra/dpaux.c  |  24 +++---
> >  drivers/gpu/drm/tegra/dsi.c    |  68 ++++++++-------
> >  drivers/gpu/drm/tegra/falcon.c |  16 ++--
> >  drivers/gpu/drm/tegra/fb.c     |  22 +++--
> >  drivers/gpu/drm/tegra/gem.c    |   8 +-
> >  drivers/gpu/drm/tegra/gr2d.c   |  10 ++-
> >  drivers/gpu/drm/tegra/gr3d.c   |  20 +++--
> >  drivers/gpu/drm/tegra/hdmi.c   |  66 +++++++++------
> >  drivers/gpu/drm/tegra/output.c |   8 +-
> >  drivers/gpu/drm/tegra/rgb.c    |  12 +--
> >  drivers/gpu/drm/tegra/sor.c    | 184 +++++++++++++++++++++++++-----
> -----------
> >  drivers/gpu/drm/tegra/vic.c    |  15 ++--
> >  13 files changed, 304 insertions(+), 202 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/tegra/dc.c b/drivers/gpu/drm/tegra/dc.c
> > index 4df3911..fbc9cc1 100644
> > --- a/drivers/gpu/drm/tegra/dc.c
> > +++ b/drivers/gpu/drm/tegra/dc.c
> > @@ -1137,7 +1137,7 @@ static void tegra_dc_commit_state(struct tegra_dc
> *dc,
> >
> >       err = clk_set_parent(dc->clk, state->clk);
> >       if (err < 0)
> > -             dev_err(dc->dev, "failed to set parent clock: %d\n", err);
> > +             DRM_DEV_ERROR(dc->dev, "failed to set parent clock: %d\n",
> err);
> >
> >       /*
> >        * Outputs may not want to change the parent clock rate. This is
> only
> > @@ -1150,7 +1150,7 @@ static void tegra_dc_commit_state(struct tegra_dc
> *dc,
> >       if (state->pclk > 0) {
> >               err = clk_set_rate(state->clk, state->pclk);
> >               if (err < 0)
> > -                     dev_err(dc->dev,
> > +                     DRM_DEV_ERROR(dc->dev,
> >                               "failed to set clock rate to %lu Hz\n",
> >                               state->pclk);
> >       }
> > @@ -1195,7 +1195,7 @@ static int tegra_dc_wait_idle(struct tegra_dc *dc,
> unsigned long timeout)
> >               usleep_range(1000, 2000);
> >       }
> >
> > -     dev_dbg(dc->dev, "timeout waiting for DC to become idle\n");
> > +     DRM_DEV_DEBUG(dc->dev, "timeout waiting for DC to become idle\n");
> >       return -ETIMEDOUT;
> >  }
> >
> > @@ -1763,7 +1763,8 @@ static int tegra_dc_init(struct host1x_client
> *client)
> >       if (tegra->domain) {
> >               err = iommu_attach_device(tegra->domain, dc->dev);
> >               if (err < 0) {
> > -                     dev_err(dc->dev, "failed to attach to domain:
> %d\n",
> > +                     DRM_DEV_ERROR(dc->dev,
> > +                             "failed to attach to domain: %d\n",
> >                               err);
> >                       return err;
> >               }
> > @@ -1801,7 +1802,8 @@ static int tegra_dc_init(struct host1x_client
> *client)
> >
> >       err = tegra_dc_rgb_init(drm, dc);
> >       if (err < 0 && err != -ENODEV) {
> > -             dev_err(dc->dev, "failed to initialize RGB output: %d\n",
> err);
> > +             DRM_DEV_ERROR(dc->dev,
> > +                     "failed to initialize RGB output: %d\n", err);
> >               goto cleanup;
> >       }
> >
> > @@ -1812,13 +1814,15 @@ static int tegra_dc_init(struct host1x_client
> *client)
> >       if (IS_ENABLED(CONFIG_DEBUG_FS)) {
> >               err = tegra_dc_debugfs_init(dc, drm->primary);
> >               if (err < 0)
> > -                     dev_err(dc->dev, "debugfs setup failed: %d\n",
> err);
> > +                     DRM_DEV_ERROR(dc->dev,
> > +                             "debugfs setup failed: %d\n", err);
>
> The string could be on the same line as the function name.  Just the err
> could be moved to the next line, and lined up with the right side of the (.
>
> Overall, looking through the rest, it would probably really be nicer to
> line the extra arguments up with the right side of the (.
>
>
> >       }
> >
> >       err = devm_request_irq(dc->dev, dc->irq, tegra_dc_irq, 0,
> >                              dev_name(dc->dev), dc);
> >       if (err < 0) {
> > -             dev_err(dc->dev, "failed to request IRQ#%u: %d\n", dc->irq,
> > +             DRM_DEV_ERROR(dc->dev,
> > +                     "failed to request IRQ#%u: %d\n", dc->irq,
>
> Same here.  Try to keep the string on the first line.
>
> >                       err);
> >               goto cleanup;
> >       }
> > @@ -1850,12 +1854,14 @@ static int tegra_dc_exit(struct host1x_client
> *client)
> >       if (IS_ENABLED(CONFIG_DEBUG_FS)) {
> >               err = tegra_dc_debugfs_exit(dc);
> >               if (err < 0)
> > -                     dev_err(dc->dev, "debugfs cleanup failed: %d\n",
> err);
> > +                     DRM_DEV_ERROR(dc->dev,
> > +                             "debugfs cleanup failed: %d\n", err);
>
> Same here.  And so on.
>
> [...]
>
> > diff --git a/drivers/gpu/drm/tegra/dsi.c b/drivers/gpu/drm/tegra/dsi.c
> > index 046649e..f9e4ad3 100644
> > --- a/drivers/gpu/drm/tegra/dsi.c
> > +++ b/drivers/gpu/drm/tegra/dsi.c
> > @@ -854,7 +854,8 @@ static void tegra_dsi_unprepare(struct tegra_dsi
> *dsi)
> >
> >       err = tegra_mipi_disable(dsi->mipi);
> >       if (err < 0)
> > -             dev_err(dsi->dev, "failed to disable MIPI calibration:
> %d\n",
> > +             DRM_DEV_ERROR(dsi->dev,
> > +             "failed to disable MIPI calibration: %d\n",
>
> Here the string is much too far to the left.
>
> julia
>

--089e082682b8961d8b0559f56557
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>Thanks a lot for your feedback.</div><div>I will s=
end another version for this patch.</div><div>Thanks for your time.</div><d=
iv><br></div><div>Regards,</div><div>Harsha Sharma</div></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Sun, Sep 24, 2017 at 10:30 =
PM, Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.=
fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
On Sun, 24 Sep 2017, Harsha Sharma wrote:<br>
<br>
&gt; Replace all occurences of dev_info/err/dbg with DRM_DEV_INFO/<br>
&gt; ERROR/DEBUG as we have DRM_DEV_* variants of drm print macros<br>
&gt; Done using following coccinelle semantic patch<br>
&gt;<br>
&gt; @r@<br>
&gt; @@<br>
&gt;<br>
&gt; (<br>
&gt; -dev_info<br>
&gt; +DRM_DEV_INFO<br>
&gt; |<br>
&gt; -dev_err<br>
&gt; +DRM_DEV_ERROR<br>
&gt; |<br>
&gt; -dev_dbg<br>
&gt; +DRM_DEV_DEBUG<br>
&gt; )<br>
&gt;<br>
&gt; Signed-off-by: Harsha Sharma &lt;<a href=3D"mailto:harshasharmaiitr@gm=
ail.com">harshasharmaiitr@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; Changes in v2:<br>
&gt;=C2=A0 -Break line over 80 characters<br>
&gt;=C2=A0 -Changes in comments not required<br>
&gt;<br>
&gt;=C2=A0 drivers/gpu/drm/tegra/dc.c=C2=A0 =C2=A0 =C2=A0|=C2=A0 53 +++++++=
-----<br>
&gt;=C2=A0 drivers/gpu/drm/tegra/dpaux.c=C2=A0 |=C2=A0 24 +++---<br>
&gt;=C2=A0 drivers/gpu/drm/tegra/dsi.c=C2=A0 =C2=A0 |=C2=A0 68 ++++++++----=
---<br>
&gt;=C2=A0 drivers/gpu/drm/tegra/falcon.c |=C2=A0 16 ++--<br>
&gt;=C2=A0 drivers/gpu/drm/tegra/fb.c=C2=A0 =C2=A0 =C2=A0|=C2=A0 22 +++--<b=
r>
&gt;=C2=A0 drivers/gpu/drm/tegra/gem.c=C2=A0 =C2=A0 |=C2=A0 =C2=A08 +-<br>
&gt;=C2=A0 drivers/gpu/drm/tegra/gr2d.c=C2=A0 =C2=A0|=C2=A0 10 ++-<br>
&gt;=C2=A0 drivers/gpu/drm/tegra/gr3d.c=C2=A0 =C2=A0|=C2=A0 20 +++--<br>
&gt;=C2=A0 drivers/gpu/drm/tegra/hdmi.c=C2=A0 =C2=A0|=C2=A0 66 +++++++++---=
---<br>
&gt;=C2=A0 drivers/gpu/drm/tegra/output.c |=C2=A0 =C2=A08 +-<br>
&gt;=C2=A0 drivers/gpu/drm/tegra/rgb.c=C2=A0 =C2=A0 |=C2=A0 12 +--<br>
&gt;=C2=A0 drivers/gpu/drm/tegra/sor.c=C2=A0 =C2=A0 | 184 +++++++++++++++++=
++++++++-----<wbr>-----------<br>
&gt;=C2=A0 drivers/gpu/drm/tegra/vic.c=C2=A0 =C2=A0 |=C2=A0 15 ++--<br>
&gt;=C2=A0 13 files changed, 304 insertions(+), 202 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/gpu/drm/tegra/dc.c b/drivers/gpu/drm/tegra/dc.c<b=
r>
&gt; index 4df3911..fbc9cc1 100644<br>
&gt; --- a/drivers/gpu/drm/tegra/dc.c<br>
&gt; +++ b/drivers/gpu/drm/tegra/dc.c<br>
&gt; @@ -1137,7 +1137,7 @@ static void tegra_dc_commit_state(struct tegra_d=
c *dc,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D clk_set_parent(dc-&gt;clk, state-&gt=
;clk);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (err &lt; 0)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dc-&gt;dev, &=
quot;failed to set parent clock: %d\n&quot;, err);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DRM_DEV_ERROR(dc-&gt;=
dev, &quot;failed to set parent clock: %d\n&quot;, err);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * Outputs may not want to change the parent=
 clock rate. This is only<br>
&gt; @@ -1150,7 +1150,7 @@ static void tegra_dc_commit_state(struct tegra_d=
c *dc,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (state-&gt;pclk &gt; 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D clk_set_=
rate(state-&gt;clk, state-&gt;pclk);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (err &lt; 0)<=
br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0dev_err(dc-&gt;dev,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DRM_DEV_ERROR(dc-&gt;dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;failed to set clock rate to =
%lu Hz\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0state-&gt;pclk);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -1195,7 +1195,7 @@ static int tegra_dc_wait_idle(struct tegra_dc *d=
c, unsigned long timeout)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usleep_range(100=
0, 2000);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dev_dbg(dc-&gt;dev, &quot;timeout waiting for DC =
to become idle\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0DRM_DEV_DEBUG(dc-&gt;dev, &quot;timeout waiting f=
or DC to become idle\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return -ETIMEDOUT;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt; @@ -1763,7 +1763,8 @@ static int tegra_dc_init(struct host1x_client *c=
lient)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (tegra-&gt;domain) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D iommu_at=
tach_device(tegra-&gt;<wbr>domain, dc-&gt;dev);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (err &lt; 0) =
{<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0dev_err(dc-&gt;dev, &quot;failed to attach to domain: %d\n&quot;,<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DRM_DEV_ERROR(dc-&gt;dev,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;failed to attach to domain: %d\n&q=
uot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0err);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return err;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -1801,7 +1802,8 @@ static int tegra_dc_init(struct host1x_client *c=
lient)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D tegra_dc_rgb_init(drm, dc);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (err &lt; 0 &amp;&amp; err !=3D -ENODEV) =
{<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dc-&gt;dev, &=
quot;failed to initialize RGB output: %d\n&quot;, err);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DRM_DEV_ERROR(dc-&gt;=
dev,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0&quot;failed to initialize RGB output: %d\n&quot;, err);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto cleanup;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; @@ -1812,13 +1814,15 @@ static int tegra_dc_init(struct host1x_client =
*client)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ENABLED(CONFIG_DEBUG_FS)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D tegra_dc=
_debugfs_init(dc, drm-&gt;primary);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (err &lt; 0)<=
br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0dev_err(dc-&gt;dev, &quot;debugfs setup failed: %d\n&quot;, err);<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DRM_DEV_ERROR(dc-&gt;dev,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;debugfs setup failed: %d\n&quot;, =
err);<br>
<br>
</div></div>The string could be on the same line as the function name.=C2=
=A0 Just the err<br>
could be moved to the next line, and lined up with the right side of the (.=
<br>
<br>
Overall, looking through the rest, it would probably really be nicer to<br>
line the extra arguments up with the right side of the (.<br>
<span class=3D""><br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D devm_request_irq(dc-&gt;dev, dc-&gt;=
irq, tegra_dc_irq, 0,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_name(dc-&gt;dev), dc);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (err &lt; 0) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dc-&gt;dev, &=
quot;failed to request IRQ#%u: %d\n&quot;, dc-&gt;irq,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DRM_DEV_ERROR(dc-&gt;=
dev,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0&quot;failed to request IRQ#%u: %d\n&quot;, dc-&gt;irq,<br>
<br>
</span>Same here.=C2=A0 Try to keep the string on the first line.<br>
<span class=3D""><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0err);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto cleanup;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -1850,12 +1854,14 @@ static int tegra_dc_exit(struct host1x_client =
*client)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ENABLED(CONFIG_DEBUG_FS)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D tegra_dc=
_debugfs_exit(dc);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (err &lt; 0)<=
br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0dev_err(dc-&gt;dev, &quot;debugfs cleanup failed: %d\n&quot;, err);<=
br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DRM_DEV_ERROR(dc-&gt;dev,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;debugfs cleanup failed: %d\n&quot;=
, err);<br>
<br>
</span>Same here.=C2=A0 And so on.<br>
<br>
[...]<br>
<span class=3D""><br>
&gt; diff --git a/drivers/gpu/drm/tegra/dsi.c b/drivers/gpu/drm/tegra/dsi.c=
<br>
&gt; index 046649e..f9e4ad3 100644<br>
&gt; --- a/drivers/gpu/drm/tegra/dsi.c<br>
&gt; +++ b/drivers/gpu/drm/tegra/dsi.c<br>
&gt; @@ -854,7 +854,8 @@ static void tegra_dsi_unprepare(struct tegra_dsi *=
dsi)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D tegra_mipi_disable(dsi-&gt;mipi);<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (err &lt; 0)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dsi-&gt;dev, =
&quot;failed to disable MIPI calibration: %d\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DRM_DEV_ERROR(dsi-&gt=
;dev,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;failed to disab=
le MIPI calibration: %d\n&quot;,<br>
<br>
</span>Here the string is much too far to the left.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
julia<br>
</font></span></blockquote></div><br></div>

--089e082682b8961d8b0559f56557--

