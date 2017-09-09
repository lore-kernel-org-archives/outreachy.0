X-GM-THRID: 6463500175393423360
X-Received: by 10.28.16.71 with SMTP id 68mr382776wmq.12.1504940224920;
        Fri, 08 Sep 2017 23:57:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.152.75 with SMTP id a72ls315783wme.23.canary-gmail; Fri, 08
 Sep 2017 23:57:04 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBhshdRuG8lxi/m+BREfuCqGCBwIx3Sb6c/vENjppk1PVHdfVP28ZdOYs9yMfMoN3r3XZ2A
X-Received: by 10.28.148.205 with SMTP id w196mr349871wmd.27.1504940224038;
        Fri, 08 Sep 2017 23:57:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504940224; cv=none;
        d=google.com; s=arc-20160816;
        b=xpH9PRKRMif6XBxGvNOrT2OwPSzTwr/LFUytgbUn0teelntK3pcoQt1bHCQndYGq79
         6C3iUslcpNZxCp9i+1dfmMLNvAGo+8qxed4A9kxcyt/Zktvl2B4ZRWx+rBrtns6i4WKf
         mpXLQX8XrqPo7QzsPY1hGgik3k50gjQ4YAaOnmOtaBXR8LA3rR5fT75kY9AhunkbJM7P
         KWsXdpR3I+nBa3RQ6gF/+DEr/FVtxQzZe/IDafSQVUcZU5IqSxm747adBzKnrRIZQGQi
         s1G+a8x8CUVazoWPULaoOG5aJ+9RWgnVi+75R1eTw2xjpkduEfGKLcMEptRY+2BELYsN
         cheg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=0PlfAsgy+WOCoD8TxGBra0FbStioPFmFKHiSlhi0sCo=;
        b=yd0a2OCzyrlYtjQEJruoj7i98xVF9aBMLaYN9MbdXbv7uZJw9KibPqB/9dTux9foSV
         Lb02XjokJry9ssEmrcENzlw3dsabBLF/651ePteTl0/RjzE0tu+Upijn/Xb0jQS83I+F
         OJgg2IkkYU81GcwzGrQRY8A2pQL/icbr3L0+MO/fYCzidFLNWpH1h9tFJjwGqAiPHXXT
         iX4jt8Vi+ZEbX1U+zjjSabAjO1/7uUSiNOlC/wbmPljKC+Ho0JjKGNY8l8IlnnSfNmoB
         6kKaWJmlusSxlAcwa7PogaHBwtPE6DIukqkf2cogx7kIX/YQbdBvTJjfBwFtkQsEQwVS
         MIZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 7si157471wme.7.2017.09.08.23.57.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 23:57:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,365,1500933600"; 
   d="scan'208";a="236858549"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Sep 2017 08:57:03 +0200
Date: Sat, 9 Sep 2017 08:57:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: Gilad Ben-Yossef <gilad@benyossef.com>, 
    Greg KH <gregkh@linuxfoundation.org>, 
    Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, 
    driverdev-devel@linuxdriverproject.org, devel@driverdev.osuosl.org, 
    Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ccree: Merge assignment
 with return
In-Reply-To: <CAB3L5oy7pxuTNyQmdnWd6M4_UOJ2mdp7uEOAH9sCMZPt-Suekg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709090856410.2044@hadrien>
References: <1504904135-3973-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709082257480.2510@hadrien> <CAB3L5oy7pxuTNyQmdnWd6M4_UOJ2mdp7uEOAH9sCMZPt-Suekg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Sep 2017, Srishti Sharma wrote:

> On Sat, Sep 9, 2017 at 2:28 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sat, 9 Sep 2017, Srishti Sharma wrote:
> >
> >> Merge the assignment and return statements to return the value
> >> directly. Done using coccinelle.
> >>
> >> @@
> >> local idexpression ret;
> >> expression e;
> >> @@
> >>
> >> -ret =
> >> +return
> >>      e;
> >> -return ret;
> >>
> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> >> ---
> >> Changes in v2:
> >>  - Edit commit message so that it respects the 80 character limit.
> >>
> >>  drivers/staging/ccree/ssi_aead.c | 18 ++++++------------
> >>  1 file changed, 6 insertions(+), 12 deletions(-)
> >>
> >> diff --git a/drivers/staging/ccree/ssi_aead.c b/drivers/staging/ccree/ssi_aead.c
> >> index 5abe6b2..f4532ea 100644
> >> --- a/drivers/staging/ccree/ssi_aead.c
> >> +++ b/drivers/staging/ccree/ssi_aead.c
> >> @@ -651,7 +651,7 @@ ssi_aead_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
> >>  static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
> >>  {
> >>       struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
> >> -     int rc = 0;
> >> +
> >>
> >
> > There is still a problem here.  You don't need two blank lines under a
> > variable declaration.
>
> When I try to remove that extra blank line it looks like I deleted one
> blank line and added another one .

It seems odd, but I guess you solved the problem somehow?

julia


>
> Regards,
> Srishti
>
> >
> > julia
> >
> >>       if (keylen < 3)
> >>               return -EINVAL;
> >> @@ -659,9 +659,7 @@ static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
> >>       keylen -= 3;
> >>       memcpy(ctx->ctr_nonce, key + keylen, 3);
> >>
> >> -     rc = ssi_aead_setkey(tfm, key, keylen);
> >> -
> >> -     return rc;
> >> +     return ssi_aead_setkey(tfm, key, keylen);
> >>  }
> >>  #endif /*SSI_CC_HAS_AES_CCM*/
> >>
> >> @@ -2214,7 +2212,7 @@ static int ssi_rfc4309_ccm_decrypt(struct aead_request *req)
> >>  static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
> >>  {
> >>       struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
> >> -     int rc = 0;
> >> +
> >>
> >>       SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
> >>
> >> @@ -2224,15 +2222,13 @@ static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
> >>       keylen -= 4;
> >>       memcpy(ctx->ctr_nonce, key + keylen, 4);
> >>
> >> -     rc = ssi_aead_setkey(tfm, key, keylen);
> >> -
> >> -     return rc;
> >> +     return ssi_aead_setkey(tfm, key, keylen);
> >>  }
> >>
> >>  static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
> >>  {
> >>       struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
> >> -     int rc = 0;
> >> +
> >>
> >>       SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
> >>
> >> @@ -2242,9 +2238,7 @@ static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
> >>       keylen -= 4;
> >>       memcpy(ctx->ctr_nonce, key + keylen, 4);
> >>
> >> -     rc = ssi_aead_setkey(tfm, key, keylen);
> >> -
> >> -     return rc;
> >> +     return ssi_aead_setkey(tfm, key, keylen);
> >>  }
> >>
> >>  static int ssi_gcm_setauthsize(struct crypto_aead *authenc,
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504904135-3973-1-git-send-email-srishtishar%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB3L5oy7pxuTNyQmdnWd6M4_UOJ2mdp7uEOAH9sCMZPt-Suekg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

