X-GM-THRID: 6956170409670606848
X-Received: by 2002:a67:684f:: with SMTP id d76mr10516764vsc.23.1619695285861;
        Thu, 29 Apr 2021 04:21:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:7550:: with SMTP id k16ls277335uaq.11.gmail; Thu, 29 Apr
 2021 04:21:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw7eVTHezkyd/dfBnW8yOZgXLg19YTjSlm8xBchWmwdVmQLTU6uxBPvORbQKKDMTgdLUKPJ
X-Received: by 2002:a9f:37c8:: with SMTP id q66mr29357444uaq.129.1619695284865;
        Thu, 29 Apr 2021 04:21:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619695284; cv=none;
        d=google.com; s=arc-20160816;
        b=Nkrwm3SxcU62LuT897N0VAvExr1w538hglBy0k5WdV2+5JZVzc2ZdpkyqcGxrcPYOv
         +p6oD7ZZ3kLTXcHjzYkwnjRsF8TTPaGpjbZxSunP9docZzXukpeOV/wSIqQH/cTywPL+
         h8wNBVAc4pG5dzG+aFYPg4/yYh4o3yVBw4g8Y5M0HbfvWx1uYFlY4m8YI2s2CHoxXd0A
         0ENMopcQhVSLuNp6mL6FYm0nyp1Nn/9/NvKgLaEIne4sB1M/5ocR7FOw2aLL89FzQXPA
         gqSGRrRGgE0q2hprhD3cfzUbxYXNOvkqabgt9HQCAKnjUxCss1SsQ5WUEvH89M95/mEK
         d9Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=co/MZ5cnHNHhqXEQStxKE9FZgHF7XDAWb3H15r+uTow=;
        b=SSXaGxPWs88lPy6C7QwI8K2EaXqAIQu9eX/+mNpG/m3lh7gwuMnXLHFK86D0UqREMU
         z4s36FnCS1dcZD4o3gD6Jq+8CDfVJ/Fy3vIpgJjbIykY/ur7o6L8RiuY5L97M+Ppbdji
         sn23u5BAV5Rbea5SZJerEmWSKTMLcdAVGcUWJuqi3b9UgOlYlBADWKYeKYe21+ZN5DrO
         4/Ua7QTgdPSRufqJX2f1pV3etFhS6oum+5kqCT11gxvD8RTLxLHZD0aLUBe3xTZlJx4Q
         oF93xSuqjBolsLAFXPJNXDiGqtePOETism1MM3cNaDnJE/OQaeIEZRKPEn/QwWjcDaNg
         O35g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ydnohWks;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f9si257392vkm.2.2021.04.29.04.21.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Apr 2021 04:21:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ydnohWks;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 050CF613D9;
	Thu, 29 Apr 2021 11:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1619695283;
	bh=jKlpm3G7PbB50Ez26v5YugL6swUDAvRxbWGy6pq6Nms=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ydnohWks5nj3hC2Qt+4gPELzNLDZCjraOeIIVrrLsuAKm+3asmdsCqmVEacIyVTA5
	 n/5PPvo9ej7R2lvw6jfNZMOuQRlnGU8dx1RcZVXgXY8tArErw+LYtDiyBKqnUdXYNC
	 7mNiojGy3pg8emJ3hz2aMGKOqKtQ//omq7QlBvvM=
Date: Thu, 29 Apr 2021 13:21:21 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Fabio Aiuto <fabioaiuto83@gmail.com>, outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8723bs: hal: Remove
 set but unused variables
Message-ID: <YIqWsbTO8Zv1qFmT@kroah.com>
References: <20210428113346.28305-1-fmdefrancesco@gmail.com>
 <20210429082552.GC1409@agape.jhs>
 <YIqECQk/1Zb4JRjb@kroah.com>
 <4187627.69DiqvND7d@linux.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4187627.69DiqvND7d@linux.local>

