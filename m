X-GM-THRID: 8708200333312
X-Received: by 10.112.162.135 with SMTP id ya7mr9843932lbb.14.1426590645497;
        Tue, 17 Mar 2015 04:10:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.88.131 with SMTP id bg3ls65118wib.35.gmail; Tue, 17 Mar
 2015 04:10:45 -0700 (PDT)
X-Received: by 10.180.182.201 with SMTP id eg9mr6115663wic.3.1426590645173;
        Tue, 17 Mar 2015 04:10:45 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id sf8si100226wic.2.2015.03.17.04.10.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 04:10:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x229.google.com with SMTP id p1so4761539weg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 04:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=QYevlLj3pqXQ2a+QlmWMMEUl3qi/lKqv9tZvLa6UnEY=;
        b=muv/MpSEMJPUrxnW/4Yvp3v15dIho2jYjKetfEJG2q6pZwcAt614OIIsIrHV4RarT8
         pGfZqb6MkJptFRIL4TVIBscfvhpSsuUIW7uzRznfOjtwz0r+lIVkZe2Y7HubcH1tzAiJ
         zhO1C2prLo7ABTURfXYTbbDTwgCAulhTRHhLipTZrhOkR9WSd/u/W6c7fOqi7F34lb3M
         7JMwpdXGEaYijvvaHh1aX8raHHdkQ4g7VjTOPaapiB3UHk5F9BLCif/5Ww8oTkFYiJ4k
         SkT8jd48UiPZgd/PwA5ti1nz+jDwjUtcFh8uXSgu3Ek7Ua4nMxIdynJ+ixmQpNJfh8us
         J//Q==
X-Received: by 10.180.206.13 with SMTP id lk13mr82030062wic.35.1426590645070;
        Tue, 17 Mar 2015 04:10:45 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.114])
        by mx.google.com with ESMTPSA id j9sm19464654wjy.18.2015.03.17.04.10.43
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Mar 2015 04:10:44 -0700 (PDT)
Date: Tue, 17 Mar 2015 14:10:42 +0300
From: Haneen <hamohammed.sa@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/4] Staging: iio: replace pr_err with
 dev_err
Message-ID: <20150317111042.GA24753@haneen-vb>
References: <1426570219-22279-1-git-send-email-hamohammed.sa@gmail.com>
 <1426570541-22446-1-git-send-email-hamohammed.sa@gmail.com>
 <CAEnQRZA4fAKcA=Vh5DRCHfh=WjB1HnhySffgkgu+6-9Qfu6orA@mail.gmail.com>
 <alpine.DEB.2.10.1503170954390.2408@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1503170954390.2408@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Mar 17, 2015 at 09:54:57AM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 17 Mar 2015, Daniel Baluta wrote:
> 
> > On Tue, Mar 17, 2015 at 7:35 AM, Haneen Mohammed
> > <hamohammed.sa@gmail.com> wrote:
> > > This patch replace pr_err with dev_err, when appropriate device structre
> > > is found.
> > > Issue found using the following Coccinelle script:
> > >
> > > @r exists@
> > > identifier f, s, i;
> > > position p;
> > > @@
> > >
> > > f(...,struct s *i,...) {
> > > <+...
> > > when != i == NULL
> > > pr_err@p(...);
> > > ...+>
> > > }
> > >
> > > @rr@
> > > identifier r.s, fld;
> > > @@
> > >
> > > struct s {
> > >         ...
> > >         struct device *fld;
> > >         ...
> > > };
> > >
> > > @@
> > > identifier r.i, rr.fld;
> > > position r.p;
> > > @@
> > > -pr_err@p
> > > +dev_err
> > >    (
> > > + i->fld,
> > > ...)
> > >
> > > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> >
> > Hi Haneen,
> >
> > There are a lot of other pr_err instances in that file that you can
> > convert to dev_err.
> >
> > E.g
> > ad2s1210_update_frequency_control_word
> >
> > You could use the st->sdev->dev. This applies for your changes below, too.
> 
> Maybe this is related to the lack of --all-includes.
> 
> julia
> 

