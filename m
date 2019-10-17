X-GM-THRID: 6748514042587906048
X-Received: by 2002:a05:6102:246:: with SMTP id a6mr3344677vsq.19.1571349176986;
        Thu, 17 Oct 2019 14:52:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:66c1:: with SMTP id a184ls388933vsc.8.gmail; Thu, 17 Oct
 2019 14:52:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy5sDmlM7O5bunVVh/A+rImSEvWYB1fCf6+qc0IgNWY6e6HUFhp6fK1rKb9KOH7ZE8AC38O
X-Received: by 2002:a67:fb44:: with SMTP id e4mr3584021vsr.112.1571349176000;
        Thu, 17 Oct 2019 14:52:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571349175; cv=none;
        d=google.com; s=arc-20160816;
        b=KnTablTODYd1E8Ho6QCX0e4zrqhdkfjjdjvb/DjZTmI9DNRpT+4EyQOnoKzAhR/ply
         2srmCKFBmF/tl2QXXEAGCsy/WQI/lHeoEOOQq6gmqaDXYuA2KjCCpIYj/4HI//cJhGNV
         UUl70NGMWXfnyjKiYmqNtBPnS2tOyy+dXNO9BCd9xzAgMX5ZUa39h6g4wPpAuMMel9Kn
         RH2ltBueOAUQLV1LiIo1YWQvZJ3imAP8+94KfCyVIO8ZRzhDJwFsbVIDG8H1TLnVOgZ6
         L/t+qvsMS7po5SoUyoOQOOJTmGBMQlq366LrlnBuGVa/Mu+I4kWPp2IvEdxaqtz7mHO6
         ZPWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=q7EGGXCrrzuG4ZKBB4VVMmzwGYpv/tg5LHtTzLlUVZU=;
        b=U5YlayzU8ip9PWRtv82URlzfU/gfCVLiu49gq8sJl1gs48UzA4Uph+wWJ72xgAmDSi
         z5izZHg3bRjQaT08Ifj5Xw/9EcsNbCtj+rFPYCNFsAPzXL0BN85dGfqeKtpXyA4ZWMyg
         mWeDv7ay2FRa70jdlQQnwuIXxydKEcR78lC4rk97mp/HTH5dlQ7f2kKR13Rq+IetlMss
         5XbP66Vs7SrYLCzyZeAHbUqwchkZd1fHjGSvWXSoYNvVg82GGpoU5PB9Wbw1H8oMBJR2
         qFuZvL7kNlL7/de1dGzsUfWyzckHnBcaeieA9eD1GSnBHb25R0MHITSqnm0/PALup8eo
         JlwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mzNw5t/b";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id u65si104247vsb.0.2019.10.17.14.52.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2019 14:52:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mzNw5t/b";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id d22so1795143pls.0
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Oct 2019 14:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=q7EGGXCrrzuG4ZKBB4VVMmzwGYpv/tg5LHtTzLlUVZU=;
        b=mzNw5t/bXKtsM/EJWRmmhVKiaSdXMfdTnzd8aSK7y/IEcZgRRy+NrnDTPZnpDsQKyO
         z3+7JhlpxSHcsa8NFdOvYFhtfjvTfsm3sNwTkeKxQHZt4g2NE4Re0rVpI1NPmefEmyJO
         /1JU3gdQN0H6xJMKMh1N4OAezFcGIy5DNghKuTeuXJ6j4e7KBwbmXqERRlX+o1r23BcL
         UUt6el6fMfJzQKw2FX1VHCVYB2+Xq+rh9DgDiLDpDGMEA1hwBQCX4+PiliwqX1brIX62
         WdtPMAsrUkoNA/fKFymaJCaRCbGF7qA73c5p9GCD1dZO+S/ook1SnQpdfxUtm1kcEMfx
         8tIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=q7EGGXCrrzuG4ZKBB4VVMmzwGYpv/tg5LHtTzLlUVZU=;
        b=H8aEaPZFV/jV+1hvy5XSGxehLFP4PguwDM+pPGVAM5/6/BHOavnzy5ZEKOp+vjDALC
         KYxTOX/8xVtMl2Teb1KLQvdzWEBBB5k2nJ5bGx8y/fewovWCUe/zCuJfoA+nAOuTTIIx
         g03Ui9fksXsd5d6OgHtCNnQ6hJWHXUFlr4t4KgxUXolFR59udEd3BUCfGnaCSLnUSLlM
         cwnfNS82qOXt0FWCTlpY3UGOSXRCx8CMBQK16OeoJLnIXf83EBNq+kZdg6wWzj5NhGUs
         O94gWaFQhT7wOTVgsPpMma33q7sCwG/kxgs1KzACTSScUzvrRjnqu/FJXw5r3HVew5VZ
         IM/w==
X-Gm-Message-State: APjAAAWR9lqvBVULRY4K8WHRmEJCCg4s9D6mEWg0BjngM13vxJQ8qyZ8
	SME0wDwtUXG/+uRE7cSgSKrH3ExBN9c=
X-Received: by 2002:a17:902:9008:: with SMTP id a8mr6320700plp.218.1571349174465;
        Thu, 17 Oct 2019 14:52:54 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id t12sm3055976pjq.18.2019.10.17.14.52.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2019 14:52:52 -0700 (PDT)
