X-GM-THRID: 6463500175393423360
X-Received: by 10.28.54.30 with SMTP id d30mr446820wma.6.1504977281909;
        Sat, 09 Sep 2017 10:14:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.174.129 with SMTP id x123ls481848wme.3.gmail; Sat, 09 Sep
 2017 10:14:41 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb41hvboflyD0WaK2voJt8KyLL9xtJAGkzhH2uuC7u8SznQKuvBmSgHVMJvEAWrn07/wkqD7
X-Received: by 10.223.185.55 with SMTP id k52mr340384wrf.23.1504977281056;
        Sat, 09 Sep 2017 10:14:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504977281; cv=none;
        d=google.com; s=arc-20160816;
        b=LFuf3gATLqzCmq/pd2GOnpT+kehCV+3vYuS6Hd5zpWQavn3wNZXfinWxw6jO5oglHu
         Jj7lxSdPlb62StDs8UouqUD3hZwcvZR83F2ZzEej+RPjWLsaxSMk/EAtzImH9Smb/f14
         H2FXILaM+A0Wqwg0MdSX325Vrlsg6tNs2586QftVieoK+hP3c17Npu/I1RCNIdHSUSvl
         Qd5edafSliMB0IJ2nwlEO4izjF3toXcjuf31hNHoe1q2LeD9daaeml63F0p3CydKG59c
         w17d0KyAZe08ElkTusegBh3pOqdN1TJx2F/mK2fOr7fVEbbIyBJf6140BIWbVGzB9etT
         /Jug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=ljkx3Sk+PuKQh894TE6s3OWIcTFdCRznhcTtnDj5nmI=;
        b=m5W5ZT+ktW4o8GRNTYOqczYZNcBwSgbc3kJg1VquZxr79BccO5DIlrIMtZew87CuEb
         3SFHSsCsH+pUCmZnO1bKnRDVlDMML/4EcpZznX3mcNsg6+BGc7uPyeprIgBNP3AjzQHI
         2JFB5eLN8f+pNj3lmihC31427j5wcufzq39ufGu56xshZmk8latWeLNIuIORxrF1SnFx
         cFU7U3DTD5/wr72NiBdNRUWY6Ln1dz9nxoiAxA5ACdyTwWgeFvMsu6zbxAJepywzVKvV
         Wj2uaR4zufJzNDtzIdJuNhPu4+6AdpMrYUwGJV8pS62jkWxTuZv9M1F0GOvgLqxle/8Y
         bsug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 200si467849wmj.0.2017.09.09.10.14.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 10:14:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,367,1500933600"; 
   d="scan'208";a="236892910"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Sep 2017 19:14:40 +0200
Date: Sat, 9 Sep 2017 19:14:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gilad@benyossef.com, gregkh@linuxfoundation.org, 
    linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: ccree: Merge assignment
 with return
In-Reply-To: <1504943331-4636-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709091914250.2149@hadrien>
References: <1504943331-4636-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Sep 2017, Srishti Sharma wrote:

> Merge the assignment and the return statements to return the value
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

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v4:
>  -Edit commit message so that it respects 80 character limit
>  -Remove unneeded blank lines
>  -Remove declarations of variables that are not used
>
>  drivers/staging/ccree/ssi_aead.c | 15 +++------------
>  1 file changed, 3 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/ccree/ssi_aead.c b/drivers/staging/ccree/ssi_aead.c
> index 5abe6b2..84fcb75 100644
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
> @@ -2214,7 +2211,6 @@ static int ssi_rfc4309_ccm_decrypt(struct aead_request *req)
>  static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>  {
>  	struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
> -	int rc = 0;
>
>  	SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
>
> @@ -2224,15 +2220,12 @@ static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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
>
>  	SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
>
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504943331-4636-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

