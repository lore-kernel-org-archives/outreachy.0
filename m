X-GM-THRID: 8708200333312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d44f7e60dab64738
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.224.12 with SMTP id qy12mr9817980lbc.10.1426591257142;
        Tue, 17 Mar 2015 04:20:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.42 with SMTP id g10ls25850laa.51.gmail; Tue, 17 Mar 2015
 04:20:56 -0700 (PDT)
X-Received: by 10.112.202.227 with SMTP id kl3mr3236736lbc.2.1426591256710;
        Tue, 17 Mar 2015 04:20:56 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id sf8si103406wic.2.2015.03.17.04.20.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Mar 2015 04:20:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,416,1422918000"; 
   d="scan'208";a="126359728"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Mar 2015 12:20:55 +0100
Date: Tue, 17 Mar 2015 12:20:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/4] Staging: iio: replace pr_err with
 dev_err
In-Reply-To: <20150317111042.GA24753@haneen-vb>
Message-ID: <alpine.DEB.2.10.1503171217460.2408@hadrien>
References: <1426570219-22279-1-git-send-email-hamohammed.sa@gmail.com> <1426570541-22446-1-git-send-email-hamohammed.sa@gmail.com> <CAEnQRZA4fAKcA=Vh5DRCHfh=WjB1HnhySffgkgu+6-9Qfu6orA@mail.gmail.com> <alpine.DEB.2.10.1503170954390.2408@hadrien>
 <20150317111042.GA24753@haneen-vb>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 17 Mar 2015, Haneen wrote:

> On Tue, Mar 17, 2015 at 09:54:57AM +0100, Julia Lawall wrote:
> >
> >
> > On Tue, 17 Mar 2015, Daniel Baluta wrote:
> >
> > > On Tue, Mar 17, 2015 at 7:35 AM, Haneen Mohammed
> > > <hamohammed.sa@gmail.com> wrote:
> > > > This patch replace pr_err with dev_err, when appropriate device structre
> > > > is found.
> > > > Issue found using the following Coccinelle script:
> > > >
> > > > @r exists@
> > > > identifier f, s, i;
> > > > position p;
> > > > @@
> > > >
> > > > f(...,struct s *i,...) {
> > > > <+...
> > > > when != i == NULL
> > > > pr_err@p(...);
> > > > ...+>
> > > > }
> > > >
> > > > @rr@
> > > > identifier r.s, fld;
> > > > @@
> > > >
> > > > struct s {
> > > >         ...
> > > >         struct device *fld;
> > > >         ...
> > > > };
> > > >
> > > > @@
> > > > identifier r.i, rr.fld;
> > > > position r.p;
> > > > @@
> > > > -pr_err@p
> > > > +dev_err
> > > >    (
> > > > + i->fld,
> > > > ...)
> > > >
> > > > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > >
> > > Hi Haneen,
> > >
> > > There are a lot of other pr_err instances in that file that you can
> > > convert to dev_err.
> > >
> > > E.g
> > > ad2s1210_update_frequency_control_word
> > >
> > > You could use the st->sdev->dev. This applies for your changes below, too.
> >
> > Maybe this is related to the lack of --all-includes.
> >
> > julia
> >
>
> I did use --all-includes :) this is what I used:

OK, you can try replacing --all-includes with --recursive-includes.  That
will include header files that are included by other header files.  It
could be slow, though.

In thinking about it, I think that you are right that you should include
more patterns.  For your parameter, you have a type, so you need to look
in it for a device strcuture, but if you don't find it, you may want to
look in all other structure typed fields to see if their types have device
structures.

julia


