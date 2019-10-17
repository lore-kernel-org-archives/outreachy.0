X-GM-THRID: 6748514042587906048
X-Received: by 2002:a05:6102:104d:: with SMTP id h13mr3633126vsq.165.1571350258575;
        Thu, 17 Oct 2019 15:10:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:1892:: with SMTP id 140ls167200vky.12.gmail; Thu, 17 Oct
 2019 15:10:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyaZVxRciR3HZZWROR13CY/0gWqRvxVJIr17nufN1ORSaDK0rLo9kvpj/32Lda58VfF9EvI
X-Received: by 2002:ac5:c76e:: with SMTP id c14mr3494359vkn.14.1571350257532;
        Thu, 17 Oct 2019 15:10:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571350257; cv=none;
        d=google.com; s=arc-20160816;
        b=0zO4qtdjApNz+CyA0Fp8Q2K1AjQeEALsTnDYy7KOD7MApB7zQMiOT5s6TCgO6Jw5kS
         SDfkx1r4Nbu+24RN+lKBLjInEN8qRx5f1kjA1l7eH+bXcLNLcJZhj6+cZy+I7K84jTkq
         PiKFYPH2tlRwayLE41KCznoVySu7mO6rR0pc3LEjr5K5nu3oZXGRvjRfUjvG0VbRru8H
         mZwq38BrrAbTHXfRTK65uKtzX4dgwsBGmQjisfVB07c9+G1z746zMlCwEovsxm5k/mn4
         qujhWv1zKSy5ocPageIYY7/cLDHytcxkpDyInlNdKr6DY0eqPF3dDQr9oxyJO5WcrKk/
         IGvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=O208gEI5sBfME0RN7yt43yjyn5YPGwvCRWWECsvv1Ro=;
        b=jRPqEiDyB1WtDSMLTcC+t6+Ingni0uXpnHNgxvjJQnNbOod6/S8kq0Yc39P6Fh3iGV
         3eIEVG0CoyCiw+yoK2UwQBIdgpFn7F0GcjKk9m/bXbN+T6LkMosAUjRmO93eoWzbu+YH
         Q7KbjBeZT2SmEO9UXUtS0pR7TFegssharAvB6p4A+pclrsc5FalxyHWzizQmgqFOrjrE
         xXqvIjnkrA9mf9+Zb4Qlk1I8nwx2My9PPejoVBUg44jvRl+wg0dw7KbDqDumGudjVYSl
         yr7fe428rW8ZGrrkvuBonH2//ClkcY2yd9gMb2u76Fc3ACwPflbSQ9rVIj/EvIplVIvS
         pWwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f7vHRWFq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r72si264539vke.5.2019.10.17.15.10.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Oct 2019 15:10:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f7vHRWFq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.132.0.109])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 53FB521D80;
	Thu, 17 Oct 2019 22:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1571350256;
	bh=LmIP3zX5GxRPn70tR9rRLmTyd56ht+YlVxzx2L90ZGM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f7vHRWFqBdcYwOFFRYHjpEGji2LkbOBZfCaXJxlKq4xiZve2MYJJY+qNKvVf8X6nP
	 UDdn5WZtlQgrosF5bTWSPDm/MAybAgcLb2Zq1SuC9QzXByyBVtpKbVkLWDtHa+FMjk
	 Ln2lTbnlZhv1+2Un/SKzPYPeZdb0jqmpGvCcMCnY=
Date: Thu, 17 Oct 2019 15:10:55 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/4] staging: sm750fb: Edit CamelCase in ddk750_dvi.c
Message-ID: <20191017221055.GA1143990@kroah.com>
References: <cover.1571260724.git.jamal.k.shareef@gmail.com>
 <0ccb65c7e5844541bb96a791c39caabb05a49afb.1571260724.git.jamal.k.shareef@gmail.com>
 <20191016213554.GA906859@kroah.com>
 <20191017013858.GA9679@jamal-XPS-13-9343>
 <20191017125326.GB1029242@kroah.com>
 <20191017215252.GA31962@jamal-XPS-13-9343>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191017215252.GA31962@jamal-XPS-13-9343>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Thu, Oct 17, 2019 at 02:52:52PM -0700, Jamal Shareef wrote:
