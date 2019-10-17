X-GM-THRID: 6748514042587906048
X-Received: by 2002:a62:5ec6:: with SMTP id s189mr3769405pfb.30.1571316808585;
        Thu, 17 Oct 2019 05:53:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:e517:: with SMTP id n23ls622818pff.5.gmail; Thu, 17 Oct
 2019 05:53:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxgZ733SNs9Z2JH1B1B99XrJXOb9uSZPLL0xx21GwM715PETZ/I64l5fLxUUnMzhNABqfZb
X-Received: by 2002:a63:7d53:: with SMTP id m19mr4031750pgn.450.1571316807526;
        Thu, 17 Oct 2019 05:53:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571316807; cv=none;
        d=google.com; s=arc-20160816;
        b=LJ+ucwzJVLW4kSwhE0FLhKqjLD3pypIwB8wtUdMMMw92Vu++WZ5N+Xxp1TOsfC7fx3
         ZRWn2t4Qw2LoO+gNgo+gRh6F1VKdGq9YmsLeyCqTP+yeLY6o0y9CVe6VwvSL3OnyMWPw
         b1hzpHFjHg1yCjng6iH+nJTHSDTr1QXIJTbSJWXUtnfWZsRJaUFD/hFiqQGGu7zcqE7L
         g0ZwWilu/AW++Jl1duap/3ZLernosIsf/PL/tXOl1+aqFRgwtOPIEKUCus5nFwOhQ9fP
         CbSA7lxYoO52WLtfAprnhScR4hG29cXHaXk0EUM+AdMIzLuuY+OWPKzJNxNV2Y3lURGL
         xpww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lRO7eK5n8t9bQJRpJQud8eKsh7aHpPLrMyJtUAA9yDE=;
        b=HVUTfJufUpZfaGGZSFq4d1/SoqymGegdjltTPnCcYY/FzpnmYz9xSbdUfDv1IbbWUj
         iZ4a+Qb3Q7CK5OEywENWuOjerYmLcEuAYuEZWv5Fojqy6GaajFl1Khu+0s4i85x1SP5d
         homECEGimKjd+epB9SSxhs/s/Tbrxfuyo9G2KOOmbnEuDTQlAy+lTELaivkbpteWSz7X
         LtnCMpiW3I7YSer4d/hMnrCuwEXcsITQVogRg8PiLaK8e/zu8ve9JCMv3mEZ6qlDsRnX
         Vz5K4RDf6HhyCtCcpOY/i8Bd/Blm1TOVamGl2dG4ScAIGGtPW5D603TrgnhG6xSg8hOB
         ZBIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RbWQhW6P;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 124si149704pgd.4.2019.10.17.05.53.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Oct 2019 05:53:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RbWQhW6P;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [209.136.236.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 10FE220854;
	Thu, 17 Oct 2019 12:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1571316807;
	bh=PQpsbW43jrKkA9ULqcDZcTYEHBFaJIZ/L0w/nxs+dwE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RbWQhW6PVwssjUBYLVmPDe6IOgoa9yqFFEVVYqXin3a7IsgqdFAKwPmjI5UlisR8g
	 dDgHdBW0mlOoQgrZPdugoEwZOBqqDQPiBniFj5O4VzYvmPbtfXOiaZz+ZCS2vMl4yT
	 qFmRl96/wKSd6DzusMZ1tr5Wi2Z57INaFY33s2jE=
Date: Thu, 17 Oct 2019 05:53:26 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/4] staging: sm750fb: Edit CamelCase in ddk750_dvi.c
Message-ID: <20191017125326.GB1029242@kroah.com>
References: <cover.1571260724.git.jamal.k.shareef@gmail.com>
 <0ccb65c7e5844541bb96a791c39caabb05a49afb.1571260724.git.jamal.k.shareef@gmail.com>
 <20191016213554.GA906859@kroah.com>
 <20191017013858.GA9679@jamal-XPS-13-9343>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191017013858.GA9679@jamal-XPS-13-9343>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Wed, Oct 16, 2019 at 06:38:58PM -0700, Jamal Shareef wrote:
