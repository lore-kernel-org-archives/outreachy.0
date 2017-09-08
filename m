X-GM-THRID: 6463500175393423360
X-Received: by 10.129.229.8 with SMTP id s8mr816101ywl.73.1504905355216;
        Fri, 08 Sep 2017 14:15:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.88.24 with SMTP id m24ls902900iob.14.gmail; Fri, 08 Sep
 2017 14:15:54 -0700 (PDT)
X-Received: by 10.202.240.68 with SMTP id o65mr2380561oih.85.1504905354402;
        Fri, 08 Sep 2017 14:15:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504905354; cv=none;
        d=google.com; s=arc-20160816;
        b=RmHP5kpyE9XgbppCYGuU8BVoV/TVEBmQV91jntwvs23aYKa24CC3xxpOH4InQjELQH
         g02fr+bcm+7lWOWzNaqY8fVLTBsQDoGi2avzaQSEStkwzGxQUsDdmoeXVFG2QroQU86p
         LHDLtZdsZ7p5EdGlSUIasacqSAyhx4meLOrwTLtAOtazuRmHO8CdQ8wzY1aPdkYEf9BK
         hL8ZoJ2vdivMvi4fJxZgCfYuOdZi5vwcxNccXONPQImEln2Aks7fHLdMw/01tog2HnqA
         q0RKylLpjPIpNn5Llfxzp08kesInk2NE1Q/mCNNezbNNFMBpFvqv+sLJKCpff1ncejpW
         /InA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=Ho2DY3hkK6OuU3Yi8lPRV4X0i4UdEB8i1XbDyPgjnSU=;
        b=HOs7HYOcCAA6kAiRneUDwL4zI47BXdZPGHFybsktyfHlDhtVp6VGD34zyyuIC5lRJv
         /QV891rihAxzNnt3qLzLHcZZueR89EbjgjExrKiWIj+jlnedmiKGk9JGFU7G9r6jiHWj
         7miAFLF1FEWU7ktGYKQ2B0xbMFHEyu2Shr9pPA2M0xxEduELKjywO1iy9lgeqHw5I0ms
         06AULgbyZFVbXOXVzfVpjvWFLKfpVNR/BIuRqsrOiM64a9DT8ESAz1odRaJYItt88Hyt
         B9O/J356HE0r4Rf2Y+oGw1jB5KGidEpqtvlIkYqhpnqpQkB2+3SMQwGZf8T97xLNSAAD
         Q8gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WKqQR262;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id t131si224349ywe.15.2017.09.08.14.15.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 14:15:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WKqQR262;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id r66so2058342qke.4
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 14:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Ho2DY3hkK6OuU3Yi8lPRV4X0i4UdEB8i1XbDyPgjnSU=;
        b=WKqQR2620ZJKlAt0zly+gbyryWaARKrNAP/QMnuoq94gTZf6VPpqbb3UdG5F2bEgvD
         B3LZVNqAu0GoX/IHo9i0svVk5SSdySL8mfyZCVFOHrIGEFQq31F4AJG5N4rGA52NPIWq
         rYQRb7W5EfDqdtOYkqV2bvv4erQj6TbCffM20PEMgb2KU3phgGBAEfmlUPNlXw/DOw4X
         r3bHpACpi6ZaRnIkY4hTqcbKGDjonnO9U/fpwW6Q56NYb7JQWjkccywj496SHkaFXr0o
         +4zkM3SRknNvlyltS/s+/Mz3pzocgbcgO8zxYprSETqxkGbk7LKE3AqzNkUFblKVaHuC
         rw5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Ho2DY3hkK6OuU3Yi8lPRV4X0i4UdEB8i1XbDyPgjnSU=;
        b=bUgpUSZg1YYoDnnjsEbOtUIaPVJ9P5qi3F9I+jGcnTRInw6oI3diEVXyb4hl1ojq8o
         x6aHIztw/WkfVaJ1oojgmaQ2A3XfpsMUeLxtoXTG02nsJO39IOIoQVWeybcCC+4Bk9lz
         YKLooZX69BqGpBOQxlCZA7TyRiiZjLU3+mevSZEggN6YG8aENBUWxkZiWukHFrFHXr9Y
         jQRwsBEntbyab9gowFLT2W5jrds+pUYGV8ZLDbDEkOKexyL7oxK2DRqdZXskU+TOfUGt
         bFpkJ1mi7vlyS1UmjK8GqlMNLlWY62yO6poNfoCsmiF5x5VqB2XxTdNLMYd5qXMo9PeQ
         ooaw==
