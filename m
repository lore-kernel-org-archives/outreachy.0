X-GM-THRID: 6399553954141700096
X-Received: by 10.25.203.151 with SMTP id b145mr5522451lfg.17.1490217109636;
        Wed, 22 Mar 2017 14:11:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.203.201 with SMTP id b192ls287398lfg.28.gmail; Wed, 22 Mar
 2017 14:11:48 -0700 (PDT)
X-Received: by 10.25.32.142 with SMTP id g136mr4734893lfg.12.1490217108477;
        Wed, 22 Mar 2017 14:11:48 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id b186si2082305wme.1.2017.03.22.14.11.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 14:11:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u108so28593073wrb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Mar 2017 14:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=q07Zq/0Pl/8D3dZTaV4uk87KCKCyNeYjNqLcoldqxH0=;
        b=j4iXzJT3Z7dfn43U9OYNK6XAz5PlKhWzgcZMyIL4/3yqL/cXjzxJZ9lQvUaEAYoQ8i
         Ykwvq29TfBGd/cqbj9eApC/4+AP6QABWPOQuurLqboykIW4Azn/6QE7FyJEswoO93Eki
         FF5kSReWna23PscPG4GpviHnLc1P3Pc2VGJfgmBTx3B5auxY49/pCkys+UPuuSx6nHNo
         0XXk2PnIaBOmxD7A9+j1ULJzKDn0Cnw2DByqaK2vrymv+Ie2zEBlIqN7A5zQqfNkYPXI
         pKiqf6vkbKEGk6gcvSyDXr+HWV6KXNDXRo+FnY48TIx7tinxJK579HKi3WaFc/k6IH7+
         sCUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=q07Zq/0Pl/8D3dZTaV4uk87KCKCyNeYjNqLcoldqxH0=;
        b=l7Ixm/CKfI+4gkQQrt/zgbvNCOoobp/No0k7QaTooeO9dVbIPKgTCuZ6m2yjtQ1Cm4
         9Ch1LnhSUg4NpTXcqkNfEH/DYZRAD3SE1Om8QZx8FYJ+NG8jdzj0/RaI8GLvCVm9FeXv
         diFmM1XMUO6CtFD+66gpqqtEs1SHONdgWVNRu4yOa1arML6cymlrseQt42C1SBwvsXVG
         aG7p1gWIrmPmeX+7Mme4MINqLuBvYI8FFqCkzIHFDWPyEh5T0L0vNYcjJ5mjl651bIII
         z/FH534n9sQ5J6/wTljrXwTO9aQ8XAGvr//vX+2L53qxapJzrav757S6dbxn9wMbT2yQ
         T74A==
X-Gm-Message-State: AFeK/H2KtSF9HDNa2OAMOTv9gtoVKc+9Wy0EZHd4JACLmskr+qTMJ5NjZEGiC/AvD3HIOA==
X-Received: by 10.223.172.77 with SMTP id v71mr43146467wrc.131.1490217108236;
        Wed, 22 Mar 2017 14:11:48 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id l138sm1767758wmd.7.2017.03.22.14.11.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Mar 2017 14:11:47 -0700 (PDT)
Date: Wed, 22 Mar 2017 23:11:46 +0200
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/3] staging: iio: cdc: ad7746: Fix alignment with
 paranthesis
Message-ID: <20170322211145.GA4115@nati-X550JK>
References: <cover.1490011900.git.narcisaanamaria12@gmail.com>
 <28e3f73ab1ac503fb32a291b6be7741d23a63444.1490011900.git.narcisaanamaria12@gmail.com>
 <74943e7b-c68b-fb72-84a1-ccce743eb523@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <74943e7b-c68b-fb72-84a1-ccce743eb523@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Mar 22, 2017 at 08:38:36PM +0000, Jonathan Cameron wrote:
> On 20/03/17 12:18, Narcisa Ana Maria Vasile wrote:
> > This was reported by checkpatch.pl:
> > CHECK: Alignment should match open parenthesis
> > 
> > Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> Applied to the togreg branch of iio.git and pushed out as testing.
> 
> Only real comment on this series is that it wasn't really a series.
> The linking element was check patch warnings.  Not really enough.
> A series should exist for one of two reasons:
> 1) Patches to the same driver that need to be applied in order to avoid fuzz
> or for more fundamental reasons.
> 2) Grouping patches because they are the same change to lots of drivers.
> This is useful because it aids review - comments also apply to at least
> some subset of the patches.
> 
> Doesn't matter that much, but these should really just have been 3 separate
> patches.  The first 2 might just fall under type 1 above I suppose, but
> not this third one!
> 
> Thanks,
> 
> Jonathan

  Ok, I'll keep this in mind. Indeed, I grouped them because they were
  all fixing checkpatch warnings. It's clear now that I
  shouldn't have made a patchset.
  Sorry for the mistake.

  Thank you,
  Narcisa
> > ---
> >  drivers/staging/iio/cdc/ad7746.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
> > index 81f8b9e..69845a2 100644
> > --- a/drivers/staging/iio/cdc/ad7746.c
> > +++ b/drivers/staging/iio/cdc/ad7746.c
> > @@ -546,7 +546,7 @@ static int ad7746_read_raw(struct iio_dev *indio_dev,
> >  
> >  		regval = chip->config | AD7746_CONF_MODE_SINGLE_CONV;
> >  		ret = i2c_smbus_write_byte_data(chip->client, AD7746_REG_CFG,
> > -				regval);
> > +						regval);
> >  		if (ret < 0)
> >  			goto out;
> >  
> > 
> 

