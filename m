X-GM-THRID: 6956170409670606848
X-Received: by 2002:a2e:8449:: with SMTP id u9mr21768664ljh.370.1619692693743;
        Thu, 29 Apr 2021 03:38:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls1126186lff.3.gmail; Thu, 29
 Apr 2021 03:38:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzVZiunbz3MLS2bHGT0aValDt77xmT9NoHeH49WK9v0F4V6P5igHb7HFFhB7L1B3Uhu1Toj
X-Received: by 2002:ac2:53b4:: with SMTP id j20mr25046597lfh.390.1619692691985;
        Thu, 29 Apr 2021 03:38:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619692691; cv=none;
        d=google.com; s=arc-20160816;
        b=GgwX+0K5L8u1xi/8E0m3JnjvoRHqBDeNTYmMsF7n75GuXE2Mz04G8E5yLyiq/7/bt2
         LmzLWgd1U2UMGaezDlgl8tAjVsPXTWXKw0YDrw0ojsL4xhC4+rOL1YZ/KXONmi4OPerb
         nZZx1aUHTuNkSHrdtu58LajVAdYEJHQRzwyKlbQDmimgVqC1anXkIutEB25HSY/umelH
         FlUV+wnXfnBtZrzN5td15BpuqUcC9O/vGKA0t6Ep0y6TivL7hhh/rDTMEcWWf0NacZKB
         uybVwxNIeQCf/FQ9tPKkY5Kcn2jDIGsj+g0aTwwYdXmQBTy10gVePZtlb9aqQDGZmiCP
         By0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xBV6M/QLKgL1OTP6r+L+BbrDYnsW4IUCG6lLR9TSS8w=;
        b=bW+MZl/Km5fgcxmwuPoAEvNYlQWYd8RdwzQrOann6p5jUrrPzDoB13PyV6pcKldRCH
         UYozivv835Jqu3eVdlw1pAwcXkqfGDkPabMgOWBv55IOHKJXnXc8sctrf2lQZoVfKTpF
         fBleEygK73yaVrn6yIehqh5V0VaZIu/UMD7L/zZ6/ptNQFCPr/VIFXA8rraKYxUdFJrO
         GZaPUKdWIRoHMFbUj5zwZNOj49WOZSO+KXrTNbiDu8NO9nnH0qohoRI3+iNQWuw5n8e9
         rqtCX6ePavRrlv1H+vhCzhDVpK4xl8OEKZxCu1APq6HmjFkjL6Nq6hrpiL9L++h7Vn5X
         tjcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="sKr/Kn7w";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com. [2a00:1450:4864:20::633])
        by gmr-mx.google.com with ESMTPS id p18si181199lji.8.2021.04.29.03.38.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 03:38:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) client-ip=2a00:1450:4864:20::633;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="sKr/Kn7w";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x633.google.com with SMTP id w3so99168547ejc.4
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Apr 2021 03:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xBV6M/QLKgL1OTP6r+L+BbrDYnsW4IUCG6lLR9TSS8w=;
        b=sKr/Kn7wUKTLtfehYj5i1e+mIEGUL3B802GQEYYq34jQWkB+HJVksRpCbJ5hMoHI4b
         +jslrzMdQqypeweXRvNbjWCzY31Xo9pK9Awoit1Dbp1ZU++UH9e54etWutZVAeWnRHdL
         wZmtPEie5+//gLPg5mmMSLYLTJMws/WW+Q7C4YpVCbclF3UGYhxBbS4EGTB5S9m+t2at
         jzIQWJw67TUeOEcw66xvHgFAHhDoBkpCvR4nIujRMqp4GCliBQvktTNpjUTlOIKdXoks
         J1qHwm1BrykEH3zdFEG/KZsDIJBB+k2eIVkWkUAtNLTSjSgmTDncM/gfTVA7rHpspzUM
         5W5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xBV6M/QLKgL1OTP6r+L+BbrDYnsW4IUCG6lLR9TSS8w=;
        b=LRKv1DcjKgcLkIq2QRsKLsxDgK7jPNo2NBXc+wRh4XHEUUcWHaYrgivyOEKNoi0th9
         VSpeGIWZL1v3vlhuTCFvl8LXx2lD+FRjQgbuMExQ+e+3aOzdJUqyLa3Bj8aDrn1gefLs
         sZPdMcA+5Vt9q5++KdhehhP7SujtTXg7s6Ts8h21wHwiX/fK3XAA5ZM0ZrTReUB6udSf
         ka78JWzeMhHaFff6q+TLkR5LC6MTt1t4DocgK5vL7I/awgu7VG/nkYE/0BB3EWX3kkvj
         AhLcxff/iqUXj1XR+SaXVi10uzfI/cpBWEEL6lcrK67NApXXwRcGeqP48vSzUX79Gt23
         Go8A==