X-Gm-Message-State: AHPjjUhXohvhT1uhjJfEYpe6pFaJh1J4KNtqdR2aIKHUcps0guFAsLL+
	lu315uRpormm9pDl4Qa0yfUwjkwX5Q==
X-Google-Smtp-Source: AOwi7QBl9uLDyMj0ShkCtiKDr/mAtRiUIoJNWQ8feKpQVbsN6tWV2LTFnu4yzp5Rjb0ZERTBD5+EIIXvpnHQbs5L44Q=
X-Received: by 10.55.176.132 with SMTP id z126mr5902470qke.209.1504905354073;
 Fri, 08 Sep 2017 14:15:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Fri, 8 Sep 2017 14:15:53 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709082257480.2510@hadrien>
References: <1504904135-3973-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709082257480.2510@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sat, 9 Sep 2017 02:45:53 +0530
Message-ID: <CAB3L5oy7pxuTNyQmdnWd6M4_UOJ2mdp7uEOAH9sCMZPt-Suekg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ccree: Merge assignment
 with return
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Gilad Ben-Yossef <gilad@benyossef.com>, Greg KH <gregkh@linuxfoundation.org>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 9, 2017 at 2:28 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 9 Sep 2017, Srishti Sharma wrote:
>
>> Merge the assignment and return statements to return the value
>> directly. Done using coccinelle.
>>
>> @@
>> local idexpression ret;
>> expression e;
>> @@
>>
>> -ret =
>> +return
>>      e;
>> -return ret;
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>> Changes in v2:
>>  - Edit commit message so that it respects the 80 character limit.
>>
>>  drivers/staging/ccree/ssi_aead.c | 18 ++++++------------
>>  1 file changed, 6 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/staging/ccree/ssi_aead.c b/drivers/staging/ccree/ssi_aead.c
>> index 5abe6b2..f4532ea 100644
>> --- a/drivers/staging/ccree/ssi_aead.c
>> +++ b/drivers/staging/ccree/ssi_aead.c
>> @@ -651,7 +651,7 @@ ssi_aead_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>>  static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>>  {
>>       struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
>> -     int rc = 0;
>> +
>>
>
> There is still a problem here.  You don't need two blank lines under a
> variable declaration.

When I try to remove that extra blank line it looks like I deleted one
blank line and added another one .

Regards,
Srishti

>
> julia
>
>>       if (keylen < 3)
>>               return -EINVAL;
>> @@ -659,9 +659,7 @@ static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
>>       keylen -= 3;
>>       memcpy(ctx->ctr_nonce, key + keylen, 3);
>>
>> -     rc = ssi_aead_setkey(tfm, key, keylen);
>> -
>> -     return rc;
>> +     return ssi_aead_setkey(tfm, key, keylen);
>>  }
>>  #endif /*SSI_CC_HAS_AES_CCM*/
>>
>> @@ -2214,7 +2212,7 @@ static int ssi_rfc4309_ccm_decrypt(struct aead_request *req)
>>  static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>>  {
>>       struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
>> -     int rc = 0;
>> +
>>
>>       SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
>>
>> @@ -2224,15 +2222,13 @@ static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
>>       keylen -= 4;
>>       memcpy(ctx->ctr_nonce, key + keylen, 4);
>>
>> -     rc = ssi_aead_setkey(tfm, key, keylen);
>> -
>> -     return rc;
>> +     return ssi_aead_setkey(tfm, key, keylen);
>>  }
>>
>>  static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>>  {
>>       struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
>> -     int rc = 0;
>> +
>>
>>       SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
>>
>> @@ -2242,9 +2238,7 @@ static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
>>       keylen -= 4;
>>       memcpy(ctx->ctr_nonce, key + keylen, 4);
>>
>> -     rc = ssi_aead_setkey(tfm, key, keylen);
>> -
>> -     return rc;
>> +     return ssi_aead_setkey(tfm, key, keylen);
>>  }
>>
>>  static int ssi_gcm_setauthsize(struct crypto_aead *authenc,
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504904135-3973-1-git-send-email-srishtishar%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

