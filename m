X-GM-THRID: 6950274232690409472
X-Received: by 2002:a37:68c1:: with SMTP id d184mr26224722qkc.395.1618237422935;
        Mon, 12 Apr 2021 07:23:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:7147:: with SMTP id m68ls2444715qkc.7.gmail; Mon, 12 Apr
 2021 07:23:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwQrWE/odsJg/SEk88f9XJaEQUPoKqp497p+Zq3S5ch1SRDcY6LUeprF4dj+SiRioydzs0B
X-Received: by 2002:a37:ac18:: with SMTP id e24mr27892388qkm.30.1618237422076;
        Mon, 12 Apr 2021 07:23:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618237422; cv=none;
        d=google.com; s=arc-20160816;
        b=mODsFq8ZapOliAjZ2UznRLuAQTfXrfFguiFdpLW2UWJeEAmhCK6P8Ue6tCg+rnUbxa
         UYdw4hAVy83BWrrMeTU9Yim1ZtQDDiTlEDmPP0iCLoQCNyEh8UpAKrGHrTKciQ7gEnNz
         zzq24VamAxwK8Figk5Dy8x/44ulUftjcQVJemL1pPqa8/EJN017EL2ociUmbQh+sjogM
         R6jrYJ17T6m+Dw6OaRB5Z6a8crbpcA926EVRich5fvtVVUsx1kc1EF1r3jf0HTcgtduC
         mgUk68FLbBAHMnih1BwJz0HWXOxh/OjHIE2V9WiqKIh6gnJjjnfEqnhU+dE0B9BCdfps
         tdCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=I/7Ef32TQmOZA9RvVXHgkj3GT9u6ehYjhtvJE+ZSJBs=;
        b=lh4287inBq8lZM4HHNM0iJwM97LF173Ua1FoKQ3PuVpuF8CI7YDby87KCkDAktcVuu
         1CWUl6USpdS86FyAzbafISUxOWl3Ty+bL03scJ5fmqSXbeUaU7HXjh9NaOv0qzAX1EZg
         07Z9EI8ITKwbhtYd5vsOhUs1tjO3Yz/yyO5MciJo6WvfgdsTEPDIkLMRukHjuYv9ARs+
         luWU4aqmyomkSrmXY7A5lvARclJrpAj8EmlAJbW41es2wQBGZEHwRHxFdu18Isd9tB8d
         zP+KCXoogtQBfDOmXloQYHdtiGRsmKtp3OSp/QQP9JV0Ftnbtchr+hgFdZcymp4RvWlE
         KfPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iNDfLahr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h62si411028qkc.3.2021.04.12.07.23.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 07:23:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iNDfLahr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6DFC261287;
	Mon, 12 Apr 2021 14:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618237421;
	bh=pLVsYqwcQBqVqZ3nJfAAwHdJS9dMLgzrZvUMnMXeDdY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iNDfLahrBRNFxHsSJIlPBfxk7/ff+a7s+vkKaRCdY9ubcIaaTl2t8x/8jUCIdWWku
	 mmN7jUI4pwDQi6WyqQkLmR+IM8cgMl8DJrHuFGTNR0zY3fvI6P2Vnn1y5MqUS+5IJT
	 NXvd84xtGrAZsYA5eBUjJQ0sUgoB2WHdPePd77eU=
Date: Mon, 12 Apr 2021 16:23:38 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: PEGGY TAWAH <tawahpeggy98@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>
Subject: Re: [PATCH] Staging: greybus: Remove a space because line is too long
Message-ID: <YHRX6glqzA95kKpy@kroah.com>
References: <20210412141329.GA31738@peggy-Lenovo-V130-15IKB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210412141329.GA31738@peggy-Lenovo-V130-15IKB>

On Mon, Apr 12, 2021 at 10:13:34AM -0400, PEGGY TAWAH wrote:
> checkpatch complained of line 182 too long in greybus driver,so i removed some spaces. CHECK: line length of 101 exceeds 100 colums

Please line-wrap your changelog text.

> 
> Signed-off-by:  PEGGY TAWAH <tawahpeggy98@gmail.com>

Please use lower case letters where needed.

Also you did not cc: the proper mailing lists, please read the
instructions again.


> 
> ---
>  drivers/staging/greybus/arche-platform.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> index e374dfc0c92f..1bfec5fae849 100644
> --- a/drivers/staging/greybus/arche-platform.c
> +++ b/drivers/staging/greybus/arche-platform.c
> @@ -179,7 +179,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
>                                 if (arche_pdata->wake_detect_state !=
>                                                 WD_STATE_COLDBOOT_START) {
>                                         arche_platform_set_wake_detect_state(arche_pdata,
> -                                                                            WD_STATE_COLDBOOT_TRIG);
> +                                                                 WD_STATE_COLDBOOT_TRIG);
>                                         spin_unlock_irqrestore(&arche_pdata->wake_lock,
>                                                                flags);
>                                         return IRQ_WAKE_THREAD;
> --
> 2.17.1
> 
> 

Your patch is whitespace damaged and can not be applied at all :(

