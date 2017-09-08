X-GM-THRID: 6463500175393423360
X-Received: by 10.28.145.206 with SMTP id t197mr307113wmd.11.1504901550252;
        Fri, 08 Sep 2017 13:12:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.70.5 with SMTP id t5ls174788wma.18.canary-gmail; Fri, 08
 Sep 2017 13:12:29 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBDZEuFee9XOtnyyvYBnd2d1TSbhUWk53pEjGhwTr6OluQ73q5hChCfOgShCaBN7AQWxjRg
X-Received: by 10.28.145.200 with SMTP id t191mr306019wmd.10.1504901549287;
        Fri, 08 Sep 2017 13:12:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504901549; cv=none;
        d=google.com; s=arc-20160816;
        b=VKRks2b7RivCtBFVcJ7ZcHjEIBbXdJc72xhiqOVljtcYKXKYM1upp8noxH8wKQLkoz
         xC+ComE1i38+GUo/rrDrvGvdShfnl2qWoRZx9c21/zITZB1/wIaOO7/Y3PnvkVS4W023
         SQv1dXWeinK7baGeS8/pUflA6iry/QTBELidVz5W0ho9rUsMPB2xxhiKRctPjnoQR1DH
         +uS7d0BGP4tnqfG4LloUV3lFTaiJyqu7jm6OLr1qpO0VnwWkMD5Ey1KQauFoBGPVtG7G
         CEFmnemj/aVTCPT+bf3nFNtf1J5YIeKm9frWLMaztL5SnAAa/f5wNmYajuH9JKuH4Rea
         7M8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=/cYLrEEir7XbvLu5s5Waj6QBbcIMKzR3NkXBY/deCqk=;
        b=rW5OP+IiEoZ3tF/pV8JP8q6jZbplS6IZI9LCm1dpPX1Nq3C1txrOQe9pOyzC6NNfCN
         FRyxRIsoTs0tYpd+ucJRXl2ZH9IF9O9NGC06oyYukIFyOTfrDqsbKKDbcHoXJawrUIW/
         InhE8CiS2kfieW7dImZumSeyDF/zGn8I+DzMEhF11CmWZ7nETZaCFG26HIF4G7F9Zk0p
         q93yEcyKBfpU2tnethlzeaDTUOkQCo6yOZEqInYciRVPIVqkn8HSoPEexSEYWR9YT8/F
         wCDswm0LNYUhOliXWE3jAWVieHHD125tV1aGVj0XYplWp8l1D5lB6t4brYYy0lsrnoaf
         OVAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r3si150938wmg.6.2017.09.08.13.12.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 13:12:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,363,1500933600"; 
   d="scan'208";a="290230301"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 22:12:28 +0200
Date: Fri, 8 Sep 2017 22:12:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gilad@benyossef.com, gregkh@linuxfoundation.org, 
    linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ccree: Merge assignment with
 return
In-Reply-To: <1504900895-13110-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709082210410.2510@hadrien>
References: <1504900895-13110-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Sep 2017, Srishti Sharma wrote:

> Return the return value of a function directly, instead of first saving it in a variable and then returning it. This change was made using the following

Your commit message should respect the 80 character limit. The above is
one very long line.

> semantic patch by coccinelle.
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
>  drivers/staging/ccree/ssi_aead.c | 21 ++++++---------------
>  1 file changed, 6 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/staging/ccree/ssi_aead.c b/drivers/staging/ccree/ssi_aead.c
> index 5abe6b2..6bb98f7 100644
> --- a/drivers/staging/ccree/ssi_aead.c
> +++ b/drivers/staging/ccree/ssi_aead.c
> @@ -651,17 +651,14 @@ ssi_aead_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>  static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>  {
>  	struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
> -	int rc = 0;
> -
> +

I'm not sure what happened here, but you should not be removing and then
adding back a blank line.  Likewise below.

julia

>  	if (keylen < 3)
>  		return -EINVAL;
>
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
> @@ -2214,8 +2211,7 @@ static int ssi_rfc4309_ccm_decrypt(struct aead_request *req)
>  static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>  {
>  	struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
> -	int rc = 0;
> -
> +
>  	SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
>
>  	if (keylen < 4)
> @@ -2224,16 +2220,13 @@ static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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
> -
> +
>  	SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
>
>  	if (keylen < 4)
> @@ -2242,9 +2235,7 @@ static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504900895-13110-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

