X-GM-THRID: 6463500175393423360
X-Received: by 10.46.83.71 with SMTP id t7mr308254ljd.13.1504902692523;
        Fri, 08 Sep 2017 13:31:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.16.8 with SMTP id j8ls16260lje.16.gmail; Fri, 08 Sep 2017
 13:31:30 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAmzAcrWE8tM5e2HPQ0W0wJqpuyvvY1+9tIwcS9Y5l4hDbLksCfUTAYgEROhPdQ2YTqImX6
X-Received: by 10.25.78.19 with SMTP id c19mr300157lfb.8.1504902690864;
        Fri, 08 Sep 2017 13:31:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504902690; cv=none;
        d=google.com; s=arc-20160816;
        b=eyiAixXWrBq5Yj5AIrfBwzJyZajRTLYEq1UdtDVt6U6gAh7uyQU0by7HZ9qSKuOu2M
         TugSasryOB4PGX5t6PMA4Sjb4FYEH0GkEugXArNcYI2Tp36hJ9dMWiIzkLr/+n+Aw24r
         TGYhNVqN9eDXeBc8a5s2KPf1b518sGDAC/ujaG5uhBhFahpbscaA0JVuqVsR5E6SaXb5
         gFVNBmOT8wctoAPjnzhyzsrjlESfGFKrgjhPdNbG/mhNmwDjgyi+Qyk2qr+w0jU2De7d
         4Igsm+LNYg5kz2L41/B94kQ+4x1bj0qtsymsIZCIwH+g+U3ezB7luH5kzN6XTheS6rwW
         Z2+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=mSg1BSHku3aXl/47ELgkTVHUg1eDeTLXz7U8I4hptNc=;
        b=X279SwFMdgdANcern1etZwFpOKoJfilSbEDufbZnIwt0cKrFyfE4FQ01r+QvEX3uFE
         KBA0+23YiZnZEOanq/JQ6qqm6Qcjtgi1Szm5Yak+fQaAcfK8wcBAxfBU9xx7XYPTRj/x
         L4TEjDiCB26yrtmKTxJu8p4ELXt2CTMUKKzXSTgyUE43ct84sEfdAyZU6jZBcdx0mhr+
         v1mAQyTXQFqomEs+fufOhGhekSM6EAat6xG0VVnOztzbhi2YuoPKdCPC73BCAOrkTYmS
         pE2nTA9/v3KjaCxVuGHI/azjagCaHFDA/LPH5+68RTqqHA951Q4k8m36eqxfgRL1L/FA
         gXBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a21si124285wme.2.2017.09.08.13.31.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 13:31:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,363,1500933600"; 
   d="scan'208";a="236837319"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 22:31:30 +0200
Date: Fri, 8 Sep 2017 22:31:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: Gilad Ben-Yossef <gilad@benyossef.com>, 
    Greg KH <gregkh@linuxfoundation.org>, 
    Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, 
    driverdev-devel@linuxdriverproject.org, devel@driverdev.osuosl.org, 
    Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ccree: Merge assignment with
 return
In-Reply-To: <CAB3L5ow4-GeOfh=23T58JNUmxu4mmOoG1rwH6fccrzwTNvTu1w@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709082231030.2510@hadrien>
References: <1504900895-13110-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709082210410.2510@hadrien> <CAB3L5ow4-GeOfh=23T58JNUmxu4mmOoG1rwH6fccrzwTNvTu1w@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Sep 2017, Srishti Sharma wrote:

> On Sat, Sep 9, 2017 at 1:42 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sat, 9 Sep 2017, Srishti Sharma wrote:
> >
> >> Return the return value of a function directly, instead of first saving it in a variable and then returning it. This change was made using the following
> >
> > Your commit message should respect the 80 character limit. The above is
> > one very long line.
>
> Yes, I'll fix it . Thanks
> >
> >> semantic patch by coccinelle.
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
> >>  drivers/staging/ccree/ssi_aead.c | 21 ++++++---------------
> >>  1 file changed, 6 insertions(+), 15 deletions(-)
> >>
> >> diff --git a/drivers/staging/ccree/ssi_aead.c b/drivers/staging/ccree/ssi_aead.c
> >> index 5abe6b2..6bb98f7 100644
> >> --- a/drivers/staging/ccree/ssi_aead.c
> >> +++ b/drivers/staging/ccree/ssi_aead.c
> >> @@ -651,17 +651,14 @@ ssi_aead_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
> >>  static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
> >>  {
> >>       struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
> >> -     int rc = 0;
> >> -
> >> +
> >
> > I'm not sure what happened here, but you should not be removing and then
> > adding back a blank line.  Likewise below.
>
> Sorry , I must have removed an already existing blank line by mistake
> and must have re-added it upon realising the same. I'll fix these and
> send again.

There must be some change in spacing.  Otherwise there would be no diff.

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
> >>
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
> >> @@ -2214,8 +2211,7 @@ static int ssi_rfc4309_ccm_decrypt(struct aead_request *req)
> >>  static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
> >>  {
> >>       struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
> >> -     int rc = 0;
> >> -
> >> +
> >>       SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
> >>
> >>       if (keylen < 4)
> >> @@ -2224,16 +2220,13 @@ static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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
> >> -
> >> +
> >>       SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);
> >>
> >>       if (keylen < 4)
> >> @@ -2242,9 +2235,7 @@ static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504900895-13110-1-git-send-email-srishtishar%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB3L5ow4-GeOfh%3D23T58JNUmxu4mmOoG1rwH6fccrzwTNvTu1w%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

