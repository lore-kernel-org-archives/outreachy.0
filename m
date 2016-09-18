X-GM-THRID: 6331266648892243968
X-Received: by 10.13.233.6 with SMTP id s6mr2854290ywe.63.1474195254942;
        Sun, 18 Sep 2016 03:40:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls8796142otw.9.gmail; Sun, 18 Sep 2016
 03:40:54 -0700 (PDT)
X-Received: by 10.157.63.217 with SMTP id i25mr2844517ote.87.1474195254411;
        Sun, 18 Sep 2016 03:40:54 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z4si3909394pam.0.2016.09.18.03.40.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 03:40:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B088A997;
	Sun, 18 Sep 2016 10:40:53 +0000 (UTC)
Date: Sun, 18 Sep 2016 12:40:59 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2 3/4] staging: vt6655: card: Break multiple assignments
Message-ID: <20160918104059.GA10846@kroah.com>
References: <cover.1474187686.git.namrataashettar@gmail.com>
 <fe7f635d9b75bb93286245415d4a54497a8a4842.1474187686.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fe7f635d9b75bb93286245415d4a54497a8a4842.1474187686.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Sep 18, 2016 at 02:35:39PM +0530, Namrata A Shettar wrote:
> Break multiple assignments on same line to resolve checkpatch issue.
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/vt6655/card.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index afb1e8b..00e7858 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -528,8 +528,10 @@ CARDvSafeResetTx(
>  	struct vnt_tx_desc *pCurrTD;
>  
>  	/* initialize TD index */
> -	priv->apTailTD[0] = priv->apCurrTD[0] = &(priv->apTD0Rings[0]);
> -	priv->apTailTD[1] = priv->apCurrTD[1] = &(priv->apTD1Rings[0]);
> +        priv->apCurrTD[0] = &(priv->apTD0Rings[0]);
> +	priv->apTailTD[0] = priv->apCurrTD[0];
> +        priv->apCurrTD[1] = &(priv->apTD1Rings[0]);
> +	priv->apTailTD[1] = priv->apCurrTD[1];

Does that look correct to you?

(hint, odd indentation)

And really, the original code is fine, I would recommend just leaving
this alone, it makes more sense as-is, don't you think?

thanks,

greg k-h