Date: Thu, 17 Oct 2019 14:52:52 -0700
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/4] staging: sm750fb: Edit CamelCase in ddk750_dvi.c
Message-ID: <20191017215252.GA31962@jamal-XPS-13-9343>
References: <cover.1571260724.git.jamal.k.shareef@gmail.com>
 <0ccb65c7e5844541bb96a791c39caabb05a49afb.1571260724.git.jamal.k.shareef@gmail.com>
 <20191016213554.GA906859@kroah.com>
 <20191017013858.GA9679@jamal-XPS-13-9343>
 <20191017125326.GB1029242@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191017125326.GB1029242@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Oct 17, 2019 at 05:53:26AM -0700, Greg KH wrote:
> On Wed, Oct 16, 2019 at 06:38:58PM -0700, Jamal Shareef wrote:
> > On Wed, Oct 16, 2019 at 02:35:54PM -0700, Greg KH wrote:
> > > On Wed, Oct 16, 2019 at 02:20:45PM -0700, Jamal Shareef wrote:
> > > > Edit CamelCase naming convention in ddk750_dvi.c file.
> > > > Issue found by checkpatch.
> > > > 
> > > > Edit depends on related files which are also being patched
> > > > as part of the patchset.
> > > > 
> > > > Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> > > > ---
> > > >  drivers/staging/sm750fb/ddk750_dvi.c | 68 ++++++++++++++--------------
> > > >  1 file changed, 34 insertions(+), 34 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
> > > > index cd564ea40779..6fa77d4effef 100644
> > > > --- a/drivers/staging/sm750fb/ddk750_dvi.c
> > > > +++ b/drivers/staging/sm750fb/ddk750_dvi.c
> > > > @@ -11,50 +11,50 @@
> > > >   * function API. Please set the function pointer to NULL whenever the function
> > > >   * is not supported.
> > > >   */
> > > > -static struct dvi_ctrl_device g_dcftSupportedDviController[] = {
> > > > +static struct dvi_ctrl_device g_dcft_supported_dvi_controller[] = {
> > > >  #ifdef DVI_CTRL_SII164
> > > >  	{
> > > > -		.pfnInit = sii164InitChip,
> > > > -		.pfnGetVendorId = sii164GetVendorID,
> > > > -		.pfnGetDeviceId = sii164GetDeviceID,
> > > > +	    .pfn_init = sii164_init_chip,
> > > > +	    .pfn_get_vendor_id = sii164_get_vendor_id,
> > > > +	    .pfn_get_device_id = sii164_get_device_id,
> > > >  #ifdef SII164_FULL_FUNCTIONS
> > > > -		.pfnResetChip = sii164ResetChip,
> > > > -		.pfnGetChipString = sii164GetChipString,
> > > > -		.pfnSetPower = sii164SetPower,
> > > > -		.pfnEnableHotPlugDetection = sii164EnableHotPlugDetection,
> > > > -		.pfnIsConnected = sii164IsConnected,
> > > > -		.pfnCheckInterrupt = sii164CheckInterrupt,
> > > > -		.pfnClearInterrupt = sii164ClearInterrupt,
> > > > +	    .pfn_reset_chip = sii164_reset_chip,
> > > > +	    .pfn_get_chip_string = sii164_get_chip_string,
> > > > +	    .pfn_set_power = sii164_set_power,
> > > > +	    .pfn_enable_hot_plug_detection = sii164_enable_hot_plug_detection,
> > > > +	    .pfn_is_connected = sii164_is_connected,
> > > > +	    .pfn_check_interrupt = sii164_check_interrupt,
> > > > +	    .pfn_clear_interrupt = sii164_clear_interrupt,
> > > >  #endif
> > > >  	},
> > > >  #endif
> > > >  };
> > > >  
> > > > -int dviInit(unsigned char edge_select,
> > > > -	    unsigned char bus_select,
> > > > -	    unsigned char dual_edge_clk_select,
> > > > -	    unsigned char hsync_enable,
> > > > -	    unsigned char vsync_enable,
> > > > -	    unsigned char deskew_enable,
> > > > -	    unsigned char deskew_setting,
> > > > -	    unsigned char continuous_sync_enable,
> > > > -	    unsigned char pll_filter_enable,
> > > > -	    unsigned char pll_filter_value)
> > > > +int dvi_init(unsigned char edge_select,
> > > 
> > > You didn't also change the .h file at the same time, how did this build?
> > > 
> > > You can't break the build at any point in time, every patch must work
> > > properly.
> > > 
> > > Ah, no one even calls this function, maybe that's why this works?  If
> > > so, just delete the function entirely!
> > > 
> > > thanks,
> > > 
> > > greg k-h
> > 
> > Resending as one patch named
> > [RESEND PATCH] staging: sm750sb: Edit CamelCase in dvi/sii164 files
> 
> That patch does not delete this function :(

Just to be clear, there are no uses of the original function dviInt 
so we are removing it. Also removing the global variable 
dcft_supported_dvi_controller[] because it was only used in dviInt.

Jamal

