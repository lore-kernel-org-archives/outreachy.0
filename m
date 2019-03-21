X-GM-THRID: 6670735710407884800
X-Received: by 2002:ab0:2983:: with SMTP id u3mr865623uap.8.1553152646777;
        Thu, 21 Mar 2019 00:17:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:c782:: with SMTP id t2ls1046278vsk.2.gmail; Thu, 21 Mar
 2019 00:17:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw39ZnmZ+LjDienvj+4XfBtzYjbbBthLvfKcGJqefrp0I7hJwU/pn4mXDxZkDzIjNXzM4CQ
X-Received: by 2002:a67:8797:: with SMTP id j145mr923616vsd.12.1553152645970;
        Thu, 21 Mar 2019 00:17:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553152645; cv=none;
        d=google.com; s=arc-20160816;
        b=mlPB/qf88hpNS1X7Cfcb2JsJm+wI71kpAnhKZAaiMU7QIi/4VwrAuMWIxvAKlcVhxE
         PymXAzGIfC3byGEZFeyhcO9mzmSifrXuLr2ao1915mUe3DMzvE8MTt1OMtCSwapEOSOh
         MxiJM/jlCmKJW8LeBcNeT36QHa9W10cdwg+NA55ixvmOycwc15gzUD0oQGMgpcvRThHF
         UwU+++6pcAupzTjmh93RA2+9pfV/Bvc+ohy3WIDbueTD7RXchTWY5vHxNnwjmxPL5F9G
         Uq75YljUBJq8rhv3u4TIoQ1RPMBQFvwcNrB4wmii+8/lOTVkfjpEZrkidgvK7L/gMsCf
         fgBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PVACStf1YwE3PlfYl9o3xr0A/mUNKvajo0v47E8/xLc=;
        b=hA57CECobxxuvILkbUAXBlWwAf+2VOYuRLOgH2Xub0LqU+R4anLQBF9+/OojDAzjk1
         7mqayHpL2DT8KLWKJ30VV6JnDhcJe5q3e7LwAjBcBxYDCGTgCs6W86vrJa4g2GIJtPS3
         ObsJbplE/0JukWt7kkxc5l4D4SVIFJLvI9CPvPpa0WDtkGM0AbDZChByfxzlQVREi3+u
         fMtgeQY7L3NIZF5pabD1NYlvmUM1yYz4q3E1bxFKsVHHQITX8Jp1AqlTDSXaiRpzoCoQ
         UcgryT6JBc511SmowXS7JfxDZR+pePoZ6fBPj5gXngpJSsofaNAdxjQp0Noz3mxlThVZ
         LXkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NzjXVlQd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e17si207653vke.0.2019.03.21.00.17.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:17:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NzjXVlQd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 15D94218AE;
	Thu, 21 Mar 2019 07:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553152644;
	bh=8UR/RMR99xljITPS5xgrVG/R0mg5hcfnApy8PpE/lVE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NzjXVlQdB3kzs/SDRYge3LSlZ2Ob4HMF+iy8tbBOTmHs24z/Q5fY/3zMp9LAzDm0n
	 3HWnbdfOgbVNre0897Irt18p9XZnlX+AZA0UixZ0Ku7j9V1z1VlQvahYnj9q81LDOf
	 Mmf+uG/dVITT2pwl5rSpU4tfyHe4volu2A52z+v4=
Date: Thu, 21 Mar 2019 08:15:21 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: greybus: usb.c: Remove unnecessary local
 variables.
Message-ID: <20190321071521.GA14810@kroah.com>
References: <20190321070114.7272-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190321070114.7272-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 12:31:14PM +0530, Sanjana Sanikommu wrote:
> The two lines could be compressed into one statement.
> Challenge suggested by Coccinelle using ret.cocci.
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/greybus/usb.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/greybus/usb.c b/drivers/staging/greybus/usb.c
> index 1c246c73a085..3aac637c3a50 100644
> --- a/drivers/staging/greybus/usb.c
> +++ b/drivers/staging/greybus/usb.c
> @@ -48,11 +48,9 @@ static inline struct usb_hcd *gb_usb_device_to_hcd(struct gb_usb_device *dev)
>  static void hcd_stop(struct usb_hcd *hcd)
>  {
>  	struct gb_usb_device *dev = to_gb_usb_device(hcd);
> -	int ret;
>  
> -	ret = gb_operation_sync(dev->connection, GB_USB_TYPE_HCD_STOP,
> -				NULL, 0, NULL, 0);
> -	if (ret)
> +	if (gb_operation_sync(dev->connection, GB_USB_TYPE_HCD_STOP,
> +			      NULL, 0, NULL, 0))
>  		dev_err(&dev->gbphy_dev->dev, "HCD stop failed '%d'\n", ret);

This does not look correct, ret.cocci shouldn't be triggering this as
there is a coding style "rule" that you do not call functions within an
if () statemetn if at all possible.

thanks,

greg k-h