I did use --all-includes :) this is what I used:

$ spatch --sp-file ../pr3.cocci   --all-includes -I include/ --dir
drivers/staging/ > ../pr4.out

This was hinted in this video, becuase without it I didn't get any
result:
https://www.youtube.com/watch?v=4uhHhKTOHDs

But I think I need to refine the script to include other cases.
Also, I needed to manulaly adjust some of the outputs such as when the
device struct is what was passed in the function, becuase for that I got
the following in comedi/comedi_fops.c:
 dev_err(hardware_device->parent,
                       "ran out of minor numbers for board device
 files\n");

And I got two outputs that I couldn't confirm if there were a device
struct, such as "dev_err(port->dev," from panel/panel.c file and
dev_err(mc_io->dev, from fsl-mc/bus/mc-bus.c


> >
> >
> > > ---
> > >  drivers/staging/iio/resolver/ad2s1210.c | 12 +++++++-----
> > >  1 file changed, 7 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
> > > index b4c14ba..1d8c5c0 100644
> > > --- a/drivers/staging/iio/resolver/ad2s1210.c
> > > +++ b/drivers/staging/iio/resolver/ad2s1210.c
> > > @@ -214,7 +214,7 @@ static ssize_t ad2s1210_store_fclkin(struct device *dev,
> > >         if (ret)
> > >                 return ret;
> > >         if (fclkin < AD2S1210_MIN_CLKIN || fclkin > AD2S1210_MAX_CLKIN) {
> > > -               pr_err("ad2s1210: fclkin out of range\n");
> > > +               dev_err(dev, "ad2s1210: fclkin out of range\n");
> > >                 return -EINVAL;
> > >         }
> > >
> > > @@ -252,7 +252,8 @@ static ssize_t ad2s1210_store_fexcit(struct device *dev,
> > >         if (ret < 0)
> > >                 return ret;
> > >         if (fexcit < AD2S1210_MIN_EXCIT || fexcit > AD2S1210_MAX_EXCIT) {
> > > -               pr_err("ad2s1210: excitation frequency out of range\n");
> > > +               dev_err(dev,
> > > +                       "ad2s1210: excitation frequency out of range\n");
> > >                 return -EINVAL;
> > >         }
> > >         mutex_lock(&st->lock);
> > > @@ -307,7 +308,8 @@ static ssize_t ad2s1210_store_control(struct device *dev,
> > >                 goto error_ret;
> > >         if (ret & AD2S1210_MSB_IS_HIGH) {
> > >                 ret = -EIO;
> > > -               pr_err("ad2s1210: write control register fail\n");
> > > +               dev_err(dev,
> > > +                       "ad2s1210: write control register fail\n");
> > >                 goto error_ret;
> > >         }
> > >         st->resolution
> > > @@ -346,7 +348,7 @@ static ssize_t ad2s1210_store_resolution(struct device *dev,
> > >
> > >         ret = kstrtou8(buf, 10, &udata);
> > >         if (ret || udata < 10 || udata > 16) {
> > > -               pr_err("ad2s1210: resolution out of range\n");
> > > +               dev_err(dev, "ad2s1210: resolution out of range\n");
> > >                 return -EINVAL;
> > >         }
> > >         mutex_lock(&st->lock);
> > > @@ -368,7 +370,7 @@ static ssize_t ad2s1210_store_resolution(struct device *dev,
> > >         data = ret;
> > >         if (data & AD2S1210_MSB_IS_HIGH) {
> > >                 ret = -EIO;
> > > -               pr_err("ad2s1210: setting resolution fail\n");
> > > +               dev_err(dev, "ad2s1210: setting resolution fail\n");
> > >                 goto error_ret;
> > >         }
> > >         st->resolution
> > thanks,
> > Daniel.
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAEnQRZA4fAKcA%3DVh5DRCHfh%3DWjB1HnhySffgkgu%2B6-9Qfu6orA%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

