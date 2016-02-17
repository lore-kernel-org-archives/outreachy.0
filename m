X-GM-THRID: 6252275562391273472
X-Received: by 10.66.141.102 with SMTP id rn6mr2590242pab.26.1455729747168;
        Wed, 17 Feb 2016 09:22:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.82.71 with SMTP id g7ls1517223igy.8.canary; Wed, 17 Feb
 2016 09:22:26 -0800 (PST)
X-Received: by 10.107.12.99 with SMTP id w96mr4030441ioi.5.1455729746628;
        Wed, 17 Feb 2016 09:22:26 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id u66si325641pfa.2.2016.02.17.09.22.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 09:22:26 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id q63so14776050pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 09:22:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=66HdVInHXFbODPZL4Mrimkpa9XxXS/t9NvdFz818y7o=;
        b=h7NP1j4NQdnWNS9XYw0WrKty2pBkZXEvkP2PaLV5pjhyJkFowqSgRLAPLl2ikolFLO
         HgZxHnN6doDFJ8nH6JyLV3PhAU8VpRq/aoWwq4+W3W7B3s+xGh6g3MJypwJ1yBEiqVjx
         m4heJJU0g1eG5KgPI+zzqEtj5RzEOCK+Lz6EVnW44T9tGaDkxA/ZGH5Lt5oOXe822xYm
         hgvjv/zAxu3u1xTIqG0sQt9XlR9V7n+RAW4Ut4kkASHT34BUHP0EdSbS3CkGpB+mKhkE
         94GroyXLPB7lyaDkaiAZgG1yyUe6IsM8FY0wSAJwW1FEW6HOZm0c5B4hi4ceWD5cWQel
         yiLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=66HdVInHXFbODPZL4Mrimkpa9XxXS/t9NvdFz818y7o=;
        b=gL50PEqFQgmq4x+m50ZO4chCbmYdnbQXLFnDq8wqofc/Ws35FBr9bRxEapMsNk/4V5
         x21+rACPxyjiNTBml3u7tEun4yt5NnWrEANbsvfjzkWH4jocWsa9FmUXCBwvD+s0KeHY
         5ycBkInVXxJFDJ0q6lYmHiO69cZ37QaRX3le44oNS6vYXyuOBdr6/cSZVvpaTim8ezgz
         NmBEAJbo0u5zUNpydsTkCGW3EyU56iE9dlZ1XFi/BG8vIZ1kAeVkVdMZIUxqI7UPzaQx
         rdQQBycmE00rBqg/Qnz7z+U2KL42W2YKxefGX9YDJO9GHteTw2IMJEWtno/pz3w89+8x
         wx/Q==
X-Gm-Message-State: AG10YOTWmKV+BcnBT/ZIao2cz0gmYvEcIIiI0XKhRinrIjBYXIT91x1AOwtcI9A0Ayd3Aw==
X-Received: by 10.98.65.11 with SMTP id o11mr3660993pfa.115.1455729746491;
        Wed, 17 Feb 2016 09:22:26 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.230])
        by smtp.gmail.com with ESMTPSA id f12sm4011445pfd.87.2016.02.17.09.22.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 09:22:26 -0800 (PST)
Date: Thu, 18 Feb 2016 01:22:22 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: iio: tsl2x7x_core:
 adjust alignment to match open parenthesis
Message-ID: <20160217172218.GA10399@Socrates-Mint>
Mail-Followup-To: Julia Lawall <julia.lawall@lip6.fr>,
	outreachy-kernel@googlegroups.com
References: <1455721337-31883-1-git-send-email-eraretuya@gmail.com>
 <1455721337-31883-2-git-send-email-eraretuya@gmail.com>
 <alpine.DEB.2.10.1602171004500.4547@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1602171004500.4547@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Feb 17, 2016 at 10:10:24AM -0500, Julia Lawall wrote:
