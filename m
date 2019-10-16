X-GM-THRID: 6748514042587906048
X-Received: by 2002:a19:4f06:: with SMTP id d6mr27344971lfb.15.1571261473812;
        Wed, 16 Oct 2019 14:31:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9bd0:: with SMTP id w16ls2904747ljj.13.gmail; Wed, 16
 Oct 2019 14:31:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz5Wyf1tE2FBFqDKi9ziCIiYhKfJeT07MsDsCBvcRbjMJyVkhI4lrewORqP0f0BwRQgkDL0
X-Received: by 2002:a2e:7003:: with SMTP id l3mr165907ljc.158.1571261472535;
        Wed, 16 Oct 2019 14:31:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571261472; cv=none;
        d=google.com; s=arc-20160816;
        b=ye37N/h709CFZd995XJAAX3BrqIEaEbUZY79oj2b1FkkBrwAg9Kvtvor9kqj6L6r3n
         ReHeWulyfH9uCNk4qgy+HKKlr9EEJ9GZ+c4X/tTZXEVESnYPadJqaF4XCGyWP3dEV2nM
         zu4omnb/MKSoqp/TZub8/xk7ZKm/zNUVzgNVD/7LhlcasKGS5rNW1JQt24+TfXs9ar3J
         CkCpW6El7vXN1Ldt988siLkNGoZr6I7rb6DYXWh7puV28xbgmUWgSkVH8NZ7g2mldnSp
         P5+Kd/UCYwd/mmzeSlmUJF+WizNdiszuzuzc3YN0QaTFxehUZu1G9im0AQwaIxRdlGV6
         tjDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=VYVUfC3laE8sO3p6YnToz06pgCMlp9DzxYch4kLgAkI=;
        b=P6kxW1yBCMIhwHFV3d52G9m94+dg0WbwiVdf/wtU297h2fJJXpgskpdE51ndEosOCp
         +ciGOwaZwN1OmTACWESpN6BYarKgvQ5D9hcBMclaxaer1GfilQ1aCqxyOetygVTzSHox
         Uq037+sMZjhOrkNoXQu6rsEcjuITcWu0y5Sd/Bf8pJMv8qvJoxfWWHsXb1y/cweAt3BJ
         43rrhC8CkrKeIS/y3s1L8LwnqUmiaR2aALfFZaDUXhyd+nqzvFl3e1NGuu29MKd5HNBZ
         YR2hHpiPAW2dp1WvuXDNBFUTDqgH2rwStLmb1vzPkCRSMfcnQI+yYaWsWkcjTCLk32zy
         oZMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o30si7819lfi.0.2019.10.16.14.31.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Oct 2019 14:31:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,305,1566856800"; 
   d="scan'208";a="406505596"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Oct 2019 23:30:38 +0200
Date: Wed, 16 Oct 2019 23:30:38 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jamal Shareef <jamal.k.shareef@gmail.com>
cc: boqun.feng@microsoft.com, andrea.parri@microsoft.com, 
    sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: sm750fb: Edit CamelCase
 in ddk750_dvi.c
In-Reply-To: <0ccb65c7e5844541bb96a791c39caabb05a49afb.1571260724.git.jamal.k.shareef@gmail.com>
Message-ID: <alpine.DEB.2.21.1910162329120.2643@hadrien>
References: <cover.1571260724.git.jamal.k.shareef@gmail.com> <0ccb65c7e5844541bb96a791c39caabb05a49afb.1571260724.git.jamal.k.shareef@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 16 Oct 2019, Jamal Shareef wrote:

> Edit CamelCase naming convention in ddk750_dvi.c file.
> Issue found by checkpatch.
>
> Edit depends on related files which are also being patched
> as part of the patchset.

What does this mean?

The kernel should compile after every patch.

It's not exactly a camelcase issue, but you could also get rid of the g_
in g_dcft_supported_dvi_controller.  That seems to indicate that the
variable is a global variable, but that kind of encoding is not done in
the kernel.

julia



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
> +	     unsigned char bus_select,
> +	     unsigned char dual_edge_clk_select,
> +	     unsigned char hsync_enable,
> +	     unsigned char vsync_enable,
> +	     unsigned char deskew_enable,
> +	     unsigned char deskew_setting,
> +	     unsigned char continuous_sync_enable,
> +	     unsigned char pll_filter_enable,
> +	     unsigned char pll_filter_value)
>  {
> -	struct dvi_ctrl_device *pCurrentDviCtrl;
> +	struct dvi_ctrl_device *p_current_dvi_ctrl;
>
> -	pCurrentDviCtrl = g_dcftSupportedDviController;
> -	if (pCurrentDviCtrl->pfnInit) {
> -		return pCurrentDviCtrl->pfnInit(edge_select,
> -						bus_select,
> -						dual_edge_clk_select,
> -						hsync_enable,
> -						vsync_enable,
> -						deskew_enable,
> -						deskew_setting,
> -						continuous_sync_enable,
> -						pll_filter_enable,
> -						pll_filter_value);
> +	p_current_dvi_ctrl = g_dcft_supported_dvi_controller;
> +	if (p_current_dvi_ctrl->pfn_init) {
> +		return p_current_dvi_ctrl->pfn_init(edge_select,
> +						    bus_select,
> +						    dual_edge_clk_select,
> +						    hsync_enable,
> +						    vsync_enable,
> +						    deskew_enable,
> +						    deskew_setting,
> +						    continuous_sync_enable,
> +						    pll_filter_enable,
> +						    pll_filter_value);
>  	}
>  	return -1; /* error */
>  }
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0ccb65c7e5844541bb96a791c39caabb05a49afb.1571260724.git.jamal.k.shareef%40gmail.com.
>

