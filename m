X-GM-THRID: 6748514042587906048
X-Received: by 2002:ac8:3fb5:: with SMTP id d50mr1238895qtk.98.1571276341704;
        Wed, 16 Oct 2019 18:39:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:2786:: with SMTP id n128ls204125qkn.0.gmail; Wed, 16 Oct
 2019 18:39:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyTjHWYerw/XYda1vsbWYZz2zNz9L1vqgGBtPvwFXaFudJxk/kLQRbJs2X5TvmpZe16Dv27
X-Received: by 2002:a37:84c1:: with SMTP id g184mr989786qkd.309.1571276340706;
        Wed, 16 Oct 2019 18:39:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571276340; cv=none;
        d=google.com; s=arc-20160816;
        b=emCmp9eGOqFLnNiOirTGopFq+Tf5lAq4XekIEprw1IJMddSPRzrwU92EyWTXWIcFxJ
         Lgvpf5zYP/L4FuTdGbONKnUusl6DSKjj6a5zkXFLOA4aeCTXSVLkwBrCoJs1Aa1ZfVFr
         rmK+Rqe68NXALufOIas+JXhJmD9JId9kIzW3AO6RU5X5m9lhgFP7eFQrW1cgfOsuOayi
         8N++8EMkgThmFsF+3A1JoSLYFT06kgd2LAsf0QDml5xQtlpnKzjmgUvfDcKdWv3E41Zg
         SOr1m3pFCbhALU8SbBFJ8tWlJnLjCnZHYtlrj802IZfTfT4PfVbnhdpEEj0S5EeOB1Bb
         JR+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KKpuwRZh9rwoNuf5edzmPYbxw2vuc42zAU8dxcRUhWg=;
        b=Qcr3w5OjDryRa9Y+h3l2xDRzIdVuTv/9QYjblloV+6zHhbO3sa5WelLI6PqI/VBQaT
         TAVxs5EkoeZblpOYpw4BCOz5UqjY79BNDxZu3AZliQridji8anJxe7cw9QmdfTGlrDxa
         sOhJzkyqi+EaCjmTV9MJFtihlF/29yV8fJ/t8OHt1XVSuW9gBAb1G8M8Sce3av96bh3T
         jpAIMtLVA0QKvLbmHeLqKm3q3NfZ4JgBweGHVCTJt/vOzkA8Y7GnBqXcJsqr9J//OLAt
         7TOwSTsmrIv64uMMHs3Q+vdPSFc9+PthDltU1YIm4+MYdOBDSmtamW8/tfU5xncqSxMp
         CiEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hnk9rP04;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id c78si29891qkb.7.2019.10.16.18.39.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 18:39:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hnk9rP04;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id q5so509103pfg.13
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 18:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KKpuwRZh9rwoNuf5edzmPYbxw2vuc42zAU8dxcRUhWg=;
        b=Hnk9rP0446tACI/i9uuhqx2FsFl+vj71JCqvUIIfg+Ifg1x2bnAb4fFwTEeQuuXvMa
         zpE+vq2I109dm9IT+Np9wN3MAmpY3GODewd6jGiTAZN2T+OnvKwqulnmQeRvaN3KxmsZ
         TXULJcUAb1PtrEcEtWlwnCH6fFGlq/hDziW1vjfPGbmGiU1lOkqVN2wr1tJaLIERHBl2
         Fn+rrQLn0JXjkGdiJDyU/B7HamFa3H3hG5ah4+JntpX4FLa++EbTXoej2bl7TR0+1aee
         Sy/TSk2lZ8O2xD184aXMRkGvGZi3xHDlEpKTNPtIyKbp3PfsWlhS4T53FPpEEWXI+eMt
         ukGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KKpuwRZh9rwoNuf5edzmPYbxw2vuc42zAU8dxcRUhWg=;
        b=UfAqog0i8zGWcn+PJfIE7t/03J4SGzgOhl4cr/9f427Q9fR3bvKJCdIQk3USTsDXbv
         QBGVime6lpl+BRXyJkClGPAJhAFpWXNJwh7QKFjDpxhnzA9korEVMUs++9rjVKLAFnOq
         qkqNJ7/SS+LYR8uqm/VUzAR+lPS2tAi73G0xl2oEJuF8vhi+wwrpIoATjJV7XYcjc3+j
         wCV4WHU6NMKpXKmlUmIIvZrJOcPzdAH/on+aHaLljR0i6PBvAjPcSZNThVIAK8FtBKAv
         nCVRH/P6q/+wZ2KrI4v1TWbC79Q5BmJhMMrWgT+/xvoPQ5ZOoWQhom6SHZpaBBu9vbr0
         mldw==
