X-GM-THRID: 6755228047172960256
X-Received: by 2002:aca:5413:: with SMTP id i19mr4995612oib.121.1572973125904;
        Tue, 05 Nov 2019 08:58:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:68f:: with SMTP id k15ls948757oig.15.gmail; Tue, 05
 Nov 2019 08:58:44 -0800 (PST)
X-Google-Smtp-Source: APXvYqzCndonyebp4517SiWTYMW1LUq4406mE/UGtedT9KUHQ5Ru2bwMNl+9aW0qupNWJycjjIjq
X-Received: by 2002:aca:ead7:: with SMTP id i206mr20959oih.0.1572973124858;
        Tue, 05 Nov 2019 08:58:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572973124; cv=none;
        d=google.com; s=arc-20160816;
        b=l07mnQ2FwewhkOqDDtvD5oNE/CVXt4rGVfsv1SStE7Q4Jx+ty9ghMIVITcPdvvDvrc
         nSqveiqYP4T4mD5Q0YiFfMGt+H38c/8rk7JPgt7DNwu5T5wxWLKIiEDdYX1msCaUKl8W
         yIe5VJCGA5uhJ6qBZ9Ssh/o9qj7IVCsBTYxds52egkQ/uKF/XRwkmeldwYG4zNYEo87n
         MxdhZnuZUx7aPlfses23eMQWfJH+o4YQKAPy1WjgXZaWfxYMDi67VK/I0mhZK84UiYTN
         ZjiFeyuuiKvze1FqLWZmM0eWaWjbA1RNx3/0X+ZQwnqFzZTw6XLHxIEP+Ji4x0cjhlX3
         5g3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Dl9bHDhKTEbXvBTx5v7EkfgVK2MTS9g/bBACDQLo9as=;
        b=IDGWm2fLZiUx6uvXVgNUjq9B/7Lg2qKmRGG9ecLfqtqBMDnRbVGpAwUtXQopRLewHh
         vil4MSIC3alnHm+yjQGsLJOkUA/Li9DPalkQWTlXk4ED8qcEyr5JVGQJIyqj5NFVPW3N
         Ge1rW2woIln+lnNpdTgaHJPboH2uzi8bpF6i7EqH+ndo9hPbzSIyDin+lrTPPxFtCwf8
         z0WFQ5NB4OoMDAChd9pSszYKusyCVQdJgB6bdNCjeMzE3ZagrcNW2lgJUQROTbrWRwje
         ImT9MdYZm8Z26WTrtj4PxyI/tjlMSayi9yrfku7cR6c8UZNPkadRWflg33fb3XdsHWw1
         FvPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="xA37kBO/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j26si25427otk.0.2019.11.05.08.58.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Nov 2019 08:58:44 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="xA37kBO/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.119.166.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A4FF421A4A;
	Tue,  5 Nov 2019 16:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572973124;
	bh=ijrMEy3QSDnHSz69vNQI+6g8XroXcC10lYyoKcqdpYM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xA37kBO/5kPl47uD+Y1diUqKati0ZihtRbNo1ElQXvoQtVTAkhI7YIx2FvuyFfrbT
	 L9JpTrdvFm1ovig5a63o+fLrguUUzeLsppLT4sOGMqC9uxZeBtB5t4RULDtZRm0HPX
	 Fn96WRdYqKHwszgc54ClFJT4J19BQMmjkKM0rQao=
Date: Tue, 5 Nov 2019 17:58:35 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: mt7621-dma: align to match open parenthesis
Message-ID: <20191105165835.GA2776110@kroah.com>
References: <20191105005306.173526-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191105005306.173526-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Tue, Nov 05, 2019 at 12:53:06AM +0000, Jules Irenge wrote:
> Align to match open parenthesis.
> "CHECK: Alignment should match open parenthesis".
> Issue detected by checkpatch tool.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index 94c2c708dc92..c8dffe7f0213 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -569,8 +569,8 @@ static void mtk_hsdam_free_desc(struct mtk_hsdam_engine *hsdma,
>  {
>  	if (chan->tx_ring) {
>  		dma_free_coherent(hsdma->ddev.dev,
> -				2 * HSDMA_DESCS_NUM * sizeof(*chan->tx_ring),
> -				chan->tx_ring, chan->desc_addr);
> +				  2 * HSDMA_DESCS_NUM * sizeof(*chan->tx_ring),
> +				  chan->tx_ring, chan->desc_addr);
>  		chan->tx_ring = NULL;
>  		chan->rx_ring = NULL;
>  	}
> -- 
> 2.23.0
> 

Why did you send this twice?  What changed?  I've dropped both, please
resend and say what changed...

greg k-h