> On Wed, 17 Feb 2016, Eva Rachel Retuya wrote:
> 
> > Properly align the parameters as pointed out by checkpatch.
> 
> Properly is not very descriptive.  Mentioning the open parenthesis would be
> better.  If your message seems redundant with the checkpatch one, you could
> say just "Issue detected using checkpach".  Because it is more important to
> know what you did than to know what message checkpatch gave.
> 
> There are a couple places noted below where it seems like the newlines
> could be added differently.
> 
> julia
>

Thank you for providing feedback and apologies for the lengthy patch. I
will submit the v2 after some clarifications.

> >
> > CHECK: Alignment should match open parenthesis
> >
> > Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> > ---
> >  drivers/staging/iio/light/tsl2x7x_core.c | 164 +++++++++++++++++--------------
> >  1 file changed, 92 insertions(+), 72 deletions(-)
> >
> > diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
> > index 2a62718..3cb9891 100644
> > --- a/drivers/staging/iio/light/tsl2x7x_core.c
> > +++ b/drivers/staging/iio/light/tsl2x7x_core.c
> > @@ -349,13 +349,13 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
> >  	if (chip->tsl2x7x_chip_status != TSL2X7X_CHIP_WORKING) {
> >  		/* device is not enabled */
> >  		dev_err(&chip->client->dev, "%s: device is not enabled\n",
> > -				__func__);
> > +			__func__);
> >  		ret = -EBUSY;
> >  		goto out_unlock;
> >  	}
> >
> >  	ret = tsl2x7x_i2c_read(chip->client,
> > -		(TSL2X7X_CMD_REG | TSL2X7X_STATUS), &buf[0]);
> > +			       (TSL2X7X_CMD_REG | TSL2X7X_STATUS), &buf[0]);
> >  	if (ret < 0) {
> >  		dev_err(&chip->client->dev,
> >  			"%s: Failed to read STATUS Reg\n", __func__);
> > @@ -371,8 +371,8 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
> >
> >  	for (i = 0; i < 4; i++) {
> >  		ret = tsl2x7x_i2c_read(chip->client,
> > -			(TSL2X7X_CMD_REG | (TSL2X7X_ALS_CHAN0LO + i)),
> > -			&buf[i]);
> > +				       (TSL2X7X_CMD_REG |
> > +				       (TSL2X7X_ALS_CHAN0LO + i)), &buf[i]);
> 
> See if you could move the newline to the , rather than breaking up an
> argument in this way.
>

I actually hesitated on breaking it up that way but then I saw some
other parts of the code broken up that way hence I went and did the
change. I tried as you said but it won't fit, the statement will exceed
the 80-char limit.

<snipped>

> > @@ -609,7 +609,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
> >  	lux_val = tsl2x7x_get_lux(indio_dev);
> >  	if (lux_val < 0) {
> >  		dev_err(&chip->client->dev,
> > -		"%s: failed to get lux\n", __func__);
> > +			"%s: failed to get lux\n", __func__);
> 
> Maybe the newline is not needed?
>

What do you mean by newline? I added one tab here to align the "%s:.."
string.

<snipped>

> > @@ -711,7 +711,8 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
> >  	for (i = 0, dev_reg = chip->tsl2x7x_config;
> >  			i < TSL2X7X_MAX_CONFIG_REG; i++) {
> >  		ret = i2c_smbus_write_byte_data(chip->client,
> > -				TSL2X7X_CMD_REG + i, *dev_reg++);
> > +						TSL2X7X_CMD_REG + i,
> > +						*dev_reg++);
> 
> Maybe there could be one less line here.
> 

The semicolon doesn't fit.

<snipped>

> > @@ -1873,14 +1893,14 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
> >  	i2c_set_clientdata(clientp, indio_dev);
> >
> >  	ret = tsl2x7x_i2c_read(chip->client,
> > -		TSL2X7X_CHIPID, &device_id);
> > +			       TSL2X7X_CHIPID, &device_id);
> 
> Maybe the newline is not needed at all here?
>

I'm sorry I don't get the newline here also. I used a combination of
tabs and spaces to align the parameters.

<snipped>

Eva

