X-GM-THRID: 6949956774560530432
X-Received: by 2002:a67:f759:: with SMTP id w25mr14298016vso.17.1618220588758;
        Mon, 12 Apr 2021 02:43:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:14ed:: with SMTP id f42ls923421uae.8.gmail; Mon, 12 Apr
 2021 02:43:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwkptsMNI2O4MPZG0vZTF5zX2d5cdZ961MMCQQawtXdqCqhZAXZWWnu0JiiVfAEh8t6Riis
X-Received: by 2002:ab0:5961:: with SMTP id o30mr18725609uad.7.1618220587711;
        Mon, 12 Apr 2021 02:43:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618220587; cv=none;
        d=google.com; s=arc-20160816;
        b=lHvAMuXBAwUunxTZ0UYcczQwhLr7oTLsgKDYc3z3QmpEF1gPWRzN2c0U+iuG59U5Cx
         uh1b9jNxxLZjMxk/2hZF7/l6jLBRZ5ACkBcc3iS77Fe/ynIc3atVu4ZR0YnzIlGrS+g2
         swBMQIepjnE7qkZqtjkC0I2KbEKKItn2LtFEnvJCLBv0IdfE0YbhZ9ycyTpccvCDZU8w
         ft7ymxuTdoflgWY289v9YObvM6TDoLt4M5vmfcIQAdD7x8F88eqFvYI/krzWFRZ7JAAu
         WxFBRvEbkmU3+YO00mgPOaZDVp/b2WZXMKMkNCPBZ3SjK66DaXQmoPFohAL4VpVMZWja
         K/0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bhhrdGWFlkhDFENDqPRfZJy6kuhwtk8K+TbIqXKMsbw=;
        b=09LtcjRiJpWAABSXtlL4KoCFCbY/Jw2lzJXF4VTOdVGQHTfEYgSsrx5SrOLo86GGw2
         1XVs6p2b2ScGDWB3WRJ5r4BGrtOQw55OERfLWgQqFS7kGM0odE1pLmTVCAMDNwdgUiD5
         sE/8OxY3N6auiuwrC1s5jZ8R6mwFPuPKmcAJjLrBDs3WD2i+Ybd92IDDl7xnjGXo1qMF
         04PdFyS+0xcVlpx6Xn7FNxzvyptFv+NKKkMo0a6KMwdOk8IJqnllHO6oaYkl2WW2m7Bt
         46aMhCCjXFrEpPS+jZkUcRxQP5Nt1iei74MMCtr0+/DEQbUCEx0SXBUDkHF95Vhr7pp+
         N/TA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=UhKxHYqB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u142si672933vkb.3.2021.04.12.02.43.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:43:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=UhKxHYqB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 40196611AD;
	Mon, 12 Apr 2021 09:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618220586;
	bh=WsiNqKTdYhZHLWI0ixdu86RNc49vtM155yUiz3ZveTY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UhKxHYqB4zdIGW991QXkB/gNj9Zf+zhvVKr6EM7AQHnx32mMHyXOS5F/i1/utUORd
	 YpYqn4nqdIan2yPcOclvUZpr5jIUUQCS7PCk5TBESbEnS7voZ8f6/4ryN1I1ZJw0uO
	 3FD25bGNDPi3O2+zNNYCFnuj9+2kyxWn8KIRwoD4=
Date: Mon, 12 Apr 2021 11:43:04 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: Remove variable
 set but not used
Message-ID: <YHQWKMu/KuhZ9Oxs@kroah.com>
References: <20210411183634.18385-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210411183634.18385-1-fmdefrancesco@gmail.com>

On Sun, Apr 11, 2021 at 08:36:34PM +0200, Fabio M. De Francesco wrote:
> Remove variable "int ret", declared but not used.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
> 
> Changes from v1: Change the text of the subject and log.
> 
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

Breaks the build, why did you not test this patch?

thanks,

greg k-h

