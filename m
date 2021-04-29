X-GM-THRID: 6956170409670606848
X-Received: by 2002:ac2:4158:: with SMTP id c24mr24812114lfi.580.1619688780628;
        Thu, 29 Apr 2021 02:33:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5c8:: with SMTP id 191ls1010975ljf.10.gmail; Thu, 29 Apr
 2021 02:32:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzrccs2jetCLm8MCTG30oX0CMsUduNu9yABCcuopfbp0gielgJMYh5+/XEXXgL41hE/cBGY
X-Received: by 2002:a2e:924b:: with SMTP id v11mr24537117ljg.298.1619688779011;
        Thu, 29 Apr 2021 02:32:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619688779; cv=none;
        d=google.com; s=arc-20160816;
        b=yp4d4gF/FXG2ZAcIgIv9Z1v4iVYPk/m9t3+vZbR11qFB9weMC71f1rJEh/TznMRAPp
         XzGWkWViLfRZ6X6s48FYEruNduG+lkjP2rIb18uLrT3bZwc14KHOFt8xN+rYdwPFnD8E
         /+MPPQgR5fAAFT8sCcy4gfZR+9mJhCNFrIT5p6od+rEthEBXvKBbJSvZJMzVLgsuuMAk
         xWISsjVxmP70XMrgWDPKHhz6jmWCDeuQT+EvAZR4O+Jzg7N1ba1HObcbuROQdJMH/79N
         3c5mdZ4fmpIeVarKShezoF8l4YtCYAbLbu5b9JnIIJ8EjhMZ5P/tEnpabITSn+UELQd0
         VsmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mVDpQxeTCMq46bao8sy9cnrDvz662NxXvCGy2842XSk=;
        b=V9KXuTVYloXEsGfft+4NtY78h/4OQ8EQ89hnAqXDx2+WfrthbVxDAEWQ/P2ec2he1m
         cnlojE9Dkd11LcE8jUulrHVBla+Ndt4kViVzt4VM85PzpFcmcnqqLqd6C/AlEra14RCe
         CKZ5Uj7bA7EpB33JOfOMz0dU0jSP18ce99s697NwIPNHdezAkw8Fet2xjJ0TaRGvpluo
         sbeOHhwVnLpfuGV8AxOPQvr+KVPe42wIUHi+UXFhTWYsx0iHAHwJ9qQVvFj+3ZFbgk0F
         jr/BFZvOBF5nDNWdgVQb6x/THqBHz7qKplHKXPD7W000wOnNYfjq8kr216xtrekFGkYS
         YyKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XIn696y5;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fabioaiuto83@gmail.com>
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id z33si150051lfu.12.2021.04.29.02.32.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 02:32:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XIn696y5;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62b.google.com with SMTP id t4so15574546ejo.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Apr 2021 02:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mVDpQxeTCMq46bao8sy9cnrDvz662NxXvCGy2842XSk=;
        b=XIn696y5s3nQNvaOHb7ZQC5AkLwso8hmCtzWa3OuTSHiW0etnQEvHvOAu4NDNHQPkQ
         Zsp5yVjwQGNI+3Ijf9mY3fNUY36K09rqxAQoiohiRsVVE/xEEgprsv5cRS3FVka0cTxH
         hhQ904F3Ay2q1+waxm+qgfVzTcAbLmbV9ye5zSdEAAJ9++K/0Qnw1sPdAxfcxoPGZsjb
         Pi81D2XV+Ac2wYIdrDMH5h+JISZH3l2cCynLGfDkUVky+KD40KYTnwVlUBirIC0Tfa6Q
         /53mFkAFJVysFsQlV9GwzE9F/CgL3hGmhVPecfLjFjC5bgvt94s7crIgmVPJ0pIeufLc
         rixw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mVDpQxeTCMq46bao8sy9cnrDvz662NxXvCGy2842XSk=;
        b=qaJF4v/o0e/qQfC1/1CjlToDWDAWa/ZZvKMH4JCi4ULpnqCywU8+bTQUxGm9ao8il6
         o8xLU5wL6NWtXnhZ597MTKbSKbiTDe8WSh3o+zFitod/vmtXHjGhPbBgtrQyU5/UkLh7
         6yYFGmrKLf33WU4v34irRLEJr43AfCRKhX5Dwc59LZyfKfhdtSbhTH8SDUnNdoXmZ46Q
         9nhOxwAFSiieRMimtBM1vqwoh1EUOC3fUsNqJUcj0uCd11qlkEzuCnFeCmLn5p0QHJT/
         QH/q0eqPPXp50pczYGEjedBvHg7KFNZz8BBspfHtqYqnvDfR27qnB3uL7VwGb9kMBJLI
         DjiA==
