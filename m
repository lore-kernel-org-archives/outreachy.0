X-GM-THRID: 6748514042587906048
X-Received: by 2002:a92:9892:: with SMTP id a18mr10507ill.266.1571261761116;
        Wed, 16 Oct 2019 14:36:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:4808:: with SMTP id v8ls9161ila.8.gmail; Wed, 16 Oct
 2019 14:36:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwGVs0euIgYybbkQJiSWAJqGZfSiy3RvqN98ll94GeJkumEQ3/ny6LWAAeVVOcG3Mr4wnP2
X-Received: by 2002:a92:8f46:: with SMTP id j67mr17032ild.236.1571261760098;
        Wed, 16 Oct 2019 14:36:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571261760; cv=none;
        d=google.com; s=arc-20160816;
        b=Xx4QzjjoYbMvopHbx7kDkkLvLhkhM7wpDwr0CkkheSfJM0vCY7T1xwhCx7F9mnAH5N
         S7qBkpD+0sryOmjUZ94xrs7SKK7PVSPNOtI0SnREot2c0QluEnbZOUGzfp6SNddfhgZa
         HfYCTnIxBkx5xJ5QYRWmeFK9+fW8OQEu+WyHrb3RnbAhFNGTcYqbWRNzzRNwAM8VqCOZ
         sKB2xfgp1LXhD+zj5KqGUNFoc3i2cITGSdxPkTk8gPPdpfkvD6H+zqhSDvGOY33zZOnt
         6aDn+E3eeT0aE9h8S2h+VUg+Ml8cbTS+f8F6CzPgSuMgOMASkXWyh4wSpdD3izLH7Eb1
         ZYEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=I+HqAaddHl1+W2kyAE2IBeUMkdso+tyvbFuk0TRdfdo=;
        b=Jyau6KlXKTMdtXmmK+HlaMnQex0ezu6/V4NsqJTS6D3CFNdW/eTm6VW4g8b2vKt0YX
         GigrQhsM/yXRruOpHOFhlxmG36YF6pcA+uMxjGlnHzpkKHdTSBCGxxZTCfJydWRdpNgX
         JNyyWR3Zl7ObgQzlOxAVo5Mp7V3OnHvfQobSsFEIdF9/iAnvmjK26K1i8NWJt5D3NXXl
         LqmvKhfjKn/T2+4gfpE5QJaaSLZErGBoM1d8nXpEQdKTcMVqsxit29FdnEsZFp+LIQYH
         fEeY2i/4omlsYuJiBJde20QbeCsQwmZtvdXB9auSgzI6EDGBwHCgc/6CU3ZzoCqixN60
         ZAAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qm33A+tt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i8si6701ilq.4.2019.10.16.14.36.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Oct 2019 14:36:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qm33A+tt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (li1825-44.members.linode.com [172.104.248.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 57E3320640;
	Wed, 16 Oct 2019 21:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1571261759;
	bh=OHr3K4XbxnhyUhCCXuYBz5WTIyS550x2ujUNqykVepk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qm33A+ttk/U+YbFSZVYGpfoSwRrAg0NGXtjizYkygSZg9rH6nKvb9hOITuqdNUL3s
	 XswuoLKSzQWVMcLx585Ibj1XgZm8PvaYSjoTgdYwxwhUwt0ZYd+iI/bu60/1H3DbtN
	 OyZCdKN/VsVCfmn6vS4U8POkTituZkCHl9Gke7S4=
Date: Wed, 16 Oct 2019 14:35:54 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: boqun.feng@microsoft.com, andrea.parri@microsoft.com,
	sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/4] staging: sm750fb: Edit CamelCase in ddk750_dvi.c
Message-ID: <20191016213554.GA906859@kroah.com>
References: <cover.1571260724.git.jamal.k.shareef@gmail.com>
 <0ccb65c7e5844541bb96a791c39caabb05a49afb.1571260724.git.jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0ccb65c7e5844541bb96a791c39caabb05a49afb.1571260724.git.jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Wed, Oct 16, 2019 at 02:20:45PM -0700, Jamal Shareef wrote:
> Edit CamelCase naming convention in ddk750_dvi.c file.
> Issue found by checkpatch.
> 
> Edit depends on related files which are also being patched
> as part of the patchset.
> 
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_dvi.c | 68 ++++++++++++++--------------
>  1 file changed, 34 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
> index cd564ea40779..6fa77d4effef 100644
> --- a/drivers/staging/sm750fb/ddk750_dvi.c
> +++ b/drivers/staging/sm750fb/ddk750_dvi.c
> @@ -11,50 +11,50 @@
>   * function API. Please set the function pointer to NULL whenever the function
>   * is not supported.
>   */
> -static struct dvi_ctrl_device g_dcftSupportedDviController[] = {
> +static struct dvi_ctrl_device g_dcft_supported_dvi_controller[] = {
>  #ifdef DVI_CTRL_SII164
>  	{
> -		.pfnInit = sii164InitChip,
> -		.pfnGetVendorId = sii164GetVendorID,
> -		.pfnGetDeviceId = sii164GetDeviceID,
> +	    .pfn_init = sii164_init_chip,
> +	    .pfn_get_vendor_id = sii164_get_vendor_id,
> +	    .pfn_get_device_id = sii164_get_device_id,
>  #ifdef SII164_FULL_FUNCTIONS
> -		.pfnResetChip = sii164ResetChip,
> -		.pfnGetChipString = sii164GetChipString,
> -		.pfnSetPower = sii164SetPower,
> -		.pfnEnableHotPlugDetection = sii164EnableHotPlugDetection,
> -		.pfnIsConnected = sii164IsConnected,
> -		.pfnCheckInterrupt = sii164CheckInterrupt,
> -		.pfnClearInterrupt = sii164ClearInterrupt,
> +	    .pfn_reset_chip = sii164_reset_chip,
> +	    .pfn_get_chip_string = sii164_get_chip_string,
> +	    .pfn_set_power = sii164_set_power,
> +	    .pfn_enable_hot_plug_detection = sii164_enable_hot_plug_detection,
> +	    .pfn_is_connected = sii164_is_connected,
> +	    .pfn_check_interrupt = sii164_check_interrupt,
> +	    .pfn_clear_interrupt = sii164_clear_interrupt,
>  #endif
>  	},
>  #endif
>  };
>  
> -int dviInit(unsigned char edge_select,
> -	    unsigned char bus_select,
> -	    unsigned char dual_edge_clk_select,
> -	    unsigned char hsync_enable,
> -	    unsigned char vsync_enable,
> -	    unsigned char deskew_enable,
> -	    unsigned char deskew_setting,
> -	    unsigned char continuous_sync_enable,
> -	    unsigned char pll_filter_enable,
> -	    unsigned char pll_filter_value)
> +int dvi_init(unsigned char edge_select,

You didn't also change the .h file at the same time, how did this build?

You can't break the build at any point in time, every patch must work
properly.

Ah, no one even calls this function, maybe that's why this works?  If
so, just delete the function entirely!

thanks,

greg k-h

