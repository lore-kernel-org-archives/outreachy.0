X-GM-THRID: 6463500175393423360
X-Received: by 10.28.17.205 with SMTP id 196mr381888wmr.22.1504940166335;
        Fri, 08 Sep 2017 23:56:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.138 with SMTP id v132ls81870lfa.5.gmail; Fri, 08 Sep
 2017 23:56:04 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAbHML4BGX1RAWH4/W7tq1KaUibQIRgHwjhnUhQGWUu2XyhavvJuWPUCWNIpndX6GBCS+Jp
X-Received: by 10.25.201.15 with SMTP id z15mr375708lff.40.1504940164726;
        Fri, 08 Sep 2017 23:56:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504940164; cv=none;
        d=google.com; s=arc-20160816;
        b=wktUk9jdv2xOYbbEiMo+VSPwXtOXKMSIzRAaKCcG5wM8JRj0IRn4Q0r037tR6BSQoJ
         /HXiNVyepyhNiM6q+LiVajjS7+aBjUEi5Czt9YLfEOJhQUZdDr9k4L5P4WMtKR3W8QqE
         eXaniqhVVIRN38V96WT92WI/mgWipx45fFZSaVHEI1rz9XrzBc+U/CHsw9eIBJuYPqac
         iBIz2sKrgknmH8+D1mHb0M1VNsBHo1C8JNlj0N/5iV06S4oAvq6IZPrL6G9tiZ/ZC8Lr
         n6cb7eSy2QBC3QK0mPAHCRQs7JWkqUzpY1cm+Gww8gAbipXH21KxRw3h3sx4xKNyw6xX
         /DTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=8l3rtZ+5PpNClm9WOgfhe/Zu7Diimf+KeroO0Y2Gfrk=;
        b=pPiK0zNqo1qnDC5bYytxpgD/JClWcCswYTjJ3zX6cExDeRnZnhf+9E3yZ/jy4RHBrR
         nmsYyHVqTLQydILCg9RoWep7ysAm+haCJdcdG8BPJIc/w/Dh0UJ2MRxgOY+AgUeNIlmN
         evc2cchyh7rHlgFD6c7EKdlo7jO57f1ySR6lw0Brt7nraBgi9vibJ09ErO558+YgY84I
         YLlGa1rrTp6m2qdLgBLcGrHKLJrK0UBwILXlK8oqZKHAYwFcY0ccs+kgEsG/mmhxXcjZ
         En2W4LFS1uTo0xB+7YH8DMRRMl1aJ6OVA12jGH5sumsrkAD7nN96FyBSzLCs4AQ3h/gn
         W09Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z129si147100wmc.5.2017.09.08.23.56.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 23:56:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,365,1500933600"; 
   d="scan'208";a="236858501"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Sep 2017 08:56:03 +0200
Date: Sat, 9 Sep 2017 08:56:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gilad@benyossef.com, gregkh@linuxfoundation.org, 
    linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: ccree: Merge assignment
 with return
In-Reply-To: <1504907654-4914-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709090855020.2044@hadrien>
References: <1504907654-4914-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Sep 2017, Srishti Sharma wrote:

> Merge the assignment and return statements to return the value
> directly. Done using coccinelle.
>
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
> Changes in v3:
>  -Edit commit message so that it respects 80 character limit.
>  -Remove unneeded blank lines, that were added by mistake.
>
>  drivers/staging/ccree/ssi_aead.c | 14 +++-----------
>  1 file changed, 3 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/ccree/ssi_aead.c b/drivers/staging/ccree/ssi_aead.c
> index 5abe6b2..1d3b580 100644
> --- a/drivers/staging/ccree/ssi_aead.c
> +++ b/drivers/staging/ccree/ssi_aead.c
> @@ -651,7 +651,6 @@ ssi_aead_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>  static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>  {
>  	struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
> -	int rc = 0;
>
>  	if (keylen < 3)
>  		return -EINVAL;
> @@ -659,9 +658,7 @@ static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
>  	keylen -= 3;
>  	memcpy(ctx->ctr_nonce, key + keylen, 3);
>
> -	rc = ssi_aead_setkey(tfm, key, keylen);
> -
> -	return rc;
> +	return ssi_aead_setkey(tfm, key, keylen);
>  }
>  #endif /*SSI_CC_HAS_AES_CCM*/
>
> @@ -2224,15 +2221,12 @@ static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
>  	keylen -= 4;
>  	memcpy(ctx->ctr_nonce, key + keylen, 4);
>
> -	rc = ssi_aead_setkey(tfm, key, keylen);
> -
> -	return rc;
> +	return ssi_aead_setkey(tfm, key, keylen);

The declaration of rc should be dropped in this case.  You should have
gotten a compiler warning.  Always compile the code before submitting a
patch, and fix up any warnings.

julia

>  }
>
>  static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>  {
>  	struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
> -	int rc = 0;
>
>  	SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
>
> @@ -2242,9 +2236,7 @@ static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
>  	keylen -= 4;
>  	memcpy(ctx->ctr_nonce, key + keylen, 4);
>
> -	rc = ssi_aead_setkey(tfm, key, keylen);
> -
> -	return rc;
> +	return ssi_aead_setkey(tfm, key, keylen);
>  }
>
>  static int ssi_gcm_setauthsize(struct crypto_aead *authenc,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504907654-4914-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

