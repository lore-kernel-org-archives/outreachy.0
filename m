X-GM-THRID: 6335244935171670016
X-Received: by 10.46.5.214 with SMTP id 205mr94245ljf.6.1475159403482;
        Thu, 29 Sep 2016 07:30:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.9 with SMTP id 9ls294907ljb.5.gmail; Thu, 29 Sep 2016
 07:30:02 -0700 (PDT)
X-Received: by 10.25.234.9 with SMTP id i9mr136984lfh.5.1475159402537;
        Thu, 29 Sep 2016 07:30:02 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id a126si984259wmd.1.2016.09.29.07.30.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 07:30:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id b4so11054211wmb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 07:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6RYs6N0et5L5A5vSHE+fdXvbfgrmpmw5nIOYTrG3uzo=;
        b=0NaVG53O1QlvP2a6XAkzSOqcVI0s5cuzeBdzyG+Xx3s1oQrCircEjp3Q25LdQ7zmSs
         rDkGRLINaKi4LOx1mvb9ahbKFOrZ86P1VEOqufeZ0neI8ZRIW+0cpzVpWqKxgH9nFBrg
         9jsJ9w9E4a1H+9Db+efAyhtinVLCR6wjzHaIFvTlKds/bz1Jo4R6zxQwDRO77Bm0H15I
         YJ75fli/PEBmI+64OiJOYebhLkebDqdFn0AqFxkTXEKxKZW49fMPu17jkLjk3ShaCHtp
         p1mibuHbt5447POP1joul9VVZ8b2vjmXluYHk2KM6SwSWOpKgQ5b8xOITRvDfftqRvyl
         h+zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6RYs6N0et5L5A5vSHE+fdXvbfgrmpmw5nIOYTrG3uzo=;
        b=Bc3AOrQqIvCYxKMAVEJvCuUIX2vGpfFZyftCLGFeoin5nSLgh23KDv5h5IUEmUNtUa
         yHEytfTr5RrWD+QvY3ggfxtL19YcE0m1MYV1ZO1omFfXH9U6xTJ7T12g1zkXSf5A4GxZ
         yOgZxPoFvwXlAnPItQLikbGw3Gx4s0t2CRWdbGRX9FvexnYdr/00R7m8L3gTSs/0n+5o
         8km+9pM4EiO/SUku7CH6eehDjjuc/ADsAMEVb6XCqT09zLpNZbQNCDnjGYP8i8Eu7bfS
         p4qfuGpbviJwkz8pUuNEqkHzo0AGEy8qx5q6T4RDw89Q7eA3QZ67QUUefSlj6r5o611M
         t0OQ==
X-Gm-Message-State: AA6/9RmjHsd5C5bWsJDF3zRkHh78sQSQZLf7dAHKuEiSfe5c13AjtnTjTvBSL88SOIbkIQ==
X-Received: by 10.194.116.225 with SMTP id jz1mr1843350wjb.44.1475159402093;
        Thu, 29 Sep 2016 07:30:02 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id l206sm28571950wmf.15.2016.09.29.07.30.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Sep 2016 07:30:01 -0700 (PDT)
Date: Thu, 29 Sep 2016 17:30:00 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging : media: bcm2048: radio-bcm2048.c: Use
 unsigned int rather than unisigned
Message-ID: <20160929143000.GA3343@domino-MS-16Y1>
References: <20160929115919.GA21039@domino-MS-16Y1>
 <alpine.DEB.2.20.1609291426300.1912@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1609291426300.1912@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Sep 29, 2016 at 02:26:51PM +0200, Julia Lawall wrote:
> 
> 
> On Thu, 29 Sep 2016, Muraru Mihaela wrote:
> 
> > Replace the unsigned with the unsigned int,to decrease the programming
> > errors that can give the usage of simply unsigned.
> >
> > Warning found by checkpatch.pl :
> >
> > WARNING: Prefer 'unsigned int' to bare use of 'unsigned'.
> >
> > Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
> >
> > ---
> >
> > Changes in v2:
> > 	- specify the type of the parameter type from function
> > 	bcm2048_prop_write as unsigned int.
> > 	This reduce the compiling problem and reduce to silent the checker.
> > ---
> >  drivers/staging/media/bcm2048/radio-bcm2048.c | 46 +++++++++++++--------------
> >  1 file changed, 23 insertions(+), 23 deletions(-)
> >
> > diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
> > index ea15cc6..4f73bda 100644
> > --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> > +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
> > @@ -1942,7 +1942,7 @@ static ssize_t bcm2048_##prop##_write(struct device *dev,		\
> >  					size_t count)			\
> >  {									\
> >  	struct bcm2048_device *bdev = dev_get_drvdata(dev);		\
> > -	type value;							\
> > +	unsigned int value;						\
> >  	int err;							\
> >  									\
> >  	if (!bdev)							\
> > @@ -2022,27 +2022,27 @@ static ssize_t bcm2048_##prop##_read(struct device *dev,		\
> >  	return count;							\
> >  }
> >
> > -DEFINE_SYSFS_PROPERTY(power_state, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(mute, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(audio_route, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(dac_output, unsigned, int, "%u", 0)
> > -
> > -DEFINE_SYSFS_PROPERTY(fm_hi_lo_injection, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(fm_frequency, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(fm_af_frequency, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(fm_deemphasis, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(fm_rds_mask, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(fm_best_tune_mode, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(fm_search_rssi_threshold, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(fm_search_mode_direction, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(fm_search_tune_mode, unsigned, int, "%u", value > 3)
> > -
> > -DEFINE_SYSFS_PROPERTY(rds, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(rds_b_block_mask, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(rds_b_block_match, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(rds_pi_mask, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(rds_pi_match, unsigned, int, "%u", 0)
> > -DEFINE_SYSFS_PROPERTY(rds_wline, unsigned, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(power_state, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(mute, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(audio_route, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(dac_output, unsigned int, int, "%u", 0)
> > +
> > +DEFINE_SYSFS_PROPERTY(fm_hi_lo_injection, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(fm_frequency, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(fm_af_frequency, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(fm_deemphasis, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(fm_rds_mask, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(fm_best_tune_mode, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(fm_search_rssi_threshold, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(fm_search_mode_direction, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(fm_search_tune_mode, unsigned int, int, "%u", value > 3)
> > +
> > +DEFINE_SYSFS_PROPERTY(rds, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(rds_b_block_mask, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(rds_b_block_match, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(rds_pi_mask, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(rds_pi_match, unsigned int, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(rds_wline, unsigned int, int, "%u", 0)
> 
> Are you sure that these are correct?
> 
> julia

I don't have compilation errors or checkpatch.pl warnings.
Can you tell me other metods o check it ?

thanks,

mihaela
> >  property_read(rds_pi, unsigned int, "%x")
> >  property_str_read(rds_rt, (BCM2048_MAX_RDS_RT + 1))
> >  property_str_read(rds_ps, (BCM2048_MAX_RDS_PS + 1))
> > @@ -2054,7 +2054,7 @@ property_read(region_bottom_frequency, unsigned int, "%u")
> >  property_read(region_top_frequency, unsigned int, "%u")
> >  property_signed_read(fm_carrier_error, int, "%d")
> >  property_signed_read(fm_rssi, int, "%d")
> > -DEFINE_SYSFS_PROPERTY(region, unsigned, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(region, unsigned int, int, "%u", 0)
> >
> >  static struct device_attribute attrs[] = {
> >  	__ATTR(power_state, S_IRUGO | S_IWUSR, bcm2048_power_state_read,
> > --
> > 1.9.1
> >
> >

