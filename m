X-GM-THRID: 6802842925013139456
X-Received: by 2002:a7b:c92e:: with SMTP id h14mr2237664wml.90.1583910866956;
        Wed, 11 Mar 2020 00:14:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:93:: with SMTP id 141ls669289wma.1.canary-gmail; Wed, 11
 Mar 2020 00:14:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsh/jrng7kbNNcmJ0U5Zn79Pf6Qu++X1ZwsDIDlFqE3PCYAO12qDGqdhH/JLwlH09Jn8h5o
X-Received: by 2002:a05:600c:214e:: with SMTP id v14mr2062218wml.85.1583910865580;
        Wed, 11 Mar 2020 00:14:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583910865; cv=none;
        d=google.com; s=arc-20160816;
        b=Xje003TD0CRU9NP3+bl3YvAbN1KpymY6QnSYSaXpjCFilPfw6T81C1OWfcDsDnzJpn
         0GoeDYOIYoyrQqGj0H0spDTAQ8MQ88nprxha7bQz9Kddvaa4WOFIf/vxxd9QYfpF77an
         z/bHRziLbEdiAvslPZxiHK0m6oVDT8Zf47nhX3q/567y+Smhz0miDmFVeULuPKjDsNyR
         ScLHIqfJCbRxaWdPBM0J5ghLxJQOLSOcGaCegZ2Hs7VHLkm02ay9sZIdgS7SpmcujkUm
         T2Xln2kd6aBIjMBs4r4PVrX6wEfDfI/SEcvHeC5t1HM3sna412UrvAC1AijRbtdOH3/B
         oBSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+0jJRvbY8/HuE723MBK3ryznTUjPTa21ZmWlJn9K+5o=;
        b=njeGJb/H/p3wZdott+mTI3unB5udOtjV1KjzQ2Uav/iZ62o1KaS8rof4vtZzJDyDMC
         l6gNzGIwSg1rjRSnBZeAnJkceq9ChMwS2pCvlRxAwLt23DIuaWMq1LlphxLn0PkDcB+P
         mBgHhgC1fvl+yICS0c6HnjcnPUsYFNI2NAYjCiNGWO7YO/WmDSZjUcOole3G79ruumoF
         wQUyLQC9tpNsuDWBA1pMy2ddh2LK/etXjodMZxLahgKFwFpwbImckT7T7TWjI3Gdf1qh
         ps5Hpmj8cCK5tUyxISCDN7udcHTF+87S49PtPYBcvIEobltV4Ge4XpchvSc1trBkE7LO
         7vfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o194si235654wme.2.2020.03.11.00.14.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 00:14:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,540,1574118000"; 
   d="scan'208";a="341956590"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2020 08:14:25 +0100
Date: Wed, 11 Mar 2020 08:14:24 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: rtl8188eu: hal: compress
 two lines into one line
In-Reply-To: <20200311070447.6909-1-payalskshirsagar1234@gmail.com>
Message-ID: <alpine.DEB.2.21.2003110811160.2439@hadrien>
References: <20200311070447.6909-1-payalskshirsagar1234@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 11 Mar 2020, Payal Kshirsagar wrote:

> Challenge suggested by coccinelle, compress two lines into one line and remove unnecessary variable.

The change looks ok but the log messahe is not really ideal.  It's nice to
mention Coccinelle, but that's not the most important thing so it
shouldn't be first.  Compressing lines doesn't really give a clear picture
either.  The subject line could be "remove an unneeded variable".  The log
message should focus on explaining why it is unneeded.  Then mentioned how
the change was found at the end.

julia

>
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/usb_halinit.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
> index 16a57b31a439..aa6354b9ffa2 100644
> --- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
> +++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
> @@ -40,8 +40,6 @@ static void _ConfigNormalChipOutEP_8188E(struct adapter *adapt, u8 NumOutPipe)
>
>  static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt, u8 NumInPipe, u8 NumOutPipe)
>  {
> -	bool			result		= false;
> -
>  	_ConfigNormalChipOutEP_8188E(adapt, NumOutPipe);
>
>  	/*  Normal chip with one IN and one OUT doesn't have interrupt IN EP. */
> @@ -52,9 +50,7 @@ static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt, u8 NumInPip
>
>  	/*  All config other than above support one Bulk IN and one Interrupt IN. */
>
> -	result = hal_mapping_out_pipe(adapt, NumOutPipe);
> -
> -	return result;
> +	return hal_mapping_out_pipe(adapt, NumOutPipe);
>  }
>
>  void rtw_hal_chip_configure(struct adapter *adapt)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200311070447.6909-1-payalskshirsagar1234%40gmail.com.
>

