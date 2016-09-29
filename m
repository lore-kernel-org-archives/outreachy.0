X-GM-THRID: 6335244935171670016
X-Received: by 10.46.0.196 with SMTP id e65mr96303lji.25.1475152012582;
        Thu, 29 Sep 2016 05:26:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.4 with SMTP id g4ls272743ljg.41.gmail; Thu, 29 Sep 2016
 05:26:51 -0700 (PDT)
X-Received: by 10.25.10.131 with SMTP id 125mr93194lfk.17.1475152011754;
        Thu, 29 Sep 2016 05:26:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e21si1001552wmc.2.2016.09.29.05.26.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 05:26:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,415,1470693600"; 
   d="scan'208";a="238748516"
Received: from unknown (HELO [10.243.36.197]) ([89.202.203.52])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Sep 2016 14:26:51 +0200
Date: Thu, 29 Sep 2016 14:26:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging : media: bcm2048: radio-bcm2048.c: Use unsigned
 int rather than unisigned
In-Reply-To: <20160929115919.GA21039@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1609291426300.1912@hadrien>
References: <20160929115919.GA21039@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 29 Sep 2016, Muraru Mihaela wrote:

> Replace the unsigned with the unsigned int,to decrease the programming
> errors that can give the usage of simply unsigned.
>
> Warning found by checkpatch.pl :
>
> WARNING: Prefer 'unsigned int' to bare use of 'unsigned'.
>
> Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
>
> ---
>
> Changes in v2:
> 	- specify the type of the parameter type from function
> 	bcm2048_prop_write as unsigned int.
> 	This reduce the compiling problem and reduce to silent the checker.
> ---
>  drivers/staging/media/bcm2048/radio-bcm2048.c | 46 +++++++++++++--------------
>  1 file changed, 23 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
> index ea15cc6..4f73bda 100644
> --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
> @@ -1942,7 +1942,7 @@ static ssize_t bcm2048_##prop##_write(struct device *dev,		\
>  					size_t count)			\
>  {									\
>  	struct bcm2048_device *bdev = dev_get_drvdata(dev);		\
> -	type value;							\
> +	unsigned int value;						\
>  	int err;							\
>  									\
>  	if (!bdev)							\
> @@ -2022,27 +2022,27 @@ static ssize_t bcm2048_##prop##_read(struct device *dev,		\
>  	return count;							\
>  }
>
> -DEFINE_SYSFS_PROPERTY(power_state, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(mute, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(audio_route, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(dac_output, unsigned, int, "%u", 0)
> -
> -DEFINE_SYSFS_PROPERTY(fm_hi_lo_injection, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(fm_frequency, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(fm_af_frequency, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(fm_deemphasis, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(fm_rds_mask, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(fm_best_tune_mode, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(fm_search_rssi_threshold, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(fm_search_mode_direction, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(fm_search_tune_mode, unsigned, int, "%u", value > 3)
> -
> -DEFINE_SYSFS_PROPERTY(rds, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(rds_b_block_mask, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(rds_b_block_match, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(rds_pi_mask, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(rds_pi_match, unsigned, int, "%u", 0)
> -DEFINE_SYSFS_PROPERTY(rds_wline, unsigned, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(power_state, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(mute, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(audio_route, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(dac_output, unsigned int, int, "%u", 0)
> +
> +DEFINE_SYSFS_PROPERTY(fm_hi_lo_injection, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(fm_frequency, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(fm_af_frequency, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(fm_deemphasis, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(fm_rds_mask, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(fm_best_tune_mode, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(fm_search_rssi_threshold, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(fm_search_mode_direction, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(fm_search_tune_mode, unsigned int, int, "%u", value > 3)
> +
> +DEFINE_SYSFS_PROPERTY(rds, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(rds_b_block_mask, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(rds_b_block_match, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(rds_pi_mask, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(rds_pi_match, unsigned int, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(rds_wline, unsigned int, int, "%u", 0)

Are you sure that these are correct?

julia

>  property_read(rds_pi, unsigned int, "%x")
>  property_str_read(rds_rt, (BCM2048_MAX_RDS_RT + 1))
>  property_str_read(rds_ps, (BCM2048_MAX_RDS_PS + 1))
> @@ -2054,7 +2054,7 @@ property_read(region_bottom_frequency, unsigned int, "%u")
>  property_read(region_top_frequency, unsigned int, "%u")
>  property_signed_read(fm_carrier_error, int, "%d")
>  property_signed_read(fm_rssi, int, "%d")
> -DEFINE_SYSFS_PROPERTY(region, unsigned, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(region, unsigned int, int, "%u", 0)
>
>  static struct device_attribute attrs[] = {
>  	__ATTR(power_state, S_IRUGO | S_IWUSR, bcm2048_power_state_read,
> --
> 1.9.1
>
>

