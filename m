X-GM-THRID: 6463500175393423360
X-Received: by 10.176.80.54 with SMTP id b51mr2530421uaa.40.1504902244637;
        Fri, 08 Sep 2017 13:24:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.192.65 with SMTP id u62ls2042250itf.16.gmail; Fri, 08 Sep
 2017 13:24:03 -0700 (PDT)
X-Received: by 10.36.41.198 with SMTP id p189mr2102962itp.50.1504902243823;
        Fri, 08 Sep 2017 13:24:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504902243; cv=none;
        d=google.com; s=arc-20160816;
        b=eqNwqxJp4r1SGnMjhDbSoIlEB85XFMtybTnapGQzEgWq+4WPIli7Wd3rWmSBV04dFf
         6TAo7KALieVrbq00YfG7YbCw4AB58kZ2dzAV/NbRxhK/NFCkIqAAWB/hdUjGpHHObBoD
         uPg1YKPmY+Q1Aeguw3KKyJSLh6q6HE6Ej2+cn7NkHCUqV8/qODg+PA3hxFho0g4XPXuv
         TH6lgQuGeeqLGq6KL6/zaB2LbOVz9QYQw9eh9jDJZ3HmvU0C9gpg0oGBuCDlqCZ5JYCo
         TKd0siIAdWrvIbgR021OB8c+fHZV+GBojMJ257aTYlbSTRanLq+IzLZQRBJzgY+JMPWr
         4Ypw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=Yn8nreaKUoKsWfqAAiR2DCmHkPN3gi7ORjJiumlJSbM=;
        b=kFoP/GOjS7TSekpt9YG7yL8QJoi5Tvs3R+exbDCNyc9124Ul2HjCaI2ZZan5zUuV5i
         NH3I54J8TL7IEwyfx04NtRpLBw4JfTLQ6E2+mfERA+DsgidG1+q4B2QyZJ1VdkVf2YCe
         FXkbkRgnSgr2uu2g7SAWZXYwd6rK6efE+JIQG+Tmuxuuoig676ePC+GUs9HwvXP4QfNg
         6DGVS296cgO/OExD0eHFu9M35DpsyjdERIVyh3i2jKX+RhY1CeVeCp1OCwfjw2Vwk/lV
         mWTjVxmDO3azND3aTFGaTtxPqtUToZgMTHBmRDu3x8Op+hTBc6pnOf5XwX1Zd/GcLbkL
         g9tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rJO0FUBN;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x244.google.com (mail-qt0-x244.google.com. [2607:f8b0:400d:c0d::244])
        by gmr-mx.google.com with ESMTPS id l124si186259ywe.14.2017.09.08.13.24.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 13:24:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) client-ip=2607:f8b0:400d:c0d::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rJO0FUBN;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x244.google.com with SMTP id p55so2192607qtc.2
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 13:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Yn8nreaKUoKsWfqAAiR2DCmHkPN3gi7ORjJiumlJSbM=;
        b=rJO0FUBN+FCabQGNXYaHZHEKdUWiv2Xv6LkHP7KhMmX1aVOZx+NKpA4LNvD7nNzVq+
         JqIlL3Hx8ARzKi8GP+GlHT2axbGOfkXyqLl+JxS5Rs+91nGELUawOhZtkztRpd71dDyi
         7ENN6yasMW4Hu1I1xkRcBHT2wGhX9PootoN+9nsWJcRfs4mGp/+vILPRiUseVD8c4qFK
         9yw+BawUUDAPSN2oqTIuf5KCgmv6j3xLmoLSeGWl6IvAYAlffEV7KLxYS+O+VX0Shwhs
         UiHtLHNrVihR8JG5wW0//ZSifGA/4SvjhEugAJuJ/0TrblL+LggKnYV8ENIEdCeynNrH
         IBIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Yn8nreaKUoKsWfqAAiR2DCmHkPN3gi7ORjJiumlJSbM=;
        b=LW9AHcB8F0laTcCXSSoQPOl0lylc7KFkIGI31QbvsZLpVWE3Md6mPdZI5UTjyxjRav
         BXLXoXE/is9oZp7W/WI1u878IhV54Ja1zCW0/nNgtLycdK2lOF/l+zTzlfOzn0RsKQwh
         /JNKKVmjbvkDN5ZaHGUme0RJoeZdovcnBO3LK65Z8AYh6pEDipP8aku6rw6szDcMBtPC
         uIbUcPmdm1v0F2ka/dQYZ92f04aUgu7rHQFD1U16eeV/OwkDZkRBmBCReDpYs0m77tNV
         71poci3G/6wGhICZlG4/O/D1z6PQldSRi9JTsZDrSS5PlJaOm7iyL85XWmReW8p7V8WI
         pVNw==
X-Gm-Message-State: AHPjjUg0CGb6hg+POKrqpI0FjjGZjY0VKhNLncTqkTzSejy7G6pkn2r2
	zdz0eA0XMTKUM0wh8bRg8BUjndLa7A==
X-Google-Smtp-Source: AOwi7QDF1rhcQuNI3NwVkqcvWCQfF1lVfYGEk4Ah9UcwiCAOp22skxbQ6u/ggUiYG6fOWWoCSQFsp7UAf0iR1HH4RZM=
X-Received: by 10.237.63.15 with SMTP id p15mr5786625qtf.117.1504902243477;
 Fri, 08 Sep 2017 13:24:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Fri, 8 Sep 2017 13:24:02 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709082210410.2510@hadrien>
References: <1504900895-13110-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709082210410.2510@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sat, 9 Sep 2017 01:54:02 +0530
Message-ID: <CAB3L5ow4-GeOfh=23T58JNUmxu4mmOoG1rwH6fccrzwTNvTu1w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: ccree: Merge assignment with return
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Gilad Ben-Yossef <gilad@benyossef.com>, Greg KH <gregkh@linuxfoundation.org>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 9, 2017 at 1:42 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 9 Sep 2017, Srishti Sharma wrote:
>
>> Return the return value of a function directly, instead of first saving it in a variable and then returning it. This change was made using the following
>
> Your commit message should respect the 80 character limit. The above is
> one very long line.

Yes, I'll fix it . Thanks
>
>> semantic patch by coccinelle.
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
>>  drivers/staging/ccree/ssi_aead.c | 21 ++++++---------------
>>  1 file changed, 6 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/staging/ccree/ssi_aead.c b/drivers/staging/ccree/ssi_aead.c
>> index 5abe6b2..6bb98f7 100644
>> --- a/drivers/staging/ccree/ssi_aead.c
>> +++ b/drivers/staging/ccree/ssi_aead.c
>> @@ -651,17 +651,14 @@ ssi_aead_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>>  static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>>  {
>>       struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
>> -     int rc = 0;
>> -
>> +
>
> I'm not sure what happened here, but you should not be removing and then
> adding back a blank line.  Likewise below.

Sorry , I must have removed an already existing blank line by mistake
and must have re-added it upon realising the same. I'll fix these and
send again.

Regards,
Srishti

>
> julia
>
>>       if (keylen < 3)
>>               return -EINVAL;
>>
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
>> @@ -2214,8 +2211,7 @@ static int ssi_rfc4309_ccm_decrypt(struct aead_request *req)
>>  static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>>  {
>>       struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
>> -     int rc = 0;
>> -
>> +
>>       SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
>>
>>       if (keylen < 4)
>> @@ -2224,16 +2220,13 @@ static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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
>> -
>> +
>>       SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
>>
>>       if (keylen < 4)
>> @@ -2242,9 +2235,7 @@ static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504900895-13110-1-git-send-email-srishtishar%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