> On Thu, Oct 17, 2019 at 05:53:26AM -0700, Greg KH wrote:
> > On Wed, Oct 16, 2019 at 06:38:58PM -0700, Jamal Shareef wrote:
> > > On Wed, Oct 16, 2019 at 02:35:54PM -0700, Greg KH wrote:
> > > > On Wed, Oct 16, 2019 at 02:20:45PM -0700, Jamal Shareef wrote:
> > > > > Edit CamelCase naming convention in ddk750_dvi.c file.
> > > > > Issue found by checkpatch.
> > > > > 
> > > > > Edit depends on related files which are also being patched
> > > > > as part of the patchset.
> > > > > 
> > > > > Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> > > > > ---
> > > > >  drivers/staging/sm750fb/ddk750_dvi.c | 68 ++++++++++++++--------------
> > > > >  1 file changed, 34 insertions(+), 34 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
> > > > > index cd564ea40779..6fa77d4effef 100644
> > > > > --- a/drivers/staging/sm750fb/ddk750_dvi.c
> > > > > +++ b/drivers/staging/sm750fb/ddk750_dvi.c
> > > > > @@ -11,50 +11,50 @@
> > > > >   * function API. Please set the function pointer to NULL whenever the function
> > > > >   * is not supported.
> > > > >   */
> > > > > -static struct dvi_ctrl_device g_dcftSupportedDviController[] = {
> > > > > +static struct dvi_ctrl_device g_dcft_supported_dvi_controller[] = {
> > > > >  #ifdef DVI_CTRL_SII164
> > > > >  	{
> > > > > -		.pfnInit = sii164InitChip,
> > > > > -		.pfnGetVendorId = sii164GetVendorID,
> > > > > -		.pfnGetDeviceId = sii164GetDeviceID,
> > > > > +	    .pfn_init = sii164_init_chip,
> > > > > +	    .pfn_get_vendor_id = sii164_get_vendor_id,
> > > > > +	    .pfn_get_device_id = sii164_get_device_id,
> > > > >  #ifdef SII164_FULL_FUNCTIONS
> > > > > -		.pfnResetChip = sii164ResetChip,
> > > > > -		.pfnGetChipString = sii164GetChipString,
> > > > > -		.pfnSetPower = sii164SetPower,
> > > > > -		.pfnEnableHotPlugDetection = sii164EnableHotPlugDetection,
> > > > > -		.pfnIsConnected = sii164IsConnected,
> > > > > -		.pfnCheckInterrupt = sii164CheckInterrupt,
> > > > > -		.pfnClearInterrupt = sii164ClearInterrupt,
> > > > > +	    .pfn_reset_chip = sii164_reset_chip,
> > > > > +	    .pfn_get_chip_string = sii164_get_chip_string,
> > > > > +	    .pfn_set_power = sii164_set_power,
> > > > > +	    .pfn_enable_hot_plug_detection = sii164_enable_hot_plug_detection,
> > > > > +	    .pfn_is_connected = sii164_is_connected,
> > > > > +	    .pfn_check_interrupt = sii164_check_interrupt,
> > > > > +	    .pfn_clear_interrupt = sii164_clear_interrupt,
> > > > >  #endif
> > > > >  	},
> > > > >  #endif
> > > > >  };
> > > > >  
> > > > > -int dviInit(unsigned char edge_select,
> > > > > -	    unsigned char bus_select,
> > > > > -	    unsigned char dual_edge_clk_select,
> > > > > -	    unsigned char hsync_enable,
> > > > > -	    unsigned char vsync_enable,
> > > > > -	    unsigned char deskew_enable,
> > > > > -	    unsigned char deskew_setting,
> > > > > -	    unsigned char continuous_sync_enable,
> > > > > -	    unsigned char pll_filter_enable,
> > > > > -	    unsigned char pll_filter_value)
> > > > > +int dvi_init(unsigned char edge_select,
> > > > 
> > > > You didn't also change the .h file at the same time, how did this build?
> > > > 
> > > > You can't break the build at any point in time, every patch must work
> > > > properly.
> > > > 
> > > > Ah, no one even calls this function, maybe that's why this works?  If
> > > > so, just delete the function entirely!
> > > > 
> > > > thanks,
> > > > 
> > > > greg k-h
> > > 
> > > Resending as one patch named
> > > [RESEND PATCH] staging: sm750sb: Edit CamelCase in dvi/sii164 files
> > 
> > That patch does not delete this function :(
> 
> Just to be clear, there are no uses of the original function dviInt 
> so we are removing it. Also removing the global variable 
> dcft_supported_dvi_controller[] because it was only used in dviInt.

Yes please!

thanks,

greg k-h

