X-GM-THRID: 9152848986112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,56524335c2ab2304
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.77.101 with SMTP id r5mr13221142lbw.4.1426843913725;
        Fri, 20 Mar 2015 02:31:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.44.136 with SMTP id e8ls446169lam.91.gmail; Fri, 20 Mar
 2015 02:31:53 -0700 (PDT)
X-Received: by 10.112.25.7 with SMTP id y7mr12645984lbf.21.1426843913090;
        Fri, 20 Mar 2015 02:31:53 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id sf8si309061wic.2.2015.03.20.02.31.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 02:31:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22c.google.com with SMTP id cc7so84238173wgb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 02:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-type:mime-version:content-transfer-encoding;
        bh=NRUHSISeV6EpGP7k5BaLd6A8Ew2qjhY42Vs4GSEKxRo=;
        b=XyHVqVGDtijvk+CkcJx2yX8wR1UA6t1mDv8GQ8s9PebeINUmRuXLBYeHrJKILn4NSb
         7Z+yOZ3tEM1aj2qY3mnbgY8MpKNOPKCF5Meu38uSJShwstj9SnqAYIk8ULK/60xCY0xV
         VK4N0SCjPBFEpvJgRnw0aW2vmnZmHF0yzzNJP3Ioo4Jew5k89bgEWMqnPtX/fOnVIu7K
         G1FjbQaaivBvjWmkfnChVi5EBqzygchur5usmA9wh+TJXhOpPehOcdagHQ89qNWruVn3
         FeSTvwRNKNIj57c+0n2RghlrUOAORpMCX7fNWP9N2H5bUEPg75nI/kOk2wgUW58yfai6
         qWfg==
X-Received: by 10.180.206.13 with SMTP id lk13mr22458480wic.95.1426843913008;
        Fri, 20 Mar 2015 02:31:53 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from [192.168.0.104] (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ub1sm5517839wjc.43.2015.03.20.02.31.51
        (version=SSLv3 cipher=RC4-SHA bits=128/128);
        Fri, 20 Mar 2015 02:31:52 -0700 (PDT)
Message-ID: <1426843867.28252.4.camel@Inspiron>
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: iio: Place driver in
 sleep mode on error
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Date: Fri, 20 Mar 2015 11:31:07 +0200
In-Reply-To: <CAEnQRZCifnqNiVN3GYg3o28WbLE_DETq20GdMpFfhup-tmYv-A@mail.gmail.com>
References: <cover.1426790651.git.cristina.opriceana@gmail.com>
	 <ff210f9a653e92e158858d4beef1d9dc38106c63.1426790651.git.cristina.opriceana@gmail.com>
	 <CAEnQRZCifnqNiVN3GYg3o28WbLE_DETq20GdMpFfhup-tmYv-A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Vi, 2015-03-20 at 11:13 +0200, Daniel Baluta wrote:
> On Thu, Mar 19, 2015 at 9:19 PM, Cristina Opriceana
> <cristina.opriceana@gmail.com> wrote:
> > Added sleep_mode label, on which the device enters sleep mode if
> > encounters an error after initialization. This helps saving energy
> > consumption.
> 
> Commit message shouldn't tell "how" it does something, this should
> be obvious from the code. We should insist more on "why" we need
> this change.
> 
> So, the fact that you added "sleep_mode" label shouldn't be present
> in commit message.
> 
> Better say:
> 
> Put device in sleep mode if we encounter an error after initialization
> to avoid wasting power.
> 
> >
> > Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> > ---
> >  drivers/staging/iio/magnetometer/hmc5843_core.c | 13 +++++++------
> >  1 file changed, 7 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
> > index 90cc18b..59afede 100644
> > --- a/drivers/staging/iio/magnetometer/hmc5843_core.c
> > +++ b/drivers/staging/iio/magnetometer/hmc5843_core.c
> > @@ -606,16 +606,17 @@ int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
> >         ret = iio_triggered_buffer_setup(indio_dev, NULL,
> >                 hmc5843_trigger_handler, NULL);
> >         if (ret < 0)
> > -               return ret;
> > +               goto sleep_mode;
> >
> >         ret = iio_device_register(indio_dev);
> > -       if (ret < 0)
> > -               goto buffer_cleanup;
> > -
> > +       if (ret < 0) {
> > +               iio_triggered_buffer_cleanup(indio_dev);
> > +               goto sleep_mode;
> > +       }
> 
> Why this change here? The initial goto buffer_cleanup will work just fine.

I wanted to avoid duplicating code, but yes, apart from that, the
initial goto would work just fine.

> 
> >         return 0;
> >
> > -buffer_cleanup:
> > -       iio_triggered_buffer_cleanup(indio_dev);
> > +sleep_mode:
> > +       hmc5843_set_mode(iio_priv(indio_dev), HMC5843_MODE_SLEEP);
> >         return ret;
> >  }
> >  EXPORT_SYMBOL(hmc5843_common_probe);
> > --
> 
> Nice patch. A good idea would be to also add module authors/reviewers for this.
> 
> Thanks,
> Daniel.



