X-GM-THRID: 6956170409670606848
X-Received: by 2002:adf:ff89:: with SMTP id j9mr31368629wrr.416.1619684758184;
        Thu, 29 Apr 2021 01:25:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:24d4:: with SMTP id k203ls4050396wmk.0.canary-gmail;
 Thu, 29 Apr 2021 01:25:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyL7LHHoqLnNYHlkWohcOCMP9j4w1yhQ+DTVb/40F1KddOOOdZccqwWl4Y3sc2i8JvleqYe
X-Received: by 2002:a7b:cbc7:: with SMTP id n7mr34544633wmi.56.1619684756781;
        Thu, 29 Apr 2021 01:25:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619684756; cv=none;
        d=google.com; s=arc-20160816;
        b=sXUF8K4NZ7f5h7RS0RTKKPuDmmMm5b0sYl0zkPcZr1ij5oqeWDtxVIGWtshmzmUTWd
         R1/SgsOmIH7hT2sgWmjbPwp6AlO6tqpMAJHe7HA5m+80qTI9z0QtiOZ6M+mgVHGz9ODC
         JJjz5Q+LvQfzdMNVQA/XOJSIYA1R/sLtnSMsrk9qYjrrKQlizlV5JK7cLpKV5j0A6JN4
         2NDxBQU6guW2Yyk/QaSE7W9XCiHuHUuil6TkNHQgtvFZNLAby3DYUqFRXvpx3/LsSSYp
         IoawPrd6M9X5OiLLWJISzBfO3/tPtyBGLSZqHpxFSQuF+fehKyrG1znbQhWFxOuIrIfD
         WcfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iUQGD4uPM+aFQ386tGCMJIHR4xuNnFf3+z0KnOaljgs=;
        b=j0UsAGwf9Jr980tP2rteo+qSZfrboGYWFYr8FXuNVL+He+k5RCP9E+9ZmdInjfxnRL
         7U3sFxuRvXYofl21M0urFLR7cWBG9WT/6xX0bj86uDJHDv5qPBV5x03U6kozYRh7La9z
         XujNiiVKtvi9FDpGBu8gIHI3Q2wftbNZvqdb4cJmkSww62LdxWrugGJo0Os2ofX63W9V
         P0okDLhp90OSZd0fAxWYoSZAXBhnCvUTfnWch4M4yKfGbmJw+dnD9Mkk7dhymKRKKfwV
         Wamc0JQu8o8SERPwV4F+vHnuKWsoDAdIJz7w3eHE0cZZaY2wpwwc2t1MMMtZVirhBYY6
         DVCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eOGCrfOL;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fabioaiuto83@gmail.com>
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com. [2a00:1450:4864:20::533])
        by gmr-mx.google.com with ESMTPS id s141si718321wme.2.2021.04.29.01.25.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 01:25:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) client-ip=2a00:1450:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eOGCrfOL;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x533.google.com with SMTP id i24so17926789edy.8
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Apr 2021 01:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iUQGD4uPM+aFQ386tGCMJIHR4xuNnFf3+z0KnOaljgs=;
        b=eOGCrfOLKtNCyZMT+1FMugK3ZEPyMyrDKQZq6BV4Od25GAaVmaUzZiI5T21VWL/osk
         FMTHzTBcxstK3CWm5dX7KzbwUEt9YMNrF5Z6fpiK3fkfPuy7V0egZI7FL1705h096XTI
         mub84LddnQzU3WOR6PmTi7t/z56Y/KR1GRdsLrPqVHFCZbt3CgItqJeu8VP7pOiIz/mc
         d/DAiq8iEAADPUTL3geFkutFX9JNYRpzSBe7gLDrKCcTc6eTyKXo/dKr/f+B24TV05+E
         pNEnqQETWONl5ewlgH30pykSn68ahKILS8g9FjaPDY1jT067oValeYERVp53ng6GHRQv
         LxEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=iUQGD4uPM+aFQ386tGCMJIHR4xuNnFf3+z0KnOaljgs=;
        b=DUqlZex8HBOlZ1wGYQs47x+sHGhu9OgWOo14Dhnrl4kbAAAAG1xS+t//p3Tx93ASq8
         KZkwmxtxfi71vA+wrGZk/st3yH7VXJsRuKG7eeQdFkyw31otiakdi5FuGKHXIVMmTjAb
         nKXmfZpX/jzSvn20LU61pI21mdRfAdO6C66JMo+4F9brPcO3D4WVf2wtqVkIoSqwSnYy
         O0YtLvgGHfgJTXACaPA+9faCUiNPGnv8Jp0PAmth+drqE3OUhYp3UCiaSWZ4e+PdqQRo
         YHNXaLC0r/sHs5o3oES1PSzCav7n4HRAoT1toNMH84pnIzejuYF+u08js2Eba/BHHQE0
         GGyw==
X-Gm-Message-State: AOAM5326mpwuJvcIQg11UdatSvqF2swZZFVGZrHitNSVgPmdYIwOk38W
	G3t4RXQwfFgLDkzWLmQ0oO8=
X-Received: by 2002:a05:6402:34cd:: with SMTP id w13mr16696674edc.73.1619684756571;
        Thu, 29 Apr 2021 01:25:56 -0700 (PDT)
