X-GM-THRID: 6463500175393423360
X-Received: by 10.25.162.201 with SMTP id l192mr344797lfe.39.1504904333390;
        Fri, 08 Sep 2017 13:58:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.35.68 with SMTP id j65ls190759wmj.19.canary-gmail; Fri, 08
 Sep 2017 13:58:52 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCuBe3iKj+t6aoShY3STfBzLGwSBM3qMkALKoX+9b9ki33roRe5fnxQ//p+PxbCjUmfBZLI
X-Received: by 10.28.138.195 with SMTP id m186mr55650wmd.9.1504904332369;
        Fri, 08 Sep 2017 13:58:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504904332; cv=none;
        d=google.com; s=arc-20160816;
        b=dxcx5nUQTWKo2EV9JxzavqMc8FvczmkIHWzeMm20nWhBSgfQfoqaEVTebFQWu0Rraw
         wMM5MWJQ0ROJXjCQITN2rCL2NoLTCRSNzMqnsYPdVssisDiWMHONvZPS9C8r4SELSiFy
         Ju0yAg7MxUIl4X0LABs+08guUciGD3fUYWvYTcw8QHqAhlXhKA7Dna5sppgay7gZnZka
         EQGwpbhw/umbWI+R2oKenIEOjPphp1tKTAINT78n2ckrWtrc2eayUbkwnHFKWuOg/YGg
         1JqQ/YbOz4JqSZKj58AyRmz4k3KgTwvniSogVYkGBG8lR4eGSH6XVtvdG06YbFJzKz56
         QjEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=oh+kvIgFL+2Gerrn/hvIpPjO+kSWj95INWmvVvcvvwc=;
        b=gBwEE4S+SEFfy0XBfB+VHNn+UXuNlkkgd4T1iVf1PBsjNP40xmNd7KdL9zj8CJl812
         eeio/6Sshn/yYQ3UvorYEUzHZRLmRc3ae7RFWhM1Gs0kC9Nw+NliWaQm30f4RSFdg8+/
         /kK8KJMR9sX1v685qjTRjzfpZLHtFVMkedPEp05F259URXuOeX5hAPtSiz3QIhEGGUcb
         jdpybIedbfSY0msYIg0pf1Q605rNVvZH/wuC+tSZwd865/1A5Pe5czK6R3qV0KgoDGfk
         YoVD5c+ed6UybV2+t8vRaW8tqVmF02O+xwCKgNZGdK/VDXhhi8nEMDOlzD4dcsgnaEh9
         PfXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b203si170078wmh.4.2017.09.08.13.58.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 13:58:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,363,1500933600"; 
   d="scan'208";a="236838301"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 22:58:51 +0200
Date: Fri, 8 Sep 2017 22:58:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gilad@benyossef.com, gregkh@linuxfoundation.org, 
    linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ccree: Merge assignment
 with return
In-Reply-To: <1504904135-3973-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709082257480.2510@hadrien>
References: <1504904135-3973-1-git-send-email-srishtishar@gmail.com>
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
> Changes in v2:
>  - Edit commit message so that it respects the 80 character limit.
>
>  drivers/staging/ccree/ssi_aead.c | 18 ++++++------------
>  1 file changed, 6 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/ccree/ssi_aead.c b/drivers/staging/ccree/ssi_aead.c
> index 5abe6b2..f4532ea 100644
> --- a/drivers/staging/ccree/ssi_aead.c
> +++ b/drivers/staging/ccree/ssi_aead.c
> @@ -651,7 +651,7 @@ ssi_aead_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>  static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>  {
>  	struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
> -	int rc = 0;
> +
>

There is still a problem here.  You don't need two blank lines under a
variable declaration.

julia

>  	if (keylen < 3)
>  		return -EINVAL;
> @@ -659,9 +659,7 @@ static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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
> @@ -2214,7 +2212,7 @@ static int ssi_rfc4309_ccm_decrypt(struct aead_request *req)
>  static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>  {
>  	struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
> -	int rc = 0;
> +
>
>  	SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
>
> @@ -2224,15 +2222,13 @@ static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
>  	keylen -= 4;
>  	memcpy(ctx->ctr_nonce, key + keylen, 4);
>
> -	rc = ssi_aead_setkey(tfm, key, keylen);
> -
> -	return rc;
> +	return ssi_aead_setkey(tfm, key, keylen);
>  }
>
>  static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>  {
>  	struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
> -	int rc = 0;
> +
>
>  	SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
>
> @@ -2242,9 +2238,7 @@ static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504904135-3973-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

