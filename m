X-GM-THRID: 6663286701018841088
X-Received: by 2002:a5b:b89:: with SMTP id l9mr1632112ybq.2.1551427364243;
        Fri, 01 Mar 2019 00:02:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c042:: with SMTP id c63ls2453292ybf.4.gmail; Fri, 01 Mar
 2019 00:02:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqxarNZUb2l/bk1ZSzc7xJEKl8AgwnIDTqFMQOPDnk+duoqLptPpDm3CB78RPUD8MggjlRGF
X-Received: by 2002:a25:654:: with SMTP id 81mr1848915ybg.67.1551427363311;
        Fri, 01 Mar 2019 00:02:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551427363; cv=none;
        d=google.com; s=arc-20160816;
        b=seSiq39NtpxTVcHoTD4SJXJ7n/M+iCgL1tS0cpENseS/N0Yz4rH/pGlAWhLmynXl42
         i0Ux3QYQqaOwHpJsTo0C6dwurJr9U+l6sw1VQCTs6hf5Wp7TWhePOulwtAcJt9ZYJNBI
         oRU8/fxGqavH4Bkj0Jlf7jYHgAhYtruCIHTKAPZ9n1J9MhE82KyHF8m+4tHv6Agys3ud
         C686RhInqqdHMMXwHSfFSucFqhW65SsGdTeaTTgh+DnACPddMkY/D6VSYqtYuJPK4DhJ
         Gil/Ks32zCiR0WEGNgEwbOxPjt0v+8Q9t/6DyYKxIeZb08xe1YF7BqnU+n/b0wiKTwnu
         0yIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1SSN4W0qNBUK6AcY9t+zBe9wZGW+QM+o742GDsv0E9I=;
        b=lmyNada+trVRfXRfDcDGFxhwWM2taiFJICVN2iHKvtA13aIo8BUgdQO2WwAf2MgnCx
         E8+g35E9JTPnyJRy31jcWTktI5Y5vW4Vpd2FXWmhmYH5auBVrPvVTvoWnaKHee+d/rFf
         +U04onYmVFu8W6/SiZPevSA8OCd5wJ2dHfJ8q14OuF73IupNpwSDu7GxTGOeIaIYK9is
         nPCg6mSGZbWqit7uoPwyEvD0WAhrJcDVNyTLUcoRDFso1Ra80RZuptaVGdx7O8Em42RP
         9z1EDwF0rAUGGJzelfIYDL38Nn/R6UDLdJyB3kUJx3x9TvhThDPjbSuJAlnvBNckWaMq
         udLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SBxBZIu0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l39si1495371ywh.5.2019.03.01.00.02.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 00:02:43 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SBxBZIu0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BCDE32087E;
	Fri,  1 Mar 2019 08:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551427361;
	bh=Wjyj3dEzGvtjcBD+NFBSPF04MXQZ0jbNRwNqoBsU8Pc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SBxBZIu0X5qEUtU3X08XqC2niyFumCSaGkJymgWfjiBZvmYkUtsHiV3aYer/l0Hwg
	 xi3eEEEIHSNgm18BbdsC85pl3uvjblItUncOm1sLmsA1yrnK2tUvm7Z07xNOrU9Ouq
	 dnckEWA1IEcsyYWBdcdhWz5wPoRBfjKcaPmXCsqk=
Date: Fri, 1 Mar 2019 09:02:37 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/3] staging: rtl8712: rename bDriverStopped to
 driver_stopped
Message-ID: <20190301080237.GE13643@kroah.com>
References: <20190301051505.55407-1-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190301051505.55407-1-himadri18.07@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 01, 2019 at 10:45:03AM +0530, Himadri Pandya wrote:
> Fix checkpatch warning: Avoid CameCase for struct variable
> bDriverStopped by renaming it to driver_stopped.
> 
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/rtl8712/drv_types.h           |  3 +--
>  drivers/staging/rtl8712/os_intfs.c            |  2 +-
>  drivers/staging/rtl8712/rtl8712_cmd.c         |  4 ++--
>  drivers/staging/rtl8712/rtl8712_io.c          |  4 ++--
>  drivers/staging/rtl8712/rtl8712_led.c         |  6 +++---
>  drivers/staging/rtl8712/rtl8712_recv.c        | 10 +++++-----
>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 16 ++++++++--------
>  drivers/staging/rtl8712/rtl871x_mlme.c        |  6 +++---
>  drivers/staging/rtl8712/rtl871x_pwrctrl.c     |  4 ++--
>  drivers/staging/rtl8712/usb_intf.c            |  2 +-
>  drivers/staging/rtl8712/usb_ops_linux.c       | 18 +++++++++---------
>  11 files changed, 37 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
> index 48d62fe6c8d4..60c5ed55ab04 100644
> --- a/drivers/staging/rtl8712/drv_types.h
> +++ b/drivers/staging/rtl8712/drv_types.h
> @@ -145,7 +145,7 @@ struct _adapter {
>  	struct	hal_priv	halpriv;
>  	struct	led_priv	ledpriv;
>  	struct mp_priv  mppriv;
> -	s32	bDriverStopped;
> +	s32	driver_stopped;

This is odd.  The "b" implies that this is a "boolean" flag, not a s32
value.  Why not also change this to 'bool' at the same time to preserve
that type information.

>  	s32	bSurpriseRemoved;
>  	s32	bSuspended;
>  	u32	IsrContent;
> @@ -180,4 +180,3 @@ static inline u8 *myid(struct eeprom_priv *peepriv)
>  u8 r8712_usb_hal_bus_init(struct _adapter *adapter);
>  
>  #endif /*__DRV_TYPES_H__*/
> -

No need to delete this line in the same patch :(


> diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
> index 2d3f38007299..bd2ffd0ebde9 100644
> --- a/drivers/staging/rtl8712/os_intfs.c
> +++ b/drivers/staging/rtl8712/os_intfs.c
> @@ -374,7 +374,7 @@ static int netdev_open(struct net_device *pnetdev)
>  
>  	mutex_lock(&padapter->mutex_start);
>  	if (!padapter->bup) {
> -		padapter->bDriverStopped = false;
> +		padapter->driver_stopped = false;

See you are using it as a boolean, might as well have it be a real
boolean.

thanks,

greg k-h