Return-Path: <fabioaiuto83@gmail.com>
Received: from agape.jhs ([5.171.81.14])
        by smtp.gmail.com with ESMTPSA id dj7sm1758976edb.42.2021.04.29.01.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 01:25:56 -0700 (PDT)
Date: Thu, 29 Apr 2021 10:25:53 +0200
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8723bs: hal: Remove
 set but unused variables
Message-ID: <20210429082552.GC1409@agape.jhs>
References: <20210428113346.28305-1-fmdefrancesco@gmail.com>
 <20210428113346.28305-2-fmdefrancesco@gmail.com>
 <20210429072619.GB1409@agape.jhs>
 <8266064.IJzC9MfcRG@linux.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8266064.IJzC9MfcRG@linux.local>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Apr 29, 2021 at 09:44:47AM +0200, Fabio M. De Francesco wrote:
> On Thursday, April 29, 2021 9:26:20 AM CEST Fabio Aiuto wrote:
> > Hi Fabio,
> > 
> > On Wed, Apr 28, 2021 at 01:33:45PM +0200, Fabio M. De Francesco wrote:
> > > Removed four set but unused variables. Issue detected by gcc.
> > > 
> > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > ---
> > > 
> > >  drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 5 -----
> > >  1 file changed, 5 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > > b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c index 
> 082448557b53..96cb4426a0f4
> > > 100644
> > > --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > > +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > > @@ -3900,14 +3900,11 @@ u8 GetHalDefVar8723B(struct adapter *padapter, 
> enum
> > > hal_def_variable variable, v> 
> > >  			u32 cmd;
> > >  			u32 ra_info1, ra_info2;
> > >  			u32 rate_mask1, rate_mask2;
> > > 
> > > -			u8 curr_tx_rate, curr_tx_sgi, hight_rate, 
> lowest_rate;
> > > 
> > >  			cmd = 0x40000100 | mac_id;
> > >  			rtw_write32(padapter, 
> REG_HMEBOX_DBG_2_8723B, cmd);
> > >  			msleep(10);
> > >  			ra_info1 = rtw_read32(padapter, 0x2F0);
> > > 
> > > -			curr_tx_rate = ra_info1&0x7F;
> > > -			curr_tx_sgi = (ra_info1>>7)&0x01;
> > > 
> > >  			cmd = 0x40000400 | mac_id;
> > >  			rtw_write32(padapter, 
> REG_HMEBOX_DBG_2_8723B, cmd);
> > > 
> > > @@ -3916,8 +3913,6 @@ u8 GetHalDefVar8723B(struct adapter *padapter, enum
> > > hal_def_variable variable, v> 
> > >  			ra_info2 = rtw_read32(padapter, 0x2F4);
> > >  			rate_mask1 = rtw_read32(padapter, 0x2F8);
> > >  			rate_mask2 = rtw_read32(padapter, 0x2FC);
> > > 
> > > -			hight_rate = ra_info2&0xFF;
> > > -			lowest_rate = (ra_info2>>8)  & 0xFF;
> > > 
> > >  		}
> > >  		break;
> > 
> > rate_mask{1,2} and ra_info{1,2} seems to be unused as well.
> > 
> > thank you,
> > 
> > fabio
> >
> Hello Fabio,
> 
> I'm not sure about it: rtw_read32 calls a pointer to a function. I'm don't 
> know drivers programming, however that function looks like an implementation 
> of a read() system call. So I wouldn't be so sure to remove those calls. 
> 
> Could calling a (*read) method have side effects on subsequent read()? I mean: 
> could it update some internal data structure? If not I can remove the 
> variables you mentioned above and the calls to read32.
> 
> I'm looking forward to read your reply.
> 
> Thanks,
> 
> Fabio
> 
> 
> 

hi Fabio,

rtw_read32 is a macro wrapping _rtw_read32() defined as follows (in core/rtw_io.c):

u32 _rtw_read32(struct adapter *adapter, u32 addr)
{
        u32 r_val;
        /* struct       io_queue        *pio_queue = (struct io_queue *)adapter->pio_queue; */
        struct io_priv *pio_priv = &adapter->iopriv;
        struct  intf_hdl                *pintfhdl = &(pio_priv->intf);
        u32 (*_read32)(struct intf_hdl *pintfhdl, u32 addr);

        _read32 = pintfhdl->io_ops._read32;

        r_val = _read32(pintfhdl, addr);
        return rtw_le32_to_cpu(r_val);

}

the actual read seems to be performed by the handler contained in

	pintfhdl->io_ops._read32;

so:

$ grep -r '\b_read32' drivers/staging/rtl8723bs/

drivers/staging/rtl8723bs/hal/sdio_ops.c:	ops->_read32 = &sdio_read32;

this is the place where _read32 is stored with sdio_read32 reference... 

drivers/staging/rtl8723bs/core/rtw_io.c:	u32 (*_read32)(struct intf_hdl *pintfhdl, u32 addr);
drivers/staging/rtl8723bs/core/rtw_io.c:	_read32 = pintfhdl->io_ops._read32;
...

if you check it in hal/sdio_ops.c, nothing is written, just reads are
performed (and it's not odd, for a read function isn't supposed to write
something under the hood ;)).

I think those variables could be easily removed as W=1 gcc suggests.

thank you,

fabio

