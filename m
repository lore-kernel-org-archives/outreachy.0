X-GM-THRID: 6948342597010063360
X-Received: by 2002:a25:ac0c:: with SMTP id w12mr5878222ybi.393.1617816463176;
        Wed, 07 Apr 2021 10:27:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ade8:: with SMTP id d40ls1292543ybe.11.gmail; Wed, 07
 Apr 2021 10:27:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzyKtiXJheU1pPFGd8yE3iXpWf02j6FVh/1V0oSmYTQ7rF0I6jXFSkAfDID5OpQK9XoAxi8
X-Received: by 2002:a25:556:: with SMTP id 83mr5375085ybf.411.1617816462329;
        Wed, 07 Apr 2021 10:27:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617816462; cv=none;
        d=google.com; s=arc-20160816;
        b=c5MFkD6HkjpM75CqqiJMfYW0RWiLEY0THl9eMrpTh3WYqjuyKP+jfHtaQBGihQ4MDD
         5G5irqoQdPI091ZWFcaaJl/+A5Cyyp71OXugzfZj+5ads19+pZV46SDUIG832TSVWGtZ
         oHh9RWgdZvtvAkr2MA2gGXzEBcZfD0qtViKHUxHehWM9ESeDA+MCq5laNef2uzeGWT1a
         MwEuNESqN0RneJ+b7A4IRIr/4Z71DBHphDhZrEYkal9byAa1eUeFdSzxTfxAoYashLWy
         D72Pku+M9rrEJoWrUqniEXTqKiIEy2oyFrzHUMGE9TcI/rw1jl/xv6KY0tyk0ASjMP20
         O62g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WMDlngQSszla3xRJGMdVjy3Sh9oR73Ay2DNmg5Wiog0=;
        b=MpUn5juLjCHpYdSsjV605Gq4jx8UUchoBxn0B231A78x2ujXX7zFeLojR8ChlzZf/N
         UugV2dcwMdxJFmGFmLgZOt1W6oTgJU3+ohq8VEvcnh2IfFNTg5xT5Zq2vwnPfqid8Zjp
         N5GKw6g8ELVGAwhE5t9T8mlkiBUBW/rYKm3jEosmzyzTCrf/wbi+dnHhDBmpdIzzom1s
         jdIfmIM8HwyNllgYGoENRmu9qx0iwpRpw1/al0UdY+FPL4WG7MbAi6RhNxD2yCn3V9dV
         a/KpgqFCk8VVCxP6QOW5SBMFwxm4t+Ht6VZS3l9Vct2k1to4ilyV0jJyVWllWJrqSSdL
         5Q2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=TWIntSl8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l14si1536585ybp.4.2021.04.07.10.27.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 10:27:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=TWIntSl8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id B331D6121E;
	Wed,  7 Apr 2021 17:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617816461;
	bh=wML+tSnxv9IbA86AT88LJuFFqghf3Jd4Gqq7cIZVAjM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TWIntSl8ESTsWfdXaab1zkv8l1PqPUKvLETbEskfSPyETrRZMXAV2mLm/RRba235w
	 8LejBLCGve0bCLm7zsHYLrmjwKoXEwgzioWmjuVxDm9Puarr3gbE68932ZuvgmKFbY
	 tyKnIHwMLJikfU3qOCcBofZhr/GGKjKj/eV7E4/U=
Date: Wed, 7 Apr 2021 19:27:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Remove
 camelcase
Message-ID: <YG3rihKrS2tvr1tS@kroah.com>
References: <20210407163000.27611-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210407163000.27611-1-fmdefrancesco@gmail.com>

On Wed, Apr 07, 2021 at 06:30:00PM +0200, Fabio M. De Francesco wrote:
> Remove camelcase. Issue detected by checkpatch.pl. For now, change only
> names of static functions in order to not break the driver's code.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/sdio_ops.c | 44 ++++++++++++------------
>  1 file changed, 22 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
> index b1f02bb9f0a9..5e28818e58e0 100644
> --- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
> +++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
> @@ -19,7 +19,7 @@
>  /*  */
>  /*  Creadted by Roger, 2011.01.31. */
>  /*  */
> -static void HalSdioGetCmdAddr8723BSdio(
> +static void hal_sdio_get_cmd_addr_8723b_sdio(
>  	struct adapter *adapter,
>  	u8 device_id,
>  	u32 addr,
> @@ -97,7 +97,7 @@ static u8 get_deviceid(u32 addr)
>  
>  /*
>   * Ref:
> - *HalSdioGetCmdAddr8723BSdio()
> + *hal_sdio_get_cmd_addr_8723b_sdio()

What does this comment even mean?

I think you can delete it.

But really, that's a crazy function name length, can you make it any
shorter?

thanks,

greg k-h