X-Gm-Message-State: AOAM533KH784waSU5GxJ9Wg+16cpmyjtUpYgH6xRWOdpAWvoENXozotT
	y/ID5tidEisOBgixYWGb6so=
X-Received: by 2002:a17:907:2628:: with SMTP id aq8mr16761560ejc.64.1619692691505;
        Thu, 29 Apr 2021 03:38:11 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id cr21sm1534995ejc.2.2021.04.29.03.38.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 03:38:10 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Fabio Aiuto <fabioaiuto83@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8723bs: hal: Remove set but unused variables
Date: Thu, 29 Apr 2021 12:38:09 +0200
Message-ID: <1870536.WTzYeaBcXf@linux.local>
In-Reply-To: <20210429102201.GF1409@agape.jhs>
References: <20210428113346.28305-1-fmdefrancesco@gmail.com> <YIqECQk/1Zb4JRjb@kroah.com> <20210429102201.GF1409@agape.jhs>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, April 29, 2021 12:22:02 PM CEST Fabio Aiuto wrote:
> On Thu, Apr 29, 2021 at 12:01:45PM +0200, Greg Kroah-Hartman wrote:
> > On Thu, Apr 29, 2021 at 10:25:53AM +0200, Fabio Aiuto wrote:
> > > On Thu, Apr 29, 2021 at 09:44:47AM +0200, Fabio M. De Francesco wrote:
> > > > On Thursday, April 29, 2021 9:26:20 AM CEST Fabio Aiuto wrote:
> > > > > Hi Fabio,
> > > > > 
> > > > > On Wed, Apr 28, 2021 at 01:33:45PM +0200, Fabio M. De Francesco 
wrote:
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
*padapter,
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
> > > > > > @@ -3916,8 +3913,6 @@ u8 GetHalDefVar8723B(struct adapter 
*padapter, enum
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
don't
> > > > know drivers programming, however that function looks like an 
implementation
> > > > of a read() system call. So I wouldn't be so sure to remove those 
calls.
> > > > 
> > > > Could calling a (*read) method have side effects on subsequent read()? 
I mean:
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
> > > rtw_read32 is a macro wrapping _rtw_read32() defined as follows (in 
core/rtw_io.c):
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
&sdio_read32;
> > > 
> > > this is the place where _read32 is stored with sdio_read32 reference...
> > > 
> > > drivers/staging/rtl8723bs/core/rtw_io.c:	u32 (*_read32)(struct 
intf_hdl *pintfhdl,
> > > u32 addr); drivers/staging/rtl8723bs/core/rtw_io.c:	_read32 =
> > > pintfhdl->io_ops._read32;
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
> 
> thank you for explanation, my hardware knowledge is poor:(
> Sorry for noise.
> 
> fabio
>
I suspected that removing those variables could have been a source of troubles 
(but I was thinking of possible side effects on internal kernel's data, not of 
hardware related idiosyncrasies), however I think that you did well to point 
it out because:

1) We learned something new from Greg;
2) I learned that, for the purpose of finding definitions, vim's ctrl-] is not 
the right way to work out the problem.

If you have time, I'd appreciate some comments on the topic of line (2).

Thanks,

Fabio




