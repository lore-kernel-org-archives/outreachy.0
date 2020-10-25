X-GM-THRID: 6886892993455849472
X-Received: by 2002:a4a:906:: with SMTP id 6mr7755329ooa.65.1603617294959;
        Sun, 25 Oct 2020 02:14:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5c0b:: with SMTP id o11ls1383921otk.2.gmail; Sun, 25 Oct
 2020 02:14:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyXCl367JLOMoT8WyooJ+uKt6PMKBFu5g86Yg5xtD3OuDiTnA/HxL+zgBcd0t4aAf2dZW7F
X-Received: by 2002:a9d:7308:: with SMTP id e8mr9056105otk.238.1603617293785;
        Sun, 25 Oct 2020 02:14:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603617293; cv=none;
        d=google.com; s=arc-20160816;
        b=azyOYCGJ/CO7cDCuElC0d1E6rG7YiI7hmjymh+m5QqmemovCXfZstjsakMAfciHDmV
         F5tgHpYUDw17snD4UDYRY+r7aedbmrdZXZc1TTx2Fct9HE724nEC885AoxTmMHHbnkEz
         puKmh6OrSCD1o/yumz55g7yPtGydmSJgWIPve+VmdzzRxqsh1l9kI6bB2bv2r8itN+vR
         YRxoc1DMFpLdCwGBuC1qQjw6dKE9xMUtHttliN53Ws3Nd3vc5P8gLS1Npra9BbWi/zbd
         49msONKOBbfz3hSIJbMuhfkfL1OvKCj+faxxM/M0oMzN3sWuTt66B8TqgPyNDcUHAqwu
         G8yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ym6QnkGSfaMpjaBLlVN444ji0zMLBwezACsxJzyVxfI=;
        b=zrE9AuMC9wcDL6B2+7vq1ASGp+OCsVWtoIuLbRVW+HTFqgYVIZRdqTDOFjU0CugwDg
         DMEKYbI0sj0n5a+yAs5xV93poanNr1+Ru4ZGPGkqMUSGENAPcCvk8u00YYCqk73aIHiL
         4LBwJUoSqEUVq4NzinZXuHlyzsEQPWDbWSb3wTklyXs5ptuljMG5m3wc0pvYYHUhcLCa
         n0DxLMQduz/SpYsa4W+q3E7wyUrdP9H3prL5ODYINRe5il9iUKUzTatGvxekEsMi/vQN
         LkXNv8eFw6euu5BoKlLrmF7md4Phhu6Ia47/6GTPPpvrQVwwlW2g/S1lcASWO5kI8/j7
         ASTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="QHkJ/pXx";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a7si437185oie.4.2020.10.25.02.14.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2020 02:14:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="QHkJ/pXx";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3A2B5208E4;
	Sun, 25 Oct 2020 09:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1603617292;
	bh=QE6+p4TW2AVU9IOf7id53bJspY9d+JnItHSzdC7u79k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QHkJ/pXxhWDD0g+xkpR4lUEU5ogBwwmwf93hXvag7vaVQ1HFgnSeScs7yDdAUefbj
	 RNRZUsLDLqUxXD7m0KC3Lu8t4BFowHEDMisBF6982xXulcTdpnkFrkkdeFDQe3ZoYi
	 wytwbRZPJIKdxfzfj5d3GTvs1qXdRL+Rdes8iDGY=
Date: Sun, 25 Oct 2020 10:14:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Elena Afanasova <eafanasova@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: rtl8192e: replace kmalloc/memset with kzalloc
Message-ID: <20201025091448.GC99582@kroah.com>
References: <70502773399d4cf064d3363c41cce19191710112.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <70502773399d4cf064d3363c41cce19191710112.camel@gmail.com>

On Fri, Oct 23, 2020 at 12:01:47PM -0700, Elena Afanasova wrote:
> Replace kmalloc + memset 0 by a call to kzalloc which zeroes memory too.
> Found with Coccinelle.
> 
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
> Changes in v2:
> 	- correct the subject line
> 	- correct the commit message
> 
>  drivers/staging/rtl8192e/rtllib_tx.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
> index e0d79daca24a..c9959bb4ab63 100644
> --- a/drivers/staging/rtl8192e/rtllib_tx.c
> +++ b/drivers/staging/rtl8192e/rtllib_tx.c
> @@ -205,12 +205,10 @@ static struct rtllib_txb *rtllib_alloc_txb(int nr_frags, int txb_size,
>  	struct rtllib_txb *txb;
>  	int i;
>  
> -	txb = kmalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
> -		      gfp_mask);
> +	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);

Same here, please always use array_size()

