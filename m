X-GM-THRID: 6951097380954439680
X-Received: by 2002:aa7:8097:0:b029:229:83ec:cac0 with SMTP id v23-20020aa780970000b029022983eccac0mr1878522pff.67.1618467602192;
        Wed, 14 Apr 2021 23:20:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8748:: with SMTP id g8ls1906871pfo.8.gmail; Wed, 14 Apr
 2021 23:20:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwuKeFbwawag83TAxGyX4vZvGr6a9a1I3OrOsR/KvERSLmdB0wQEe1QqIwoOwFgF1hTerBb
X-Received: by 2002:a63:d153:: with SMTP id c19mr2026735pgj.311.1618467601198;
        Wed, 14 Apr 2021 23:20:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618467601; cv=none;
        d=google.com; s=arc-20160816;
        b=O00yJZCfHafs1SwCNCNfPY9C1wDTqp0l0E2loWcSavARngNS7ITpubAkEwn9Gh3Dkv
         QWEyxtgfrS8gO/pSoFo7IShieetccJYy0C6mVr3sem4JTevoX13GA6jM4UzN0XPZMIGe
         zP/vQ0bWawumYdGql75dsIm2oH3AZImKMM8B/GOt0n51Zxnv5IhCA6CkT2+31mjWADkF
         r5+Gdsp2qk3P6kyeN2tlBHok2JQQ0tUbzqDpdQ/lZRTwkffmgnibGVLwVHHFYjmQ1KlO
         OvodMtP14EulQ48nSenuajd+2syANvNhY6sASB80j6YLFTJ0Xt88UR/GmvnWoa2+JZKf
         M9Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KR6kph1BTzSnBMHTKT/5/ML9RB8peYV1tOhypdiiGEg=;
        b=l8dNCNIEVb1OsPYGZra4Ao1farktmsEap0Mdo+A8GxEzyoVL131qNaef/evbe9iKbC
         j9R9pSbCrKKnxxfEZyrxw+LKqC9f2SMfMKzvOipdIkABbNncZ9Gi3rM+/rI6fz3/2hz9
         TK5QDa92DwxthbJ9GABlGWtx2axa2SJU4oRJEdU/Ge29ofeoEJ80HIZ0QRMaIUROrszP
         kgyt3SnTmEnOnQLuTGoBy5iAtIxlWxETgKusYXoyCOPw5FHAVR5e3y8iwWYrD8miDyRT
         ZklVkAOKZYX7jfFF/yzKU0lExJx8Kp1BKD9sDDaubI72CrLH0YhO28W9p9Vkh7YeuaEZ
         4qdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Sh6i2eyN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i18si759773pju.2.2021.04.14.23.20.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 23:20:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Sh6i2eyN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2D0A561626;
	Thu, 15 Apr 2021 06:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618467600;
	bh=HYP7yuHfpv8Q1ChKSjcORPDo6Pm/UOEFcuQ22NmOOXE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sh6i2eyNs/SirnN/bSO29kEvVmnMAU19vtBs09nkBn7KSH0L6JWY3QeK+rGdcPauC
	 z19trp6HI+RWnTQT+QRa2P7Y1iWDcXpjCGjcOVlH7VlI6M6iUSfgufZLeCRGWn5TRW
	 nf4WB4lqxpTvrvareqizd8YMfMzLMkxikPn3WoME=
Date: Thu, 15 Apr 2021 08:19:55 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
	Julia Lawall <julia.lawall@inria.fr>,
	Fabio Aiuto <fabioaiuto83@gmail.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Outreachy patch] [PATCH v3 1/2] staging: rtl8723bs: Remove
 useless led_blink_hdl()
Message-ID: <YHfbC8EvrmwFs6If@kroah.com>
References: <20210414192750.4974-1-fmdefrancesco@gmail.com>
 <20210414192750.4974-2-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210414192750.4974-2-fmdefrancesco@gmail.com>

On Wed, Apr 14, 2021 at 09:27:49PM +0200, Fabio M. De Francesco wrote:
> Removed useless led_blink_hdl() prototype and definition. In wlancmds[]
> the slot #60 is now set to NULL using the macro GEN_MLME_EXT_HANDLER. This
> change has not unwanted side effects because the code in rtw_cmd.c checks
> if the function pointer is valid before using it.
> 
> Reported-by: Julia Lawall <julia.lawall@inria.fr>
> Suggested-by: Matthew Wilcox <willy@infradead.org>
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
> 
> Changes from v2: no changes.
> Changes from v1: Corrected a bad solution to this issue that made use of
> an unnecessary dummy function.
> 
>  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 2 +-
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
>  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
>  3 files changed, 1 insertion(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 0297fbad7bce..f82dbd4f4c3d 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -150,7 +150,7 @@ static struct cmd_hdl wlancmds[] = {
>  
>  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
>  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param), set_chplan_hdl) /*59*/
> -	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param), led_blink_hdl) /*60*/
> +	GEN_MLME_EXT_HANDLER(0, NULL) /*60*/

Do not do this "intermediate stage" type thing like this please.  This
should be one simple patch.  Again, look in the kernel archives for an
example of how to do this.

thanks,

greg k-h

