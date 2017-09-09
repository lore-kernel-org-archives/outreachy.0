X-GM-THRID: 6463500175393423360
X-Received: by 10.202.173.15 with SMTP id w15mr2875794oie.57.1504940920443;
        Sat, 09 Sep 2017 00:08:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.73 with SMTP id h70ls1365135iod.49.gmail; Sat, 09 Sep
 2017 00:08:39 -0700 (PDT)
X-Received: by 10.202.72.20 with SMTP id v20mr131901oia.22.1504940919609;
        Sat, 09 Sep 2017 00:08:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504940919; cv=none;
        d=google.com; s=arc-20160816;
        b=lMCvqdIx5cpPWQHIWVeY8mzo/hw9TJeZI2EzY5+cABVEB6aojOrZ05bwK1eATSb/St
         YPAgeRqf16aqseZIHzgkk7qd4LmkFfKo0VzFWgPlpC26bnJSzujkMeDqLXQfHWiS+k4p
         DXuthAlfMC5kWfzblN0bC/doT2eCCQ3qlaVsdVGgKvHBlwoMct/bZlMhikRPN2ycGW0u
         XtJgnuxcYrtdUrC/d1c6Z5LcUnfgEG2BrbzY2f+9yF4ptkH1jrHAcJjUrlvX3vPHWijH
         sECaG14FWxq0gXuhOC+dEEdi+Q8uZT+dC2s2NKaF0Iw3wq9UJpPts43x9S3BhdaZuKxC
         3upw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=ptW6xkeyjbBMxGl2CQVsp+RdqnMQqSBN4azwRMn+7vc=;
        b=PEfblkoZFuwmZnDsx6sOiEp8qBdTEZ6m9U9uSYkYn1OMii868t3U03RhpJV0ce74V4
         C1/1LIxpUnKZCJHKfD7fBSfANatZOjvVM9hpHhWdc/fJ8MuFupFBQgcujnGRA5ANcwve
         z8lh/rfOtcxYggkcBLC5PiAOTi8EKxfb/n7Vj3WM7pz53Gj381jYoShxSN8RlK2XO6tC
         sqrCIPXyMnfveLJXQnDoqoN8otLefTE1k70PdFBoIzj+OX9tZ8KN9hBUtbK+iCSOQdI3
         wwX1F9MuPKn0TSJ6OBLbN7R4thlgz5JyDUpsirA6SoNBUwIjzYh1Cyc8raNIvhY/T9be
         7M2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jTkA6+Mh;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id v124si297319ywe.5.2017.09.09.00.08.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 00:08:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jTkA6+Mh;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id o77so2713034qke.2
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 00:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ptW6xkeyjbBMxGl2CQVsp+RdqnMQqSBN4azwRMn+7vc=;
        b=jTkA6+MhEEAOxS6OSfXYY0cSUwOV0kQQhlWAQif3HH5ueoKbpkphylnQfF2tgm7OUs
         AlvY9LVeEqgK1MlmXpFb9oUfqu6HtYhP5RhiJkzIdTPLF/e/GoJurpVkBInec0IW+WgG
         jKA60ZTVHItuyHoP3/5uxQf3OYZJEOT2Yn9xs+Du63fr2hrt8PnaBdsjUptETNWscDPR
         9SqCTNyU4Ujj67iiWtRhWxlMquac7CC7t1SV9TYE5fW/jE6YOjW2EaDSX5sBl5m/ilOB
         jpJt3394ENr1a28bjnIyHDGs8zhtIX4RT3MR41ShqWfw0mU5RW2cRK9vTcCyGZ0Ck9xc
         11uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ptW6xkeyjbBMxGl2CQVsp+RdqnMQqSBN4azwRMn+7vc=;
        b=PuNLNZb2aGOJHPhhSpeXP78B0SccaWDag1dgi0PBXLw5m2BxvRaMDkauUjlTlApykD
         qxlVGxFehZcFCDXuUTNX6risY4EBQ+rFsZJo3McDA9KiMoP21X+ogS/sz9uBDJLDuATG
         UmuUDZRI5HzZIDpesKIQ41k81PP51jA6SvPa459jKM4bS0uRxGtkR7l04IxCaKel5lO6
         p+WwwxPQNuUiLvD5TDAb/ZxEexRU2cqhz4GmNxPqsP5I5dVwjhb2+bJfPIB7Sq4EzX+f
         zFVzFezPpEJLhnKLutJhfEuq67IGK5KA6u2kFsGWh3OvAgWZayeSMcR3kfky2oWzCH3E
         Bm+A==
X-Gm-Message-State: AHPjjUj5bdon1LHE9m9wj0scVnimsgyKqAIpIFV2HzQjBbv8lPCpHPjM
	rBpi5jiLJrU8RkjgBI3LLQT7koww3GDO