On Thu, Apr 29, 2021 at 12:15:40PM +0200, Fabio M. De Francesco wrote:
> On Thursday, April 29, 2021 12:01:45 PM CEST Greg Kroah-Hartman wrote:
> > On Thu, Apr 29, 2021 at 10:25:53AM +0200, Fabio Aiuto wrote:
> > > On Thu, Apr 29, 2021 at 09:44:47AM +0200, Fabio M. De Francesco wrote:
> > > > On Thursday, April 29, 2021 9:26:20 AM CEST Fabio Aiuto wrote:
> > > > > Hi Fabio,
> > > > > 
> > > > > On Wed, Apr 28, 2021 at 01:33:45PM +0200, Fabio M. De Francesco wrote:
> > > > > > Removed four set but unused variables. Issue detected by gcc.
> > > > > > 
> > > > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > > > ---
> > > > > > 
> > > > > >  drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 5 -----
> > > > > >  1 file changed, 5 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > > > > > b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c index
> > > > 
> > > > 082448557b53..96cb4426a0f4
> > > > 
> > > > > > 100644
> > > > > > --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > > > > > +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > > > > > @@ -3900,14 +3900,11 @@ u8 GetHalDefVar8723B(struct adapter 
> *padapter,
> > > > 
> > > > enum
> > > > 
> > > > > > hal_def_variable variable, v>
> > > > > > 
> > > > > >  			u32 cmd;
> > > > > >  			u32 ra_info1, ra_info2;
> > > > > >  			u32 rate_mask1, rate_mask2;
> > > > > > 
> > > > > > -			u8 curr_tx_rate, curr_tx_sgi, hight_rate,
> > > > 
> > > > lowest_rate;
> > > > 
> > > > > >  			cmd = 0x40000100 | mac_id;
> > > > > >  			rtw_write32(padapter,
> > > > 
> > > > REG_HMEBOX_DBG_2_8723B, cmd);
> > > > 
> > > > > >  			msleep(10);
> > > > > >  			ra_info1 = rtw_read32(padapter, 0x2F0);
> > > > > > 
> > > > > > -			curr_tx_rate = ra_info1&0x7F;
> > > > > > -			curr_tx_sgi = (ra_info1>>7)&0x01;
> > > > > > 
> > > > > >  			cmd = 0x40000400 | mac_id;
> > > > > >  			rtw_write32(padapter,
> > > > 
> > > > REG_HMEBOX_DBG_2_8723B, cmd);
> > > > 
> > > > > > @@ -3916,8 +3913,6 @@ u8 GetHalDefVar8723B(struct adapter *padapter, 
> enum
> > > > > > hal_def_variable variable, v>
> > > > > > 
> > > > > >  			ra_info2 = rtw_read32(padapter, 0x2F4);
> > > > > >  			rate_mask1 = rtw_read32(padapter, 0x2F8);
> > > > > >  			rate_mask2 = rtw_read32(padapter, 0x2FC);
> > > > > > 
> > > > > > -			hight_rate = ra_info2&0xFF;
> > > > > > -			lowest_rate = (ra_info2>>8)  & 0xFF;
> > > > > > 
> > > > > >  		}
> > > > > >  		break;
> > > > > 
> > > > > rate_mask{1,2} and ra_info{1,2} seems to be unused as well.
> > > > > 
> > > > > thank you,
> > > > > 
> > > > > fabio
> > > > 
> > > > Hello Fabio,
> > > > 
> > > > I'm not sure about it: rtw_read32 calls a pointer to a function. I'm 
> don't
> > > > know drivers programming, however that function looks like an 
> implementation
> > > > of a read() system call. So I wouldn't be so sure to remove those calls.
> > > > 
> > > > Could calling a (*read) method have side effects on subsequent read()? I 
> mean:
> > > > could it update some internal data structure? If not I can remove the
> > > > variables you mentioned above and the calls to read32.
> > > > 
> > > > I'm looking forward to read your reply.
> > > > 
> > > > Thanks,
> > > > 
> > > > Fabio
> > > 
> > > hi Fabio,
> > > 
> > > rtw_read32 is a macro wrapping _rtw_read32() defined as follows (in core/
> rtw_io.c):
> > > 
> > > u32 _rtw_read32(struct adapter *adapter, u32 addr)
> > > {
> > > 
> > >         u32 r_val;
> > >         /* struct       io_queue        *pio_queue = (struct io_queue
> > >         *)adapter->pio_queue; */
> > >         struct io_priv *pio_priv = &adapter->iopriv;
> > >         struct  intf_hdl                *pintfhdl = &(pio_priv->intf);
> > >         u32 (*_read32)(struct intf_hdl *pintfhdl, u32 addr);
> > >         
> > >         _read32 = pintfhdl->io_ops._read32;
> > >         
> > >         r_val = _read32(pintfhdl, addr);
> > >         return rtw_le32_to_cpu(r_val);
> > > 
> > > }
> > > 
> > > the actual read seems to be performed by the handler contained in
> > > 
> > > 	pintfhdl->io_ops._read32;
> > > 
> > > so:
> > > 
> > > $ grep -r '\b_read32' drivers/staging/rtl8723bs/
> > > 
> > > drivers/staging/rtl8723bs/hal/sdio_ops.c:	ops->_read32 = 
> &sdio_read32;
> > > 
> > > this is the place where _read32 is stored with sdio_read32 reference...
> > > 
> > > drivers/staging/rtl8723bs/core/rtw_io.c:	u32 (*_read32)(struct 
> intf_hdl *pintfhdl, u32
> > > addr); drivers/staging/rtl8723bs/core/rtw_io.c:	_read32 = pintfhdl-
> >io_ops._read32;
> > > ...
> > > 
> > > if you check it in hal/sdio_ops.c, nothing is written, just reads are
> > > performed (and it's not odd, for a read function isn't supposed to write
> > > something under the hood ;)).
> > 
> > Yes, but many types of hardware _REQUIRE_ reads to do something.  So
> > "read that does nothing" is a requirement for some operations.
> > 
> > As an example, a write is only guaranteed to have been finished if you
> > do a read of the same location back from it on some hardware busses.
> > The bus can reorder things, but a write/read of the same location can
> > not be reordered.
> > 
> > Sometimes you have to do reads multiple times to get things to "stick".
> > 
> > Other times reading from a location changes a state in the hardware
> > (horrid but HW designers aren't the brightest at times...)
> > 
> > So you can NOT just remove reads without knowing that the hardware does
> > not require this.  This is an issue where GCC "warnings" mean nothing as
> > gcc does not actually know what hardware does, or does not, do for many
> > things.
> > 
> > thanks,
> > 
> > greg k-h
> >
> Just to be sure... does it mean that v1 can be applied as-is?

I will review it when I get the time...

thanks,

greg k-h

