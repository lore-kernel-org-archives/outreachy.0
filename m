X-GM-THRID: 6803293292760924160
X-Received: by 2002:a17:90a:5285:: with SMTP id w5mr7921361pjh.77.1584073275709;
        Thu, 12 Mar 2020 21:21:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:ab0b:: with SMTP id p11ls3469592pff.0.gmail; Thu, 12 Mar
 2020 21:21:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs+4/kZVpKfAOYyXGLFZeznbL4bnn2w8tF5FFhH2LzroOdJHhYXQrhSHq9ZF7mKiDZPeFMc
X-Received: by 2002:a62:e306:: with SMTP id g6mr9482019pfh.312.1584073274203;
        Thu, 12 Mar 2020 21:21:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584073274; cv=none;
        d=google.com; s=arc-20160816;
        b=gqP81uwMxoYsd7HXKt2RHTrW78Bxs75BW6VEV+l8V1127bmuKo2RwFGYqGt8gjVKcv
         wYXZxVamJyLWbZjMpdtKME4sX+p8xNEt7YJKEBwk2e3lcVVlhqKeQ+TsrDUoVd3XRe7C
         lpB12md6PoM3O3tOHXY0QRe7jAq4+Hq/r53CwpblyhVrjj9QT5yM7dxSlU3h0kKKBm5o
         NKFl8KrwwHiXJf77n6iTnsM1rXmDdteKA6toVldG3Ij5kQeN2Uj3Xv7oFQ3pj0mPeAv0
         gBNKKXZy2PEGuZ78QA4WhV8eG2tHHXwBPiD2xnMh27/y0y0yzLSHWNqf2uFTZZoBcqxU
         J2ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ib+S4FrEssJOq8X5ZpaHJ4ZdwxaxaJLpb4zx3Mx+R1c=;
        b=mScoUqN6RWsvdmuE2VoI/QW9demnKr7XLLnbV0wa03jlb9F6dt7TPKr8DLmIKXNR2J
         I9/N08KTFeBVlTj64Uc+oWcFatmm70YZzOfes7OrYyrtwJO52XBDuH4NiENURbOn+973
         s52V7P+l9o1p6sS/xin/G82LxOoSFHGsTSF1xDcylvTn6WJ3Y2YI3o2djUbJ1QV7Mwgj
         lR/+wOxbC19ec/ozGKawBaq3aVOET7+ElCWS++CGes8DAgDAVWTOg+iHfQt25CIHC/1F
         N1H6TNMqMt3A8KA3LusPeae2rbObhbO8VobnwFJxyJu4Y9wKMnTqrBgo18dZtkvuSKKl
         so8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=siwzyqzk;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <viresh.kumar@linaro.org>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id bt7si311490pjb.2.2020.03.12.21.21.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 21:21:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=siwzyqzk;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-pj1-x1041.google.com with SMTP id f15so3490902pjq.2
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 21:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ib+S4FrEssJOq8X5ZpaHJ4ZdwxaxaJLpb4zx3Mx+R1c=;
        b=siwzyqzkx9BA2yBPg2/87shRNdSzUeRfInmLDMVwhJrUiLwgPArZcTKRnQrX3AD6hz
         iOQD+1vmCJ54+dmWhlhErckm/Oa/XlayInp4G/HfMvMfsGvsRne9efXVzEPjBZlygk5h
         +46FU4lV3mBHraezF8FBvPsGFYY0u8HCqd9p2xLwITJ7rbNE3rzOSt3wM/IoYq5ZOJbK
         hJ0a0JsGVQQ8s0Uei+0fbBw7f0W2I1fRRTn2BP1nVIY6IoSTmLNehxKc4+iTgsWi1iNA
         2unB76QdbuKxm9vNuaS5g2I9hsUvKkXg3psNAN+rKuqdqyrZjqvk6XNbCTsc6879FOQc
         VZPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ib+S4FrEssJOq8X5ZpaHJ4ZdwxaxaJLpb4zx3Mx+R1c=;
        b=WI4mQYtQ3Gbkd9rwHP7UuwjUgbHuqiA5GgPKZrsVrEz1ttL8dA7MacRY5EsrvOmBrA
         1Ehvzb/LDSZxAYfsErguv8BXvot3TL57dT+IRwI6AwtGHqjQSe6pllcTjRjed05w5+6O
         CfNN1nVWJuBUi7CmdxeEj6S3ZysI2K73utA9PySnimJ6llPhg+1e27MZPsZEkDhggCIR
         8/+KFW8aRxLb95oPp4trdWGUJKFylP4NiQmY9OdslN+rk74CXetlS+MEK1qah7UdHPLl
         T8FuI39mc/M6VY4iIVGXYaWfNzWvmDkYglqy+9PCWFCkSCBCScoZyCe9oRdcGTEHapQs
         vhsg==
X-Gm-Message-State: ANhLgQ2bS25z0RaZ3CY8iE6XcG6Ook8seX5XnWHS2bPXYUSI8Z97TVZZ
	efvni/ir22b40vhR6Y1WXiTzOoADH9w=
X-Received: by 2002:a17:902:6a8c:: with SMTP id n12mr11339854plk.191.1584073273771;
        Thu, 12 Mar 2020 21:21:13 -0700 (PDT)
Return-Path: <viresh.kumar@linaro.org>
Received: from localhost ([122.171.122.128])
        by smtp.gmail.com with ESMTPSA id f127sm19126972pfa.9.2020.03.12.21.21.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 21:21:13 -0700 (PDT)
Date: Fri, 13 Mar 2020 09:51:11 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	vireshk@kernel.org, johan@kernel.org, elder@kernel.org
Subject: Re: [PATCH v2] staging: greybus: i2c: remove unused pointers
Message-ID: <20200313042111.z64drb4i2sjlejon@vireshk-i7>
References: <20200312190349.7892-1-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312190349.7892-1-lu@pplo.net>
User-Agent: NeoMutt/20180716-391-311a52

On 12-03-20, 20:03, Lourdes Pedrajas wrote:
> Remove unused pointers in gb_i2c_algorithm structure and gb_i2c_probe()
> function, as they are not touched since 2014.
> 
> Suggested-by: Johan Hovold <johan@kernel.org>
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
> Changes since v1:
> - Corrections in log message
> 
>  drivers/staging/greybus/i2c.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/i2c.c b/drivers/staging/greybus/i2c.c
> index c48fa1de89b0..de2f6516da09 100644
> --- a/drivers/staging/greybus/i2c.c
> +++ b/drivers/staging/greybus/i2c.c
> @@ -224,7 +224,6 @@ static u32 gb_i2c_functionality(struct i2c_adapter *adap)
>  
>  static const struct i2c_algorithm gb_i2c_algorithm = {
>  	.master_xfer	= gb_i2c_master_xfer,
> -	/* .smbus_xfer	= gb_i2c_smbus_xfer, */
>  	.functionality	= gb_i2c_functionality,
>  };
>  
> @@ -267,7 +266,6 @@ static int gb_i2c_probe(struct gbphy_device *gbphy_dev,
>  	adapter->owner = THIS_MODULE;
>  	adapter->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
>  	adapter->algo = &gb_i2c_algorithm;
> -	/* adapter->algo_data = what? */
>  
>  	adapter->dev.parent = &gbphy_dev->dev;
>  	snprintf(adapter->name, sizeof(adapter->name), "Greybus i2c adapter");

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

