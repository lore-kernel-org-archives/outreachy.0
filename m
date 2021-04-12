X-GM-THRID: 6949956774560530432
X-Received: by 2002:a05:6e02:d41:: with SMTP id h1mr7238532ilj.0.1618219880251;
        Mon, 12 Apr 2021 02:31:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:3410:: with SMTP id b16ls3662399ila.1.gmail; Mon, 12 Apr
 2021 02:31:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzDC/TueGZzGTu029ZG+iBei3K0hEpRO4+QWIJwHQdCM9ZjAYYmkuB/hYxyigBfV9NQo8FU
X-Received: by 2002:a05:6e02:1987:: with SMTP id g7mr981972ilf.164.1618219879557;
        Mon, 12 Apr 2021 02:31:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618219879; cv=none;
        d=google.com; s=arc-20160816;
        b=juuMw6L0WKg4GLNcKyrQ6RO/BP4MqApAhfnHc5pjQlKpwtG7GYP6PjzPNlGev89DWv
         WXgpa7ds3lsTwOmryTGNgteatnSq7FptnwDDgOEiofEjavHGZ4/QhcFV4TWxGeGYa7D6
         ZhoCiOPciw3mwmUj2WUQAo8T1iUY7TdJw9fOa6AyLz9+hYKlNCdPATjfIuyv/5uLIKKy
         m4Y8q+rStkq0A5LjCd3P+R7ucbjYGS4urFf+OKudBRj3I2vIigMXt9SeA7hPIQ8QiFwQ
         cUjBOBI7PngovPhUDHSVQLcvCIxm73Tx/Ced/JlZ3o24B6l/1RHePB9qefavwEZzV3cy
         IVsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6JUGCN7ljcGJOxvas/EgKWl+1qxJfZ/EF0albfYObYQ=;
        b=pjLo8g/Cw3ZbPcyp8rTkcDZ5czD9qzfQjYTXc478LML/CMaXSHvqi0LcapRDI2LNZb
         Wf08sa1t2Pw+e2o0Go84u2JmBtQ1WvZQAy59geXLAjcwVWqNun9BIWdBMIzD7/ey0OZM
         54P01zvN6qfkynRVGCwV8FbXjViUog0VS1xyGCDyyeaKj4Pt0lbmJcI+KJ2jbaD9UffD
         F1lfCbs6OKR8yGvzmzUR6wdSlaY8/1HhOxNF7aZyPtV7EgSfrjSL4EsrrPvonvlr1DXx
         IwzX9NsJpTnAYf7J92kOAELGl04jtcyeYnIJAEs5u4aItnwjnAqTu+pUwFwsWBUfxbsJ
         eqOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=b6gCbW6m;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o3si252704ilt.5.2021.04.12.02.31.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:31:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=b6gCbW6m;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6D9B16120B;
	Mon, 12 Apr 2021 09:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618219877;
	bh=KFyKD4Fg+N+TvNqJOb+mIemp9paR8DOXakCsnemb9XY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b6gCbW6mvQDZpUGpIRg7p1fKvDiz+EN4TDLZ5CvhHI90uzE2pugP+sl6WmkdV8bj8
	 llLeBGMJuD6jN+octzWZAVOO4iy2P+KAsIlALHkk6JIQ78cPbf5Q4E+drTcUmw4Zfp
	 DYxkpx7VSRshgM7S8lCLpVWp1fT2kBHz3f6rZh8c=
Date: Mon, 12 Apr 2021 11:31:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove variable
 set but not used
Message-ID: <YHQTY4fGJfsdSjXL@kroah.com>
References: <20210411174143.31618-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210411174143.31618-1-fmdefrancesco@gmail.com>

On Sun, Apr 11, 2021 at 07:41:43PM +0200, Fabio M. De Francesco wrote:
> Remove variable "int ret" which is instantiated but not used.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index f48186a89fa1..30055de66239 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -902,7 +902,6 @@ static void rtl8192_hard_data_xmit(struct sk_buff *skb, struct net_device *dev,
>  				   int rate)
>  {
>  	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
> -	int ret;
>  	unsigned long flags;
>  	struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
>  	u8 queue_index = tcb_desc->queue_index;
> -- 
> 2.31.1
> 
> 

Did you test-build this patch?

