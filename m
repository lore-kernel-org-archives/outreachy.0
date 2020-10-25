X-GM-THRID: 6886889197397868544
X-Received: by 2002:a37:9acb:: with SMTP id c194mr11646509qke.288.1603617280868;
        Sun, 25 Oct 2020 02:14:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:919:: with SMTP id v25ls3025154qkv.6.gmail; Sun, 25
 Oct 2020 02:14:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwJ5CZM9wM0LRyr076DLDNBnN7NY6Bs4UPAjQvOEdkOtPFThuBHy+lv5W6IO3anwZydCBDx
X-Received: by 2002:a37:9c4f:: with SMTP id f76mr11475736qke.403.1603617279639;
        Sun, 25 Oct 2020 02:14:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603617279; cv=none;
        d=google.com; s=arc-20160816;
        b=u55hcvRlXcSYyXEms3fGdEEo17NTA5SdWrQepACV2H4xeun6HBXAHOuYXDm5QOlsct
         QL8dExMVxka8bbOKE1Va5BfE8oq4Gntjme+P4lMmT2cqOpqZHK/hLsJRsEqzQyqSoQ8U
         hNQb/vNTcVLw+vx2Nt6bgWI1ULEOiQR7q8+I+d0WsaY3nP2vVbG9U8FCAoMzN0hd9CrK
         ZP7aazq65MznBVuPkNNg8EjZg/dLoFd6br6ywQTvi5ZAT/ID7njAVb/+XztLGUlfY9/g
         EeGWwXU63JkgJLXBEhAcMBPx6ucG+3FT9HpLdea6rFInkH9Rk5+MvJrJ5hreC/FoK28D
         IORQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LNWd5W9WVXSOz/8YWh04w/NAV1T0JF4tAzooVDgoqo8=;
        b=hQoSkRHNcmc/AlHC6SelMwY2VCf5rTizvWaRwbtGbpMjqxSLpd4EOxmt9LLgjkRWKY
         eXhkThhGyIbP4TT75ZroPE2GKGe3h25Yg8odEq/0UJQezRyNYXd9nvw1AU5xsA48z1Zh
         rnr+nYcw8f+SGYIQxCrswPbqKd/MrUIdEZQQjt3MexZ2+mBMqSksaHcce59Nl+1r4Atk
         Tu7hbPwYAyJ11js/xJvJepCrjtTQl3o/T79yTiqXS/443sQDBoATLS30f4njN6/jE825
         kH1vdbsSlvjaZgxjMurY2PtgdQLICx0Ip/tiD9oYkgB2rPr3imfI4czEAB7+P8B/j1Wq
         Cx/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0LFMCOIV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i13si79425qko.4.2020.10.25.02.14.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2020 02:14:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0LFMCOIV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 78B13208E4;
	Sun, 25 Oct 2020 09:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1603617278;
	bh=k38UpENOjh1EMe1gvmyk1XHbWPRBC+PTE+IcqTd7/mw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0LFMCOIVcuDvEb7mUchXhldCf0LNjTRRv/VvIA80n8Oq7qt+5Vin9xrsgER0cZKxT
	 Vz+W1H6NPkYCNzE4w+UJyh3ArL58U2GKWPNTaKASogq8slNA9AhMLBpXd/aG1B9cLM
	 wmQh05mP31Fn26Vp5OUzCFQCjPoLPDbwIcboiNlo=
Date: Sun, 25 Oct 2020 10:14:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Elena Afanasova <eafanasova@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: rtl8192u: ieee80211: replace kmalloc/memset
 with kzalloc
Message-ID: <20201025091434.GB99582@kroah.com>
References: <b0d792de290fd492ac77cfa574150d67d3b6276c.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b0d792de290fd492ac77cfa574150d67d3b6276c.camel@gmail.com>

On Fri, Oct 23, 2020 at 11:47:05AM -0700, Elena Afanasova wrote:
> Replace kmalloc + memset 0 by a call to kzalloc which zeroes memory too.
> Found with Coccinelle.
> 
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
> Changes in v2:
> 	- correct the subject line
> 	- correct the commit message
> 
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> index 63a561ab4a76..fb8483c499b3 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> @@ -227,13 +227,10 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
>  {
>  	struct ieee80211_txb *txb;
>  	int i;
> -	txb = kmalloc(
> -		sizeof(struct ieee80211_txb) + (sizeof(u8 *) * nr_frags),
> -		gfp_mask);
> +	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);

Can you please use array_size() for this type of math to ensure that the
multiplication is safe?

thanks,

greg k-h

