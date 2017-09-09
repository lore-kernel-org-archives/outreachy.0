X-GM-THRID: 6463500175393423360
X-Received: by 10.98.153.129 with SMTP id t1mr2840771pfk.45.1504946134186;
        Sat, 09 Sep 2017 01:35:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.142 with SMTP id u14ls4839iou.25.gmail; Sat, 09 Sep
 2017 01:35:33 -0700 (PDT)
X-Received: by 10.99.119.203 with SMTP id s194mr3393913pgc.154.1504946133346;
        Sat, 09 Sep 2017 01:35:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504946133; cv=none;
        d=google.com; s=arc-20160816;
        b=YNle4msj4i7EhZOfGm4IIIjyg1hgoCri90iFTe8FObQOmYjOHlJHd5O0//+aEG+01v
         Hhk7GUpipXA08Wd3q4/nNaE9ncLYt67o2A3JlwqZ6ITlWCXKg2Jz/fNY4m99rSH9yXHO
         CbwybAaqwFgpcm37Yb+mrW7U1/I6tp59kzAxFLNRjtLe2ZzC7QoLLGvY09w0RDslIAw0
         8Ugv35qt37My4BzLRWOtU2KaV7SU7lLbpPdEw7D4pWfEzNpEHToDH1ogvgvbQ4GpxmRt
         xpRnIBfccOQn69PXuup+Rma6/Ktv92v3mmSDGqas4gDb3wgdQiFSk+4uNk14slQq+g0H
         urBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=4S2UECLauHc/vrmudJ2vlUWSFQlLFxqPPE6YWrcWAMg=;
        b=tjH9Isfx58RbMIAMHHZG6aJIIKuF/gl5jTdSzFLNDc6k7FD4DkteLdy/t5tWjm2jOe
         E18u/fYyFyh077VGLn0cJyufeSXXx19rIvdUywWTkgZdG9AmmlFIuQLADHOGoFjT4lYD
         ssjokjKjXfRp89QgotPPY1MLTizR8esxxI6caJ/8efVGabqbduA0H44xKKUM9cVYHn2p
         i1aqqH9SgUjD87+p36ZXjM6R+akNqoIGfQIzy8hDKfIlOMZoYXqBIVrRkE+i9AqlCJvJ
         lnUlFrTKx56KL4kCniRX20q6yB38Os/pSiFhjliiiwaoSVYfumJt/0+cy9GPJF4Z6nc+
         NufA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZoiTXfK3;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by gmr-mx.google.com with ESMTPS id u123si292752ywf.8.2017.09.09.01.35.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 01:35:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZoiTXfK3;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x243.google.com with SMTP id p55so2822681qtc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 01:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=4S2UECLauHc/vrmudJ2vlUWSFQlLFxqPPE6YWrcWAMg=;
        b=ZoiTXfK3k11Mf28jOC+GRAZvuymWWdT1E15g9fza9DBZhvzU4wdiEpqiaccC7T58tm
         E72fT+JObfw9qWDOgqpK/zc80bZlXo70mC8lJSxr9oBK/85ZUAb/mcxZcbe+Y9SE0TIi
         g6acBkLjb/vHgSmgqaHv6XhuZtzFNFyV31SwvKyecYl3iSodXtKDtBCjqJ+qXIUf2Z20
         ADjE2uMvQ+/t7WsQrWZ+cIQbtW9F0x9EIJtT/Vbp6m7S+9Q0IFWxkEIwDtcWggfoF/uP
         9Uj8S0acKL+OAFeQJneLJhFICrdmnmpcfIPo+zjH01f71uDuYZNkKJvnXSzyNZr+EjtH
         RDWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=4S2UECLauHc/vrmudJ2vlUWSFQlLFxqPPE6YWrcWAMg=;
        b=rDMcQeOaC95S/YwS/mpkcg6oy3+KFMnc8YmFESPHcCPEw7ySDBN+09DOM29jUKIKU0
         uzImt7Pp38SwKYY8E9SBcpX0iw1kWZFnjBr8Q16m+2Sqjdd5+TtY3d7f1yydh8aCNs5U
         FBL6lAZHo7yCtgardxdt56F3UKLGsDqyUu6NDMhjPCLNvmDbBsZ5v1Ynv0c06ZRtila6
         ssx52NOMWNY3oACM4YyS3R728UNKN+UoYHu8blhLI501Ufj4dA3vs9T4Lam/oB8fcJtW
         crbUI37jOJJaUddeu3Qk5u/MWhZLLiAPXZRPyEaPKpg8Z27H0AFXtS6mzwTIDa2/eq6K
         IXrA==
X-Gm-Message-State: AHPjjUgCMNuMmCNlFJzjbR+7Gs1VJ/+KpGSPMTRUnaKgkkMZMgtxOrje
	cXi5c6dGVRG4wUHZl3QzEAm0SczW4Q==
X-Google-Smtp-Source: AOwi7QAJq1DoCfCGBVN9J2EoM88J41afzWcSQce4j5qQlcnO6kE/s4K8OgYObjc5iFlNrBmlKMqevkpU/+WeXTZHAGE=
X-Received: by 10.237.35.175 with SMTP id j44mr7496473qtc.140.1504946132979;
 Sat, 09 Sep 2017 01:35:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Sat, 9 Sep 2017 01:35:32 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709090855020.2044@hadrien>
References: <1504907654-4914-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709090855020.2044@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sat, 9 Sep 2017 14:05:32 +0530
Message-ID: <CAB3L5ow-=fQoqzWT9_7UcX=C_QhSJXkhLfCKedXYMsA3Z6msYQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: ccree: Merge assignment
 with return
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Gilad Ben-Yossef <gilad@benyossef.com>, Greg KH <gregkh@linuxfoundation.org>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 9, 2017 at 12:26 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
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
>> Changes in v3:
>>  -Edit commit message so that it respects 80 character limit.
>>  -Remove unneeded blank lines, that were added by mistake.
>>
>>  drivers/staging/ccree/ssi_aead.c | 14 +++-----------
>>  1 file changed, 3 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/staging/ccree/ssi_aead.c b/drivers/staging/ccree/ssi_aead.c
>> index 5abe6b2..1d3b580 100644
>> --- a/drivers/staging/ccree/ssi_aead.c
>> +++ b/drivers/staging/ccree/ssi_aead.c
>> @@ -651,7 +651,6 @@ ssi_aead_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>>  static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>>  {
>>       struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
>> -     int rc = 0;
>>
>>       if (keylen < 3)
>>               return -EINVAL;
>> @@ -659,9 +658,7 @@ static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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
>> @@ -2224,15 +2221,12 @@ static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
>>       keylen -= 4;
>>       memcpy(ctx->ctr_nonce, key + keylen, 4);
>>
>> -     rc = ssi_aead_setkey(tfm, key, keylen);
>> -
>> -     return rc;
>> +     return ssi_aead_setkey(tfm, key, keylen);
>
> The declaration of rc should be dropped in this case.  You should have
> gotten a compiler warning.  Always compile the code before submitting a
> patch, and fix up any warnings.

I am very sorry about that, I have re-sent it.

Regards,
Srishti

> julia
>
>>  }
>>
>>  static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>>  {
>>       struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
>> -     int rc = 0;
>>
>>       SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
>>
>> @@ -2242,9 +2236,7 @@ static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504907654-4914-1-git-send-email-srishtishar%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

