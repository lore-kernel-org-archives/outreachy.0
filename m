X-GM-THRID: 6138556841984
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,db883bf8dd7e9dae
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.9.65 with SMTP id x1mr4639627lba.16.1425391959242;
        Tue, 03 Mar 2015 06:12:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.178.229 with SMTP id db5ls50150lac.49.gmail; Tue, 03 Mar
 2015 06:12:38 -0800 (PST)
X-Received: by 10.112.147.35 with SMTP id th3mr4322095lbb.15.1425391958877;
        Tue, 03 Mar 2015 06:12:38 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id by11si928186wib.1.2015.03.03.06.12.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 06:12:38 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x231.google.com with SMTP id w55so40064330wes.4
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 06:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=UObi9gxwYuE9oMCyJDSHKDghg/H5tmIIhGDXOZGQB7U=;
        b=FlaTNLSqjRPgpiVZ/2Iew8VjybGNz0NLnQ93vjsEssd6VftBV3mCaBF9gb9AV/g83W
         eGtqKC3VTNdVr0OkVQTP8q64YdfGJdh32f5D3+lVvDnZQOtHdpY5xKlnf9hXRh8JLJ7t
         u46BmoYyFNqmL0h0wrGjHq5a6W2ar5ymp20sJI7xMtihMS9WWuE/X6gZCyY2D6bj7Kl4
         SIAblXT/1u6lkRfbtMlAXm7/BiQg6bFvR8P5Ho3zjKccLdzkT92Gt9tF6Ikdq36ToI+U
         UppD9HFxjC8qyx8yEM4Axt0DkbOX4znkMSxJORK8MOUiVWYAr7Pnna3kG7rSd40cWcw7
         fyVw==
X-Received: by 10.194.93.134 with SMTP id cu6mr68298311wjb.79.1425391958765;
        Tue, 03 Mar 2015 06:12:38 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.99])
        by mx.google.com with ESMTPSA id ul1sm1527596wjc.0.2015.03.03.06.12.37
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 06:12:38 -0800 (PST)
Date: Tue, 3 Mar 2015 16:12:34 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] staging: iio: meter: add check on
 return variables
Message-ID: <20150303141234.GA26895@waves>
References: <20150303133629.GA25966@waves>
 <CAEnQRZC6HspQ65-_dD57O42F-3Jg5nojtpwi++9wKbN9t0cLXw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEnQRZC6HspQ65-_dD57O42F-3Jg5nojtpwi++9wKbN9t0cLXw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 03, 2015 at 03:43:48PM +0200, Daniel Baluta wrote:
> On Tue, Mar 3, 2015 at 3:36 PM, Aya Mahfouz
> <mahfouz.saif.elyazal@gmail.com> wrote:
> > Adds checks on variables that are used to return values. If
> > the value is less than zero, this indicates that an error
> > occurred and hence a message is printed through dev_err.
> > Checks are made on negative values only since spi_* functions
> > return negative error codes.
> >
> > The functions were found using the following script but the
> > aforementioned modification was what was carried out in the end:
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
> 
> Commit message looks good to me.
> 
> > ---
> > v1: added checks on last calls only.
> > v2: added checks on all calls that return values along with labels.
> > v3: added changelog that was missed in v2.
> > v4: adjusted the patch to state how the problem was discovered, simplify
> > the if conditions and avoid redundant error messages.
> >
> >  drivers/staging/iio/meter/ade7758_core.c | 22 ++++++++--------------
> >  1 file changed, 8 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
> > index 70e96b2..f696188 100644
> > --- a/drivers/staging/iio/meter/ade7758_core.c
> > +++ b/drivers/staging/iio/meter/ade7758_core.c
> > @@ -303,14 +303,11 @@ static int ade7758_reset(struct device *dev)
> >         int ret;
> >         u8 val;
> >
> > -       ade7758_spi_read_reg_8(dev,
> > -                       ADE7758_OPMODE,
> > -                       &val);
> > +       ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
> > +       if (ret < 0)
> > +               return ret;
> 
> I think we should keep the warning messages. Here we could say
> something like this
> dev_err( ...  "Failed to read opmode reg\n");
> 
> >         val |= 1 << 6; /* Software Chip Reset */
> > -       ret = ade7758_spi_write_reg_8(dev,
> > -                       ADE7758_OPMODE,
> > -                       val);
> > -
> > +       ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
> Then also:
> 
> if (ret)
>        dev_err( ... "FAiled to write opmode reg\n");
>
ok, will do. Thanks Daniel!
> >         return ret;
> >  }
> >
> > @@ -444,14 +441,11 @@ static int ade7758_stop_device(struct device *dev)
> >         int ret;
> >         u8 val;
> >
> > -       ade7758_spi_read_reg_8(dev,
> > -                       ADE7758_OPMODE,
> > -                       &val);
> > +       ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
> > +       if (ret < 0)
> > +               return ret;
> >         val |= 7 << 3;  /* ADE7758 powered down */
> > -       ret = ade7758_spi_write_reg_8(dev,
> > -                       ADE7758_OPMODE,
> > -                       val);
> > -
> > +       ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
> >         return ret;
> 
> The same here.

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