> $ spatch --sp-file ../pr3.cocci   --all-includes -I include/ --dir
> drivers/staging/ > ../pr4.out
>
> This was hinted in this video, becuase without it I didn't get any
> result:
> https://www.youtube.com/watch?v=4uhHhKTOHDs
>
> But I think I need to refine the script to include other cases.
> Also, I needed to manulaly adjust some of the outputs such as when the
> device struct is what was passed in the function, becuase for that I got
> the following in comedi/comedi_fops.c:
>  dev_err(hardware_device->parent,
>                        "ran out of minor numbers for board device
>  files\n");
>
> And I got two outputs that I couldn't confirm if there were a device
> struct, such as "dev_err(port->dev," from panel/panel.c file and
> dev_err(mc_io->dev, from fsl-mc/bus/mc-bus.c
>
>
> > >
> > >
> > > > ---
> > > >  drivers/staging/iio/resolver/ad2s1210.c | 12 +++++++-----
> > > >  1 file changed, 7 insertions(+), 5 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
> > > > index b4c14ba..1d8c5c0 100644
> > > > --- a/drivers/staging/iio/resolver/ad2s1210.c
> > > > +++ b/drivers/staging/iio/resolver/ad2s1210.c
> > > > @@ -214,7 +214,7 @@ static ssize_t ad2s1210_store_fclkin(struct device *dev,
> > > >         if (ret)
> > > >                 return ret;
> > > >         if (fclkin < AD2S1210_MIN_CLKIN || fclkin > AD2S1210_MAX_CLKIN) {
> > > > -               pr_err("ad2s1210: fclkin out of range\n");
> > > > +               dev_err(dev, "ad2s1210: fclkin out of range\n");
> > > >                 return -EINVAL;
> > > >         }
> > > >
> > > > @@ -252,7 +252,8 @@ static ssize_t ad2s1210_store_fexcit(struct device *dev,
> > > >         if (ret < 0)
> > > >                 return ret;
> > > >         if (fexcit < AD2S1210_MIN_EXCIT || fexcit > AD2S1210_MAX_EXCIT) {
> > > > -               pr_err("ad2s1210: excitation frequency out of range\n");
> > > > +               dev_err(dev,
> > > > +                       "ad2s1210: excitation frequency out of range\n");
> > > >                 return -EINVAL;
> > > >         }
> > > >         mutex_lock(&st->lock);
> > > > @@ -307,7 +308,8 @@ static ssize_t ad2s1210_store_control(struct device *dev,
> > > >                 goto error_ret;
> > > >         if (ret & AD2S1210_MSB_IS_HIGH) {
> > > >                 ret = -EIO;
> > > > -               pr_err("ad2s1210: write control register fail\n");
> > > > +               dev_err(dev,
> > > > +                       "ad2s1210: write control register fail\n");
> > > >                 goto error_ret;
> > > >         }
> > > >         st->resolution
> > > > @@ -346,7 +348,7 @@ static ssize_t ad2s1210_store_resolution(struct device *dev,
> > > >
> > > >         ret = kstrtou8(buf, 10, &udata);
> > > >         if (ret || udata < 10 || udata > 16) {
> > > > -               pr_err("ad2s1210: resolution out of range\n");
> > > > +               dev_err(dev, "ad2s1210: resolution out of range\n");
> > > >                 return -EINVAL;
> > > >         }
> > > >         mutex_lock(&st->lock);
> > > > @@ -368,7 +370,7 @@ static ssize_t ad2s1210_store_resolution(struct device *dev,
> > > >         data = ret;
> > > >         if (data & AD2S1210_MSB_IS_HIGH) {
> > > >                 ret = -EIO;
> > > > -               pr_err("ad2s1210: setting resolution fail\n");
> > > > +               dev_err(dev, "ad2s1210: setting resolution fail\n");
> > > >                 goto error_ret;
> > > >         }
> > > >         st->resolution
> > > thanks,
> > > Daniel.
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAEnQRZA4fAKcA%3DVh5DRCHfh%3DWjB1HnhySffgkgu%2B6-9Qfu6orA%40mail.gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150317111042.GA24753%40haneen-vb.
> For more options, visit https://groups.google.com/d/optout.
>

