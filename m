X-GM-THRID: 6668560476445605888
X-Received: by 2002:a81:7509:: with SMTP id q9mr8306955ywc.19.1552891291004;
        Sun, 17 Mar 2019 23:41:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:27d6:: with SMTP id n205ls1168715ywn.10.gmail; Sun, 17
 Mar 2019 23:41:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzt150/hWgxTTsibSaNTcdXMrFmkllBg7QcPbTpmcNnRA7KPF4OzRHiqMDkgtDgm/ZHIFXc
X-Received: by 2002:a0d:f984:: with SMTP id j126mr315985ywf.8.1552891290101;
        Sun, 17 Mar 2019 23:41:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552891290; cv=none;
        d=google.com; s=arc-20160816;
        b=GoIFweY5DHuJeXL0OHpwyfSyDxcJ2hITKhbhHuVin8eRWtwMDpAulXBExDPvfwVV40
         yPaPqMHJ8FOI2uwwYs8K/0Pp3h2zJrbMyeMDRTefeph/zoDMtx2Ib2Md2mXO6qukX0GN
         9BX2lBVcTKn1L7WTKTUPGJmsjrdYAJPnlKW3tOv7RAYcI7om0ydT2KZTANtnJJxWXChj
         IDBkSqDm7pMuI2PA+rTSzntn59yw4Gi2eNvFOcZDRzDowbf7SMXaiTkz2UYUkS13aSwi
         b592AEfqobKLGprGlW/5KuMmBUVo4wMxMuZKJXRx75ThyiH/WsjSahxFmenlu6S2MfHx
         lyZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=saN/wluUqaLsvHEDI4ckRU5MOlM2Ieblitq97yqfLz4=;
        b=HtuaF1ENFys6+5ySImIR4wsMnBCmhYdL7Yhka77z9N5w4nfRROg5PrXebEsuYyX2VZ
         CyGAp03lj1r5fB56HaEzvNqb8abLLQvt+PehzsRW4Sx+ZrlQAuR1qSt4XC61tP8KBD+E
         i4C/KM8af8Yib3NRNUx9jqBBqi86KVsxNhzRPIxCqkZLGpgfxsZgts7ar7tEAFuHhi74
         DZh2ZzGar7dP4p45hnhPeC2S9C7d0dBR4kjzKX8pcue9gV5cTqco1PcgibV6nxXAwIJH
         AHwzPDf3DRAF6lAtc/5GgwiWbPhpgkOh+Zs02xPx6/Ob2+EFmmQ1svZe97Xc3SY6jnmi
         jTsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pfT2usgZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s11si392450ywg.3.2019.03.17.23.41.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 23:41:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pfT2usgZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9438F20835;
	Mon, 18 Mar 2019 06:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552891289;
	bh=sfR0Ka1lx62vodf33NOcHVhxhWVwA6Jntp/+YmqNXdA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pfT2usgZgHGwiyg7u/0mrOv9lRtV1/7aEpY2g3Ukil6nNFMHWiwEd79ueYEVprt06
	 tchG7llfU/C8E9mv7/A2AJDShpD+oS4lOa6zFrjekkMVppJ5anMrbDcXDvksFXaJni
	 LnjLDPhAS7WhY47vTuFs9MKM29c39d8TC3Oh0srA=
Date: Mon, 18 Mar 2019 07:41:26 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: sm750fb: Remove
 unnecessary function
Message-ID: <20190318064126.GA28557@kroah.com>
References: <20190315102007.26612-1-nishka.dasgupta@yahoo.com>
 <20190317104323.GA16257@kroah.com>
 <c6bcf143-56b8-958a-fe5f-1ffad198e04a@yahoo.com>
 <alpine.DEB.2.21.1903171754540.2434@hadrien>
 <2d3e19c4-8513-92f2-4521-8bb0d3d6310f@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2d3e19c4-8513-92f2-4521-8bb0d3d6310f@yahoo.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Mar 18, 2019 at 12:07:19PM +0530, NIshka Dasgupta wrote:
> 
> 
> On 17/03/19 10:25 PM, Julia Lawall wrote:
> > 
> > 
> > On Sun, 17 Mar 2019, 'NIshka Dasgupta' via outreachy-kernel wrote:
> > 
> > > 
> > > 
> > > On 17/03/19 4:13 PM, Greg KH wrote:
> > > > On Fri, Mar 15, 2019 at 03:50:07PM +0530, Nishka Dasgupta wrote:
> > > > > Remove function sii164ResetChip() as comment above it said "below
> > > > > function is not necessary".
> > > > > 
> > > > > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > > > > ---
> > > > >    drivers/staging/sm750fb/ddk750_sii164.c | 13 -------------
> > > > >    drivers/staging/sm750fb/ddk750_sii164.h |  1 -
> > > > >    2 files changed, 14 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/staging/sm750fb/ddk750_sii164.c
> > > > > b/drivers/staging/sm750fb/ddk750_sii164.c
> > > > > index c8e856c13912..8884ef927893 100644
> > > > > --- a/drivers/staging/sm750fb/ddk750_sii164.c
> > > > > +++ b/drivers/staging/sm750fb/ddk750_sii164.c
> > > > > @@ -237,21 +237,8 @@ long sii164InitChip(unsigned char edge_select,
> > > > >    	return -1;
> > > > >    }
> > > > >    -/* below sii164 function is not necessary */
> > > > > -
> > > > >    #ifdef SII164_FULL_FUNCTIONS
> > > > >    -/*
> > > > > - *  sii164ResetChip
> > > > > - *      This function resets the DVI Controller Chip.
> > > > > - */
> > > > > -void sii164ResetChip(void)
> > > > > -{
> > > > > -	/* Power down */
> > > > > -	sii164SetPower(0);
> > > > > -	sii164SetPower(1);
> > > > > -}
> > > > > -
> > > > >    /*
> > > > >     * sii164GetChipString
> > > > >     *      This function returns a char string name of the current DVI
> > > > > Controller chip.
> > > > > diff --git a/drivers/staging/sm750fb/ddk750_sii164.h
> > > > > b/drivers/staging/sm750fb/ddk750_sii164.h
> > > > > index 862e7bf27353..1f7b5f9c1885 100644
> > > > > --- a/drivers/staging/sm750fb/ddk750_sii164.h
> > > > > +++ b/drivers/staging/sm750fb/ddk750_sii164.h
> > > > > @@ -28,7 +28,6 @@ unsigned short sii164GetVendorID(void);
> > > > >    unsigned short sii164GetDeviceID(void);
> > > > >      #ifdef SII164_FULL_FUNCTIONS
> > > > > -void sii164ResetChip(void);
> > > > >    char *sii164GetChipString(void);
> > > > >    void sii164SetPower(unsigned char powerUp);
> > > > >    void sii164EnableHotPlugDetection(unsigned char enableHotPlug);
> > > > 
> > > > Did you test build this?  This function is still used if
> > > > SII164_FULL_FUNCTIONS is defined.
> > > 
> > > Yes, I did test build this, and there were no problems. However, I have not
> > > been able to properly grep search for it since my laptop crashed a few days
> > > ago and I have only just been able to set everything back up. Where can I find
> > > SII164_FULL_FUNCTIONS?
> > 
> > Just do git grep SII164_FULL_FUNCTIONS at the root of your kernel tree.
> > It may be in a Kconfig file.
> > 
> 
> I did that, thank you. All the occurrences of SII164_FULL_FUNCTIONS follow
> ifdefs in C and header files in sm750fb (ddk750_dvi.c, ddk750_sii164.c,
> ddk750_sii164.c again, and ddk750_sii164.h). There don't appear to be any
> occurrences of SII164_FULL_FUNCTIONS anywhere else in the entire staging
> tree.
> Does this mean I can delete every ifdef referring to SII164_FULL_FUNCTIONS
> since SII164_FULL_FUNCTIONS does not appear to be actually defined anywhere?
> Or should all those (including the function deleted by this current patch)
> stay?

For now I would just leave them alone, as they might mean something to
someone who has the hardware.

thanks,

greg k-h

