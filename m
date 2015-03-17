X-GM-THRID: 8708200333312
X-Received: by 10.112.35.135 with SMTP id h7mr9711742lbj.23.1426582504535;
        Tue, 17 Mar 2015 01:55:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.164.193 with SMTP id ys1ls10126lab.39.gmail; Tue, 17 Mar
 2015 01:55:04 -0700 (PDT)
X-Received: by 10.112.125.67 with SMTP id mo3mr8115589lbb.6.1426582504009;
        Tue, 17 Mar 2015 01:55:04 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o3si65736wib.2.2015.03.17.01.55.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Mar 2015 01:55:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,415,1422918000"; 
   d="scan'208";a="103640759"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Mar 2015 09:55:03 +0100
Date: Tue, 17 Mar 2015 09:54:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniel Baluta <daniel.baluta@gmail.com>
cc: Haneen Mohammed <hamohammed.sa@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/4] Staging: iio: replace pr_err with
 dev_err
In-Reply-To: <CAEnQRZA4fAKcA=Vh5DRCHfh=WjB1HnhySffgkgu+6-9Qfu6orA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1503170954390.2408@hadrien>
References: <1426570219-22279-1-git-send-email-hamohammed.sa@gmail.com> <1426570541-22446-1-git-send-email-hamohammed.sa@gmail.com> <CAEnQRZA4fAKcA=Vh5DRCHfh=WjB1HnhySffgkgu+6-9Qfu6orA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 17 Mar 2015, Daniel Baluta wrote:

> On Tue, Mar 17, 2015 at 7:35 AM, Haneen Mohammed
> <hamohammed.sa@gmail.com> wrote:
> > This patch replace pr_err with dev_err, when appropriate device structre
> > is found.
> > Issue found using the following Coccinelle script:
> >
> > @r exists@
> > identifier f, s, i;
> > position p;
> > @@
> >
> > f(...,struct s *i,...) {
> > <+...
> > when != i == NULL
> > pr_err@p(...);
> > ...+>
> > }
> >
> > @rr@
> > identifier r.s, fld;
> > @@
> >
> > struct s {
> >         ...
> >         struct device *fld;
> >         ...
> > };
> >
> > @@
> > identifier r.i, rr.fld;
> > position r.p;
> > @@
> > -pr_err@p
> > +dev_err
> >    (
> > + i->fld,
> > ...)
> >
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
>
> Hi Haneen,
>
> There are a lot of other pr_err instances in that file that you can
> convert to dev_err.
>
> E.g
> ad2s1210_update_frequency_control_word
>
> You could use the st->sdev->dev. This applies for your changes below, too.

Maybe this is related to the lack of --all-includes.

julia

>
>
> > ---
> >  drivers/staging/iio/resolver/ad2s1210.c | 12 +++++++-----
> >  1 file changed, 7 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
> > index b4c14ba..1d8c5c0 100644
> > --- a/drivers/staging/iio/resolver/ad2s1210.c
> > +++ b/drivers/staging/iio/resolver/ad2s1210.c
> > @@ -214,7 +214,7 @@ static ssize_t ad2s1210_store_fclkin(struct device *dev,
> >         if (ret)
> >                 return ret;
> >         if (fclkin < AD2S1210_MIN_CLKIN || fclkin > AD2S1210_MAX_CLKIN) {
> > -               pr_err("ad2s1210: fclkin out of range\n");
> > +               dev_err(dev, "ad2s1210: fclkin out of range\n");
> >                 return -EINVAL;
> >         }
> >
> > @@ -252,7 +252,8 @@ static ssize_t ad2s1210_store_fexcit(struct device *dev,
> >         if (ret < 0)
> >                 return ret;
> >         if (fexcit < AD2S1210_MIN_EXCIT || fexcit > AD2S1210_MAX_EXCIT) {
> > -               pr_err("ad2s1210: excitation frequency out of range\n");
> > +               dev_err(dev,
> > +                       "ad2s1210: excitation frequency out of range\n");
> >                 return -EINVAL;
> >         }
> >         mutex_lock(&st->lock);
> > @@ -307,7 +308,8 @@ static ssize_t ad2s1210_store_control(struct device *dev,
> >                 goto error_ret;
> >         if (ret & AD2S1210_MSB_IS_HIGH) {
> >                 ret = -EIO;
> > -               pr_err("ad2s1210: write control register fail\n");
> > +               dev_err(dev,
> > +                       "ad2s1210: write control register fail\n");
> >                 goto error_ret;
> >         }
> >         st->resolution
> > @@ -346,7 +348,7 @@ static ssize_t ad2s1210_store_resolution(struct device *dev,
> >
> >         ret = kstrtou8(buf, 10, &udata);
> >         if (ret || udata < 10 || udata > 16) {
> > -               pr_err("ad2s1210: resolution out of range\n");
> > +               dev_err(dev, "ad2s1210: resolution out of range\n");
> >                 return -EINVAL;
> >         }
> >         mutex_lock(&st->lock);
> > @@ -368,7 +370,7 @@ static ssize_t ad2s1210_store_resolution(struct device *dev,
> >         data = ret;
> >         if (data & AD2S1210_MSB_IS_HIGH) {
> >                 ret = -EIO;
> > -               pr_err("ad2s1210: setting resolution fail\n");
> > +               dev_err(dev, "ad2s1210: setting resolution fail\n");
> >                 goto error_ret;
> >         }
> >         st->resolution
> thanks,
> Daniel.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAEnQRZA4fAKcA%3DVh5DRCHfh%3DWjB1HnhySffgkgu%2B6-9Qfu6orA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

