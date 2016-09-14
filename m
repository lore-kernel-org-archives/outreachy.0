X-GM-THRID: 6330241382632914944
X-Received: by 10.157.13.47 with SMTP id 44mr2072129oti.27.1473877698404;
        Wed, 14 Sep 2016 11:28:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.41 with SMTP id g38ls1815093ote.34.gmail; Wed, 14 Sep
 2016 11:28:17 -0700 (PDT)
X-Received: by 10.237.35.137 with SMTP id j9mr3078805qtc.2.1473877697896;
        Wed, 14 Sep 2016 11:28:17 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 142si1483946pfx.2.2016.09.14.11.28.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 11:28:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g202so1118534pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 11:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RZT9yT26P2vALANrGpIHhMmiWYELQr0BFtFFFHJJ6Ss=;
        b=BqG34CO7jiCXCw9cxP9Uw+aMiXks9C7RI+l/cNybYLwnGlpoPCjeP8yYcJUzQ+C81a
         nWbvnYP/0JALaxUynr+IV2aZGJvtyLgtZ3OHCf6S3NzC0zzzS1FcMOB7fRZ4bIuki+Sj
         QLv3VlyZ6kG3moWzj8EB5G3nxn4lZU9jjvdL0A8qMd90MBwtMk10mpFUtEhLXAym4qe0
         O6Ks2QQOKOzVfEYehamDdbIjEAMRObIEG6Bpo4zXxxp/WtTnu1yeUAImMGUWcbWzVL+c
         rBczZRoWB1EMq1UGoiAgiskmFPL1w7yACet6QfLwnuhb7L5hp78BKsN9g5Wy+06I7tFc
         i+bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RZT9yT26P2vALANrGpIHhMmiWYELQr0BFtFFFHJJ6Ss=;
        b=UK0RF5eKyZRmfVlc7DQF40MDxfGkTHZRV6teZkML6RW/oTzIotXduiH+5NtvRF4ZNR
         gge87F7qGbGv9JfFwiASFfZWlLyZIuhYqHWq9mRlgqo5EtfwiHj6npIuDFuO5mHnXvmk
         b0DwCu8E2f4gMhB6ChwutXBRr/YnD5MIgwLSiZoCQ6UwaTqwQHKLjVFAVZi+dSjmELB6
         062G1IDr+7jeeJN/nKFe/P02cybY4lpGqtxpAr/l6yTIAJ1NSdpK2HoKdeHUuBGDorWC
         7WDbFZC06AGSLfSBIqebkS3ZYJVArL5N/mkX9x1eEh8pA1jMMTHJQSXah5BxKSehwAaj
         jyCQ==
X-Gm-Message-State: AE9vXwPJoe2wJ/c0Faonr6WKE/7vhvHFYdOBRwUKGzsYkOoX+Vi+knOe3yaGRBhq7YhRxQ==
X-Received: by 10.98.27.11 with SMTP id b11mr7089376pfb.111.1473877697718;
        Wed, 14 Sep 2016 11:28:17 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d5sm39761777pfc.4.2016.09.14.11.28.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 11:28:17 -0700 (PDT)
Date: Wed, 14 Sep 2016 23:58:08 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: Hartmut Knaack <knaack.h@gmx.de>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: iio: accel: Fix indentation
Message-ID: <20160914182808.GB30982@toblerone>
References: <20160914172924.GA27415@toblerone>
 <57D98C47.3020203@gmx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <57D98C47.3020203@gmx.de>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Sep 14, 2016 at 07:43:35PM +0200, Hartmut Knaack wrote:
> Hi,
> additional to Lars-Peters comment, you would normally CC the linux-iio
> mailing list.
> Thanks,
> 
> Hartmut
> 
> Rehas Sachdeva schrieb am 14.09.2016 um 19:29:
> > This patch fixes the checkpatch.pl warning:
> > WARNING: Statements should start on a tabstop
> > 
> > Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> > ---
> >  drivers/staging/iio/accel/sca3000_core.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
> > index b5625f5..61f3241 100644
> > --- a/drivers/staging/iio/accel/sca3000_core.c
> > +++ b/drivers/staging/iio/accel/sca3000_core.c
> > @@ -412,7 +412,7 @@ static const struct iio_event_spec sca3000_event = {
> >  		},						\
> >  		.event_spec = &sca3000_event,			\
> >  		.num_event_specs = 1,				\
> > -	 }
> > +	}
> >  
> >  static const struct iio_chan_spec sca3000_channels[] = {
> >  	SCA3000_CHAN(0, IIO_MOD_X),
> > 
>

Hi,
Point Noted. Thanks a lot.

Rehas

