X-GM-THRID: 6138556841984
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,db883bf8dd7e9dae
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.138.202 with SMTP id qs10mr4466751lbb.24.1425388208495;
        Tue, 03 Mar 2015 05:10:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.10.5 with SMTP id e5ls33175lab.37.gmail; Tue, 03 Mar 2015
 05:10:08 -0800 (PST)
X-Received: by 10.112.224.12 with SMTP id qy12mr3464845lbc.10.1425388207995;
        Tue, 03 Mar 2015 05:10:07 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id ta1si886160wic.1.2015.03.03.05.10.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 05:10:07 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id h11so22521974wiw.1
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 05:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=+aomnNlSCMbhy1VGXffUyf09HmI8cnfYRVkuhEwVk30=;
        b=uyJVjLbGIRGluH+tFBeBEe5M7Wa+ysQJ+C68arPDt809I+JGxsC+wmHk2xgXMrUBpI
         MohOQnuLigYH/DzmS5WG8y9FNuFeMpajROatzm7XVVa49hu1YVhYDhuIU+SAPn/pOzsp
         a6G2jn1kDpPCKZLmgrnTiKSZ1CjWL6lKWUmmvbCq1haGcP5eVZsgqeOpekLmCYOGgOSg
         bivQPY57F8pFuWcA0yIsENLXhCWpH+jFTgxYVJLTFuViHQW+/334faOHMtzILDr5qbKW
         khTxez6144wG9e5dFRoZAug8gOAhtzbWDHrnI+3bPeOMZ82cUcquA6Sqhrg6kE1cTrd9
         Hlxw==
X-Received: by 10.194.235.71 with SMTP id uk7mr70095665wjc.13.1425388207865;
        Tue, 03 Mar 2015 05:10:07 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.99])
        by mx.google.com with ESMTPSA id y3sm1278046wju.14.2015.03.03.05.10.05
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 05:10:07 -0800 (PST)
Date: Tue, 3 Mar 2015 15:10:02 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: iio: meter: add check on
 return variables
Message-ID: <20150303131001.GC24979@waves>
References: <20150303112705.GA11879@waves>
 <alpine.DEB.2.10.1503030701320.2723@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1503030701320.2723@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 03, 2015 at 07:01:47AM -0500, Julia Lawall wrote:
> On Tue, 3 Mar 2015, Aya Mahfouz wrote:
> 
> > Adds checks on variables that are used to return values. If
> > the value is less than zero, this indicates that an error
> > occured and hence a message is printed through dev_err. Labels
> > have been added too, since the check is done more than once.
> 
> How did you find the functions that have this property?
>
Do you mean that I should state that I found it using coccinelle?
> julia
> 
> > Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> > ---
> > v1: added checks on last calls only.
> > v2: added checks on all calls that return values along with labels.
> > v3: added changelog that was missed in v2.
> >
> >  drivers/staging/iio/meter/ade7758_core.c | 35 ++++++++++++++++++++------------
> >  1 file changed, 22 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
> > index 70e96b2..cab392f 100644
> > --- a/drivers/staging/iio/meter/ade7758_core.c
> > +++ b/drivers/staging/iio/meter/ade7758_core.c
> > @@ -303,14 +303,18 @@ static int ade7758_reset(struct device *dev)
> >  	int ret;
> >  	u8 val;
> >
> > -	ade7758_spi_read_reg_8(dev,
> > -			ADE7758_OPMODE,
> > -			&val);
> > +	ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
> > +	if (ret < 0) {
> > +		dev_err(dev, "failed to read from device");
> > +		goto error_ret;
> > +	}
> >  	val |= 1 << 6; /* Software Chip Reset */
> > -	ret = ade7758_spi_write_reg_8(dev,
> > -			ADE7758_OPMODE,
> > -			val);
> > -
> > +	ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
> > +	if (ret < 0) {
> > +		dev_err(dev, "failed to reset device");
> > +		goto error_ret;
> > +	}
> > +error_ret:
> >  	return ret;
> >  }
> >
> > @@ -444,14 +448,19 @@ static int ade7758_stop_device(struct device *dev)
> >  	int ret;
> >  	u8 val;
> >
> > -	ade7758_spi_read_reg_8(dev,
> > -			ADE7758_OPMODE,
> > -			&val);
> > +	ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
> > +	if (ret < 0) {
> > +		dev_err(dev, "failed to read from device");
> > +		goto error_ret;
> > +	}
> >  	val |= 7 << 3;  /* ADE7758 powered down */
> > -	ret = ade7758_spi_write_reg_8(dev,
> > -			ADE7758_OPMODE,
> > -			val);
> > +	ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
> > +	if (ret < 0) {
> > +		dev_err(dev, "failed to stop device");
> > +		goto error_ret;
> > +	}
> >
> > +error_ret:
> >  	return ret;
> >  }
> >
> > --
> > 1.9.3
> >
> >
> > --
> > Kind Regards,
> > Aya Saif El-yazal Mahfouz
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150303112705.GA11879%40waves.
> > For more options, visit https://groups.google.com/d/optout.
> >

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