X-Gm-Message-State: AOAM533EZnFnrz0Jbony7poCfQZNWkzUz3kwygV/vst9xclYUl+Ghp3A
	lCB7cpDJYdHhPJg9Lba6FvM=
X-Received: by 2002:a17:906:4889:: with SMTP id v9mr6716100ejq.21.1619688778789;
        Thu, 29 Apr 2021 02:32:58 -0700 (PDT)
Return-Path: <fabioaiuto83@gmail.com>
Received: from agape.jhs ([5.171.81.14])
        by smtp.gmail.com with ESMTPSA id n17sm1853594eds.72.2021.04.29.02.32.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 02:32:58 -0700 (PDT)
Date: Thu, 29 Apr 2021 11:32:52 +0200
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8723bs: hal: Remove
 set but unused variables
Message-ID: <20210429093250.GD1409@agape.jhs>
References: <20210428113346.28305-1-fmdefrancesco@gmail.com>
 <8266064.IJzC9MfcRG@linux.local>
 <20210429082552.GC1409@agape.jhs>
 <2336223.vu2A7xvVi3@linux.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2336223.vu2A7xvVi3@linux.local>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Apr 29, 2021 at 11:16:24AM +0200, Fabio M. De Francesco wrote:
> On Thursday, April 29, 2021 10:25:53 AM CEST Fabio Aiuto wrote:
> > On Thu, Apr 29, 2021 at 09:44:47AM +0200, Fabio M. De Francesco wrote:
> > > On Thursday, April 29, 2021 9:26:20 AM CEST Fabio Aiuto wrote:
> > > > Hi Fabio,
> > > > 
> > > > On Wed, Apr 28, 2021 at 01:33:45PM +0200, Fabio M. De Francesco wrote:
> > > > > Removed four set but unused variables. Issue detected by gcc.
> > > > > 
> > > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > > ---
> > > > > 
> > > > >  drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 5 -----
> > > > >  1 file changed, 5 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > > > > b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c index
> > > 
> > > 082448557b53..96cb4426a0f4
> > > 
> > > > > 100644
> > > > > --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > > > > +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > > > > @@ -3900,14 +3900,11 @@ u8 GetHalDefVar8723B(struct adapter *padapter,
> > > 
> > > enum
> > > 
> > > > > hal_def_variable variable, v>
> > > > > 
> > > > >  			u32 cmd;
> > > > >  			u32 ra_info1, ra_info2;
> > > > >  			u32 rate_mask1, rate_mask2;
> > > > > 
> > > > > -			u8 curr_tx_rate, curr_tx_sgi, hight_rate,
> > > 
> > > lowest_rate;
> > > 
> > > > >  			cmd = 0x40000100 | mac_id;
> > > > >  			rtw_write32(padapter,
> > > 
> > > REG_HMEBOX_DBG_2_8723B, cmd);
> > > 
> > > > >  			msleep(10);
> > > > >  			ra_info1 = rtw_read32(padapter, 0x2F0);
> > > > > 
> > > > > -			curr_tx_rate = ra_info1&0x7F;
> > > > > -			curr_tx_sgi = (ra_info1>>7)&0x01;
> > > > > 
> > > > >  			cmd = 0x40000400 | mac_id;
> > > > >  			rtw_write32(padapter,
> > > 
> > > REG_HMEBOX_DBG_2_8723B, cmd);
> > > 
> > > > > @@ -3916,8 +3913,6 @@ u8 GetHalDefVar8723B(struct adapter *padapter, 
> enum
> > > > > hal_def_variable variable, v>
> > > > > 
> > > > >  			ra_info2 = rtw_read32(padapter, 0x2F4);
> > > > >  			rate_mask1 = rtw_read32(padapter, 0x2F8);
> > > > >  			rate_mask2 = rtw_read32(padapter, 0x2FC);
> > > > > 
> > > > > -			hight_rate = ra_info2&0xFF;
> > > > > -			lowest_rate = (ra_info2>>8)  & 0xFF;
> > > > > 
> > > > >  		}
> > > > >  		break;
> > > > 
> > > > rate_mask{1,2} and ra_info{1,2} seems to be unused as well.
> > > > 
> > > > thank you,
> > > > 
> > > > fabio
> > > 
> > > Hello Fabio,
> > > 
> > > I'm not sure about it: rtw_read32 calls a pointer to a function. I'm don't
> > > know drivers programming, however that function looks like an 
> implementation
> > > of a read() system call. So I wouldn't be so sure to remove those calls.
> > > 
> > > Could calling a (*read) method have side effects on subsequent read()? I 
> mean:
> > > could it update some internal data structure? If not I can remove the
> > > variables you mentioned above and the calls to read32.
> > > 
> > > I'm looking forward to read your reply.
> > > 
> > > Thanks,
> > > 
> > > Fabio
> > 
> > hi Fabio,
> > 
> > rtw_read32 is a macro wrapping _rtw_read32() defined as follows (in core/
> rtw_io.c):
> >
> Hi Fabio,
> 
> Thanks a lot for your reply.
> 
> However, There is something less than clear to me... how did you find that 
> rtw_read32 is a macro wrapping _rtw_read32()? I mean: I knew that, in vim, one 
> can go to the definition of something by using ctrl-] key.
> 
> If I do that on rtw_read32 it takes me to a static definition of it in 
> drivers/net/wireless/realtek/rtw88/hci.h. This is a one line function:
> 
> static inline void rtw_write32(struct rtw_dev *rtwdev, u32 addr, u32 val)
> {       
>         rtwdev->hci.ops->write32(rtwdev, addr, val);
> }
> 
> When I use ctrl-] on write32() it takes me to struct rtw_hci_ops in drivers/
> net/wireless/realtek/rtw88/hci.h.
> 
> After that I wanted to find where the member (*read32)() is assigned but I 
> don't know where and how to grep it: I tried "grep -rn "\bwrite32\b=" drivers/
> staging/rtl8723bs/" but I found nothing...
> 
> Can you please explain what I'm doing wrong in following the path I mentioned 
> above and how you find out that macro?

