X-GM-THRID: 6335244935171670016
X-Received: by 10.46.33.219 with SMTP id h88mr1656184lji.5.1475039392642;
        Tue, 27 Sep 2016 22:09:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.167 with SMTP id e39ls12992lji.49.gmail; Tue, 27 Sep 2016
 22:09:51 -0700 (PDT)
X-Received: by 10.25.203.81 with SMTP id b78mr1577562lfg.8.1475039391899;
        Tue, 27 Sep 2016 22:09:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a126si454696wmd.1.2016.09.27.22.09.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 22:09:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,408,1470693600"; 
   d="scan'208";a="238532104"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Sep 2016 07:09:51 +0200
Date: Wed, 28 Sep 2016 07:09:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging :media :bcm2048 :radio-bcm2048.c
 : Use unsigned int rather than unisigned
In-Reply-To: <20160928050553.GA3106@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1609280708030.7515@hadrien>
References: <20160928050553.GA3106@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 28 Sep 2016, Muraru Mihaela wrote:

> Replace the unsigned with the unsigned int,to decrease the programming
> errors that can give the usage of simply unsigned.
>
> Warning found by checkpatch.pl :
>
> WARNING: Prefer 'unsigned int' to bare use of 'unsigned'.

I don't think that the change is correct.  DEFINE_SYSFS_PROPERTY is a
macro.  Did you look at what it expands into?  One way is to look at the
definition.  Another way is to run make foo.i, where foo is your file
name.  The latter will show you the exact expansion in each case, but the
code will become quite big.

julia

>
> Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/media/bcm2048/radio-bcm2048.c | 44 +++++++++++++--------------
>  1 file changed, 22 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
> index ea15cc6..3761621 100644
> --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
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
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160928050553.GA3106%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