X-Google-Smtp-Source: AOwi7QBE1dK2ATgzTwckBNy4az+0fL+FQ70+Q6mmM0AWCXdDJmRs4qjEInDnP34M1RGjHdh7ZdWJ3J8R3PotblrnjGs=
X-Received: by 10.55.52.19 with SMTP id b19mr6923128qka.77.1504940919252; Sat,
 09 Sep 2017 00:08:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Sat, 9 Sep 2017 00:08:38 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709090856410.2044@hadrien>
References: <1504904135-3973-1-git-send-email-srishtishar@gmail.com>
 <alpine.DEB.2.20.1709082257480.2510@hadrien> <CAB3L5oy7pxuTNyQmdnWd6M4_UOJ2mdp7uEOAH9sCMZPt-Suekg@mail.gmail.com>
 <alpine.DEB.2.20.1709090856410.2044@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sat, 9 Sep 2017 12:38:38 +0530
Message-ID: <CAB3L5oyyPP-f31YqVG8+ttwm-9HzbK+VxeHJSq1v0jxfKj9rhw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ccree: Merge assignment
 with return
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Gilad Ben-Yossef <gilad@benyossef.com>, Greg KH <gregkh@linuxfoundation.org>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 9, 2017 at 12:27 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 9 Sep 2017, Srishti Sharma wrote:
>
>> On Sat, Sep 9, 2017 at 2:28 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Sat, 9 Sep 2017, Srishti Sharma wrote:
>> >
>> >> Merge the assignment and return statements to return the value
>> >> directly. Done using coccinelle.
>> >>
>> >> @@
>> >> local idexpression ret;
>> >> expression e;
>> >> @@
>> >>
>> >> -ret =
>> >> +return
>> >>      e;
>> >> -return ret;
>> >>
>> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> >> ---
>> >> Changes in v2:
>> >>  - Edit commit message so that it respects the 80 character limit.
>> >>
>> >>  drivers/staging/ccree/ssi_aead.c | 18 ++++++------------
>> >>  1 file changed, 6 insertions(+), 12 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/ccree/ssi_aead.c b/drivers/staging/ccree/ssi_aead.c
>> >> index 5abe6b2..f4532ea 100644
>> >> --- a/drivers/staging/ccree/ssi_aead.c
>> >> +++ b/drivers/staging/ccree/ssi_aead.c
>> >> @@ -651,7 +651,7 @@ ssi_aead_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>> >>  static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>> >>  {
>> >>       struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
>> >> -     int rc = 0;
>> >> +
>> >>
>> >
>> > There is still a problem here.  You don't need two blank lines under a
>> > variable declaration.
>>
>> When I try to remove that extra blank line it looks like I deleted one
>> blank line and added another one .
>
> It seems odd, but I guess you solved the problem somehow?

Yes, I was making a mistake .

Regards,
Srishti

> julia
>
>
>>
>> Regards,
>> Srishti
>>
>> >
>> > julia
>> >
>> >>       if (keylen < 3)
>> >>               return -EINVAL;
>> >> @@ -659,9 +659,7 @@ static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
>> >>       keylen -= 3;
>> >>       memcpy(ctx->ctr_nonce, key + keylen, 3);
>> >>
>> >> -     rc = ssi_aead_setkey(tfm, key, keylen);
>> >> -
>> >> -     return rc;
>> >> +     return ssi_aead_setkey(tfm, key, keylen);
>> >>  }
>> >>  #endif /*SSI_CC_HAS_AES_CCM*/
>> >>
>> >> @@ -2214,7 +2212,7 @@ static int ssi_rfc4309_ccm_decrypt(struct aead_request *req)
>> >>  static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>> >>  {
>> >>       struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
>> >> -     int rc = 0;
>> >> +
>> >>
>> >>       SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
>> >>
>> >> @@ -2224,15 +2222,13 @@ static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
>> >>       keylen -= 4;
>> >>       memcpy(ctx->ctr_nonce, key + keylen, 4);
>> >>
>> >> -     rc = ssi_aead_setkey(tfm, key, keylen);
>> >> -
>> >> -     return rc;
>> >> +     return ssi_aead_setkey(tfm, key, keylen);
>> >>  }
>> >>
>> >>  static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
>> >>  {
>> >>       struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
>> >> -     int rc = 0;
>> >> +
>> >>
>> >>       SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
>> >>
>> >> @@ -2242,9 +2238,7 @@ static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
>> >>       keylen -= 4;
>> >>       memcpy(ctx->ctr_nonce, key + keylen, 4);
>> >>
>> >> -     rc = ssi_aead_setkey(tfm, key, keylen);
>> >> -
>> >> -     return rc;
>> >> +     return ssi_aead_setkey(tfm, key, keylen);
>> >>  }
>> >>
>> >>  static int ssi_gcm_setauthsize(struct crypto_aead *authenc,
>> >> --
>> >> 2.7.4
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504904135-3973-1-git-send-email-srishtishar%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB3L5oy7pxuTNyQmdnWd6M4_UOJ2mdp7uEOAH9sCMZPt-Suekg%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

