X-GM-THRID: 6138556841984
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,db883bf8dd7e9dae
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.182.201 with SMTP id eg9mr625767wic.3.1425422236129;
        Tue, 03 Mar 2015 14:37:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.19.234 with SMTP id i10ls100953lae.103.gmail; Tue, 03 Mar
 2015 14:37:15 -0800 (PST)
X-Received: by 10.112.214.234 with SMTP id od10mr168495lbc.3.1425422235772;
        Tue, 03 Mar 2015 14:37:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v5si487611wif.3.2015.03.03.14.37.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 14:37:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,684,1418079600"; 
   d="scan'208";a="102004942"
Received: from unknown (HELO [132.207.219.164]) ([132.207.219.164])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Mar 2015 23:37:14 +0100
Date: Tue, 3 Mar 2015 17:37:13 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: iio: meter: add check on
 return variables
In-Reply-To: <20150303131001.GC24979@waves>
Message-ID: <alpine.DEB.2.10.1503031736310.2677@hadrien>
References: <20150303112705.GA11879@waves> <alpine.DEB.2.10.1503030701320.2723@hadrien> <20150303131001.GC24979@waves>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 3 Mar 2015, Aya Mahfouz wrote:

> On Tue, Mar 03, 2015 at 07:01:47AM -0500, Julia Lawall wrote:
> > On Tue, 3 Mar 2015, Aya Mahfouz wrote:
> >
> > > Adds checks on variables that are used to return values. If
> > > the value is less than zero, this indicates that an error
> > > occured and hence a message is printed through dev_err. Labels
> > > have been added too, since the check is done more than once.
> >
> > How did you find the functions that have this property?
> >
> Do you mean that I should state that I found it using coccinelle?

No, I meant that there are millions offunctions used in this code, so what
motivated you to look at these ones.  But the explanation you put in a
later message is fine.

julia


> > julia
> >
> > > Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> > > ---
> > > v1: added checks on last calls only.
> > > v2: added checks on all calls that return values along with labels.
> > > v3: added changelog that was missed in v2.
> > >
> > >  drivers/staging/iio/meter/ade7758_core.c | 35 ++++++++++++++++++++------------
> > >  1 file changed, 22 insertions(+), 13 deletions(-)
> > >
> > > diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
> > > index 70e96b2..cab392f 100644
> > > --- a/drivers/staging/iio/meter/ade7758_core.c
> > > +++ b/drivers/staging/iio/meter/ade7758_core.c
> > > @@ -303,14 +303,18 @@ static int ade7758_reset(struct device *dev)
> > >  	int ret;
> > >  	u8 val;
> > >
> > > -	ade7758_spi_read_reg_8(dev,
> > > -			ADE7758_OPMODE,
> > > -			&val);
> > > +	ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
> > > +	if (ret < 0) {
> > > +		dev_err(dev, "failed to read from device");
> > > +		goto error_ret;
> > > +	}
> > >  	val |= 1 << 6; /* Software Chip Reset */
> > > -	ret = ade7758_spi_write_reg_8(dev,
> > > -			ADE7758_OPMODE,
> > > -			val);
> > > -
> > > +	ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
> > > +	if (ret < 0) {
> > > +		dev_err(dev, "failed to reset device");
> > > +		goto error_ret;
> > > +	}
> > > +error_ret:
> > >  	return ret;
> > >  }
> > >
> > > @@ -444,14 +448,19 @@ static int ade7758_stop_device(struct device *dev)
> > >  	int ret;
> > >  	u8 val;
> > >
> > > -	ade7758_spi_read_reg_8(dev,
> > > -			ADE7758_OPMODE,
> > > -			&val);
> > > +	ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
> > > +	if (ret < 0) {
> > > +		dev_err(dev, "failed to read from device");
> > > +		goto error_ret;
> > > +	}
> > >  	val |= 7 << 3;  /* ADE7758 powered down */
> > > -	ret = ade7758_spi_write_reg_8(dev,
> > > -			ADE7758_OPMODE,
> > > -			val);
> > > +	ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
> > > +	if (ret < 0) {
> > > +		dev_err(dev, "failed to stop device");
> > > +		goto error_ret;
> > > +	}
> > >
> > > +error_ret:
> > >  	return ret;
> > >  }
> > >
> > > --
> > > 1.9.3
> > >
> > >
> > > --
> > > Kind Regards,
> > > Aya Saif El-yazal Mahfouz
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150303112705.GA11879%40waves.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> Kind Regards,
> Aya Saif El-yazal Mahfouz
>