> On Wed, Oct 16, 2019 at 02:35:54PM -0700, Greg KH wrote:
> > On Wed, Oct 16, 2019 at 02:20:45PM -0700, Jamal Shareef wrote:
> > > Edit CamelCase naming convention in ddk750_dvi.c file.
> > > Issue found by checkpatch.
> > > 
> > > Edit depends on related files which are also being patched
> > > as part of the patchset.
> > > 
> > > Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> > > ---
> > >  drivers/staging/sm750fb/ddk750_dvi.c | 68 ++++++++++++++--------------
> > >  1 file changed, 34 insertions(+), 34 deletions(-)
> > > 
> > > diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
> > > index cd564ea40779..6fa77d4effef 100644
> > > --- a/drivers/staging/sm750fb/ddk750_dvi.c
> > > +++ b/drivers/staging/sm750fb/ddk750_dvi.c
> > > @@ -11,50 +11,50 @@
> > >   * function API. Please set the function pointer to NULL whenever the function
> > >   * is not supported.
> > >   */
> > > -static struct dvi_ctrl_device g_dcftSupportedDviController[] = {
> > > +static struct dvi_ctrl_device g_dcft_supported_dvi_controller[] = {
> > >  #ifdef DVI_CTRL_SII164
> > >  	{
> > > -		.pfnInit = sii164InitChip,
> > > -		.pfnGetVendorId = sii164GetVendorID,
> > > -		.pfnGetDeviceId = sii164GetDeviceID,
> > > +	    .pfn_init = sii164_init_chip,
> > > +	    .pfn_get_vendor_id = sii164_get_vendor_id,
> > > +	    .pfn_get_device_id = sii164_get_device_id,
> > >  #ifdef SII164_FULL_FUNCTIONS
> > > -		.pfnResetChip = sii164ResetChip,
> > > -		.pfnGetChipString = sii164GetChipString,
> > > -		.pfnSetPower = sii164SetPower,
> > > -		.pfnEnableHotPlugDetection = sii164EnableHotPlugDetection,
> > > -		.pfnIsConnected = sii164IsConnected,
> > > -		.pfnCheckInterrupt = sii164CheckInterrupt,
> > > -		.pfnClearInterrupt = sii164ClearInterrupt,
> > > +	    .pfn_reset_chip = sii164_reset_chip,
> > > +	    .pfn_get_chip_string = sii164_get_chip_string,
> > > +	    .pfn_set_power = sii164_set_power,
> > > +	    .pfn_enable_hot_plug_detection = sii164_enable_hot_plug_detection,
> > > +	    .pfn_is_connected = sii164_is_connected,
> > > +	    .pfn_check_interrupt = sii164_check_interrupt,
> > > +	    .pfn_clear_interrupt = sii164_clear_interrupt,
> > >  #endif
> > >  	},
> > >  #endif
> > >  };
> > >  
> > > -int dviInit(unsigned char edge_select,
> > > -	    unsigned char bus_select,
> > > -	    unsigned char dual_edge_clk_select,
> > > -	    unsigned char hsync_enable,
> > > -	    unsigned char vsync_enable,
> > > -	    unsigned char deskew_enable,
> > > -	    unsigned char deskew_setting,
> > > -	    unsigned char continuous_sync_enable,
> > > -	    unsigned char pll_filter_enable,
> > > -	    unsigned char pll_filter_value)
> > > +int dvi_init(unsigned char edge_select,
> > 
> > You didn't also change the .h file at the same time, how did this build?
> > 
> > You can't break the build at any point in time, every patch must work
> > properly.
> > 
> > Ah, no one even calls this function, maybe that's why this works?  If
> > so, just delete the function entirely!
> > 
> > thanks,
> > 
> > greg k-h
> 
> Resending as one patch named
> [RESEND PATCH] staging: sm750sb: Edit CamelCase in dvi/sii164 files

That patch does not delete this function :(

