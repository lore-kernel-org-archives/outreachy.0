X-GM-THRID: 6403272126352064512
X-Received: by 10.46.1.12 with SMTP id 12mr846820ljb.30.1490881135387;
        Thu, 30 Mar 2017 06:38:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.129.2 with SMTP id c2ls2829386wmd.26.canary-gmail; Thu, 30
 Mar 2017 06:38:54 -0700 (PDT)
X-Received: by 10.28.14.73 with SMTP id 70mr212545wmo.21.1490881134424;
        Thu, 30 Mar 2017 06:38:54 -0700 (PDT)
Return-Path: <pmeerw@pmeerw.net>
Received: from vps.pmeerw.net (ns.pmeerw.net. [84.19.176.117])
        by gmr-mx.google.com with ESMTPS id x188si199107wmx.0.2017.03.30.06.38.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 30 Mar 2017 06:38:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of pmeerw@pmeerw.net designates 84.19.176.117 as permitted sender) client-ip=84.19.176.117;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pmeerw.net;
       spf=pass (google.com: domain of pmeerw@pmeerw.net designates 84.19.176.117 as permitted sender) smtp.mailfrom=pmeerw@pmeerw.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=pmeerw.net
Received: by vps.pmeerw.net (Postfix, from userid 1000)
	id BBDDCE01AF; Thu, 30 Mar 2017 15:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=pmeerw.net; s=mail;
	t=1490881133; bh=vVIxZmB/FRqOcwIXYwKspbXz2dx9rjX+s4/9gzT9jZs=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=QxnGyEtuuDs2b5s1hwuo2NV/BD9b5oa26swavf8s55+6ZsBvYZIqTClcu3UQl2G+V
	 CZHzL8yT4VLN1CiDN99k/+YhufMoZldYZKxsEZQbT4c16mpJ611N+6mfqdtzIWcFT9
	 koxix9y0fE0O6bN4J+c78inQNrBjU4xVYNX6LGC0=
Received: from localhost (localhost [127.0.0.1])
	by vps.pmeerw.net (Postfix) with ESMTP id A5949E262A;
	Thu, 30 Mar 2017 15:38:53 +0200 (CEST)
Date: Thu, 30 Mar 2017 15:38:53 +0200 (CEST)
From: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
To: jacopo <jacopo@jmondi.org>
cc: Arushi Singhal <arushisinghal19971997@gmail.com>, 
    outreachy-kernel@googlegroups.com, Jonathan Cameron <jic23@kernel.org>, 
    Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iio: adc: replace comma with a semicolon
In-Reply-To: <20170330133046.GA7900@w540>
Message-ID: <alpine.DEB.2.20.1703301534380.24907@vps.pmeerw.net>
References: <20170330124603.GA29301@arushi-HP-Pavilion-Notebook> <20170330133046.GA7900@w540>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII


> On Thu, Mar 30, 2017 at 06:16:03PM +0530, Arushi Singhal wrote:
> > Replace a comma between expression statements by a semicolon. This
> > changes the semantics of the code, but given the current indentation
> > appears to be what is intended.

> You can simply say that this fixes what appears to be a bug to me.
> I wonder how this does even compile..

it's valid C and I think it does the correct thing (i.e. assign those 
variables); the style is weird obviously

> [1] https://marc.info/?l=linux-iio&m=148475728729617&w=2
> 
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> >  drivers/iio/adc/max11100.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/iio/adc/max11100.c b/drivers/iio/adc/max11100.c
> > index 23c060e1b663..1180bcc22ff1 100644
> > --- a/drivers/iio/adc/max11100.c
> > +++ b/drivers/iio/adc/max11100.c
> > @@ -124,8 +124,8 @@ static int max11100_probe(struct spi_device *spi)
> >  	indio_dev->name = "max11100";
> >  	indio_dev->info = &max11100_info;
> >  	indio_dev->modes = INDIO_DIRECT_MODE;
> > -	indio_dev->channels = max11100_channels,
> > -	indio_dev->num_channels = ARRAY_SIZE(max11100_channels),
> > +	indio_dev->channels = max11100_channels;
> > +	indio_dev->num_channels = ARRAY_SIZE(max11100_channels);
> >  
> >  	state->vref_reg = devm_regulator_get(&spi->dev, "vref");
> >  	if (IS_ERR(state->vref_reg))
> > -- 
> > 2.11.0
> > 
> 

-- 

Peter Meerwald-Stadler
Mobile: +43 664 24 44 418

