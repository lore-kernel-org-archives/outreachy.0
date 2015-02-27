X-GM-THRID: 4475579269120
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9816ab370498a2c8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.37.200 with SMTP id a8mr2293741lak.5.1425063965900;
        Fri, 27 Feb 2015 11:06:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.27.198 with SMTP id ji6ls180484wid.25.gmail; Fri, 27 Feb
 2015 11:06:05 -0800 (PST)
X-Received: by 10.180.83.168 with SMTP id r8mr706060wiy.6.1425063965513;
        Fri, 27 Feb 2015 11:06:05 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id i7si177875wif.0.2015.02.27.11.06.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 11:06:05 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id h11so2410217wiw.3
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 11:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=DymaIxMeTsN31Ok/Y++5XPh4nloKd7Yyn1WD2wuHzN0=;
        b=wXeHvEiSGMBWzeWPPBVVgQtuXXMoppgjp9GNpwfkFLdwSM0SetBWihhgHzN3sykygb
         Ax5AVMzBWXtFaC5huDf8cOC/p3s/1V++OJC90WTpPDhogs/UvzP8WM8fjwJxSf8PnEZJ
         JQo6kXuzQgSdcwr3hnO3PmzDXokJRUMOcXmC3o3lrrqySBO4uIh2QN8U+Kfq7Mg8zw1b
         ZH6kNk2ubu1/KIRI6vhblC2aGD+v6wQgu5tV4/GUtoIL3eM3Va49ejtT25F4MZcMmzVq
         OsY+WiD1WeCAUjLgt72i+fVsqODiiQhpH75KCdfgp44nH5HTebJMXKMwIXRf2xf1yMYH
         9S0g==
X-Received: by 10.180.74.206 with SMTP id w14mr9377297wiv.71.1425063965294;
        Fri, 27 Feb 2015 11:06:05 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id t9sm4015439wia.15.2015.02.27.11.06.03
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 11:06:04 -0800 (PST)
Date: Fri, 27 Feb 2015 21:06:00 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 21/24] staging: iio: meter: remove
 unused variables
Message-ID: <20150227190600.GB31834@waves>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
 <a3c512e1b92259c27416e0d8d0fd4a4db59fc0a9.1425035012.git.mahfouz.saif.elyazal@gmail.com>
 <CAEnQRZBuVvmt5-B6tVxAwL--xHnG7P91WohdByz4=Yx9KiZPJw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEnQRZBuVvmt5-B6tVxAwL--xHnG7P91WohdByz4=Yx9KiZPJw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 06:00:53PM +0200, Daniel Baluta wrote:
> On Fri, Feb 27, 2015 at 3:09 PM, Aya Mahfouz
> <mahfouz.saif.elyazal@gmail.com> wrote:
> > This patch removes variables that were simply used to store the
> > return value of a function call before returning it.
> >
> > The issue was detected and resolved using the following
> > coccinelle script:
> >
> > @@
> > identifier len,f;
> > @@
> >
> > -int len;
> >  ... when != len
> >      when strict
> > -len =
> > +return
> >         f(...);
> > -return len;
> >
> > Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> > ---
> >  drivers/staging/iio/meter/ade7758_core.c | 10 ++--------
> >  1 file changed, 2 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
> > index 70e96b2..3d2fae4 100644
> > --- a/drivers/staging/iio/meter/ade7758_core.c
> > +++ b/drivers/staging/iio/meter/ade7758_core.c
> > @@ -300,18 +300,15 @@ error_ret:
> >
> >  static int ade7758_reset(struct device *dev)
> >  {
> > -       int ret;
> >         u8 val;
> >
> >         ade7758_spi_read_reg_8(dev,
> >                         ADE7758_OPMODE,
> >                         &val);
> >         val |= 1 << 6; /* Software Chip Reset */
> > -       ret = ade7758_spi_write_reg_8(dev,
> > +       return ade7758_spi_write_reg_8(dev,
> >                         ADE7758_OPMODE,
> >                         val);
> > -
> > -       return ret;
> >  }
> >
> >  static IIO_DEV_ATTR_VPEAK(S_IWUSR | S_IRUGO,
> > @@ -441,18 +438,15 @@ error_ret:
> >  /* Power down the device */
> >  static int ade7758_stop_device(struct device *dev)
> >  {
> > -       int ret;
> >         u8 val;
> >
> >         ade7758_spi_read_reg_8(dev,
> >                         ADE7758_OPMODE,
> >                         &val);
> >         val |= 7 << 3;  /* ADE7758 powered down */
> > -       ret = ade7758_spi_write_reg_8(dev,
> > +       return ade7758_spi_write_reg_8(dev,
> >                         ADE7758_OPMODE,
> >                         val);
> > -
> > -       return ret;
> >  }
> >
> 
> I would advise against this change. It would be better to check
> for ret value and add an error message.
>
Sure thing. I will read the documentation of this code and send
a second patch by tomorrow. 

Thanks for your feedback Daniel.

> Daniel.

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