$grep -r 'define\s*\brtw_read32' drivers/staging/rtl8723bs/

it's a grep I always do to check if a function is actally
a function or a macro..


> 
> Thanks for your time,
> 
> Fabio 
> > 
> > u32 _rtw_read32(struct adapter *adapter, u32 addr)
> > {
> >         u32 r_val;
> >         /* struct       io_queue        *pio_queue = (struct io_queue
> > *)adapter->pio_queue; */ struct io_priv *pio_priv = &adapter->iopriv;
> >         struct  intf_hdl                *pintfhdl = &(pio_priv->intf);
> >         u32 (*_read32)(struct intf_hdl *pintfhdl, u32 addr);
> > 
> >         _read32 = pintfhdl->io_ops._read32;
> > 
> >         r_val = _read32(pintfhdl, addr);
> >         return rtw_le32_to_cpu(r_val);
> > 
> > }
> > 
> > the actual read seems to be performed by the handler contained in
> > 
> > 	pintfhdl->io_ops._read32;
> > 
> > so:
> > 
> > $ grep -r '\b_read32' drivers/staging/rtl8723bs/
> > 
> > drivers/staging/rtl8723bs/hal/sdio_ops.c:	ops->_read32 = 
> &sdio_read32;
> > 
> > this is the place where _read32 is stored with sdio_read32 reference...
> > 
> > drivers/staging/rtl8723bs/core/rtw_io.c:	u32 (*_read32)(struct 
> intf_hdl *pintfhdl, u32
> > addr); drivers/staging/rtl8723bs/core/rtw_io.c:	_read32 = pintfhdl-
> >io_ops._read32;
> > ...
> > 
> > if you check it in hal/sdio_ops.c, nothing is written, just reads are
> > performed (and it's not odd, for a read function isn't supposed to write
> > something under the hood ;)).
> > 
> > I think those variables could be easily removed as W=1 gcc suggests.
> > 
> > thank you,
> > 
> > fabio
> 
> 
> 
> 

thanks,

fabio