X-Gm-Message-State: APjAAAXJHjE2J9fhdQQ0j4MNyVocKZvAK4Vbmox+r2CsyJ2cmbxsgqqk
	iNUDj33M0KipQteI1AOetGmCx8oYiNo=
X-Received: by 2002:a63:2644:: with SMTP id m65mr1246264pgm.170.1571276339471;
        Wed, 16 Oct 2019 18:38:59 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id t11sm410063pjy.10.2019.10.16.18.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 18:38:58 -0700 (PDT)
Date: Wed, 16 Oct 2019 18:38:58 -0700
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/4] staging: sm750fb: Edit CamelCase in ddk750_dvi.c
Message-ID: <20191017013858.GA9679@jamal-XPS-13-9343>
References: <cover.1571260724.git.jamal.k.shareef@gmail.com>
 <0ccb65c7e5844541bb96a791c39caabb05a49afb.1571260724.git.jamal.k.shareef@gmail.com>
 <20191016213554.GA906859@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191016213554.GA906859@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Oct 16, 2019 at 02:35:54PM -0700, Greg KH wrote:
> On Wed, Oct 16, 2019 at 02:20:45PM -0700, Jamal Shareef wrote:
> > Edit CamelCase naming convention in ddk750_dvi.c file.
> > Issue found by checkpatch.
> > 
> > Edit depends on related files which are also being patched
> > as part of the patchset.
> > 
> > Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> > ---
> >  drivers/staging/sm750fb/ddk750_dvi.c | 68 ++++++++++++++--------------
> >  1 file changed, 34 insertions(+), 34 deletions(-)
> > 
> > diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
> > index cd564ea40779..6fa77d4effef 100644
> > --- a/drivers/staging/sm750fb/ddk750_dvi.c
> > +++ b/drivers/staging/sm750fb/ddk750_dvi.c
> > @@ -11,50 +11,50 @@
> >   * function API. Please set the function pointer to NULL whenever the function
> >   * is not supported.
> >   */
> > -static struct dvi_ctrl_device g_dcftSupportedDviController[] = {
> > +static struct dvi_ctrl_device g_dcft_supported_dvi_controller[] = {
> >  #ifdef DVI_CTRL_SII164
> >  	{
> > -		.pfnInit = sii164InitChip,
> > -		.pfnGetVendorId = sii164GetVendorID,
> > -		.pfnGetDeviceId = sii164GetDeviceID,
> > +	    .pfn_init = sii164_init_chip,
> > +	    .pfn_get_vendor_id = sii164_get_vendor_id,
> > +	    .pfn_get_device_id = sii164_get_device_id,
> >  #ifdef SII164_FULL_FUNCTIONS
> > -		.pfnResetChip = sii164ResetChip,
> > -		.pfnGetChipString = sii164GetChipString,
> > -		.pfnSetPower = sii164SetPower,
> > -		.pfnEnableHotPlugDetection = sii164EnableHotPlugDetection,
> > -		.pfnIsConnected = sii164IsConnected,
> > -		.pfnCheckInterrupt = sii164CheckInterrupt,
> > -		.pfnClearInterrupt = sii164ClearInterrupt,
> > +	    .pfn_reset_chip = sii164_reset_chip,
> > +	    .pfn_get_chip_string = sii164_get_chip_string,
> > +	    .pfn_set_power = sii164_set_power,
> > +	    .pfn_enable_hot_plug_detection = sii164_enable_hot_plug_detection,
> > +	    .pfn_is_connected = sii164_is_connected,
> > +	    .pfn_check_interrupt = sii164_check_interrupt,
> > +	    .pfn_clear_interrupt = sii164_clear_interrupt,
> >  #endif
> >  	},
> >  #endif
> >  };
> >  
> > -int dviInit(unsigned char edge_select,
> > -	    unsigned char bus_select,
> > -	    unsigned char dual_edge_clk_select,
> > -	    unsigned char hsync_enable,
> > -	    unsigned char vsync_enable,
> > -	    unsigned char deskew_enable,
> > -	    unsigned char deskew_setting,
> > -	    unsigned char continuous_sync_enable,
> > -	    unsigned char pll_filter_enable,
> > -	    unsigned char pll_filter_value)
> > +int dvi_init(unsigned char edge_select,
> 
> You didn't also change the .h file at the same time, how did this build?
> 
> You can't break the build at any point in time, every patch must work
> properly.
> 
> Ah, no one even calls this function, maybe that's why this works?  If
> so, just delete the function entirely!
> 
> thanks,
> 
> greg k-h

Resending as one patch named
[RESEND PATCH] staging: sm750sb: Edit CamelCase in dvi/sii164 files

These built with no errors because I had modified all files at the time
but made the patchset instead of one patch.

Jamal

