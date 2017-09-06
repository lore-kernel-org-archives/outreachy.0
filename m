X-GM-THRID: 6462776611954491392
X-Received: by 10.202.199.74 with SMTP id x71mr338691oif.27.1504732938662;
        Wed, 06 Sep 2017 14:22:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.59.79 with SMTP id i76ls65104ioa.47.gmail; Wed, 06 Sep
 2017 14:22:17 -0700 (PDT)
X-Received: by 10.200.41.121 with SMTP id z54mr313494qtz.21.1504732937805;
        Wed, 06 Sep 2017 14:22:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504732937; cv=none;
        d=google.com; s=arc-20160816;
        b=aQUziXQuS7hEn1+xLAtp5tMZRD2XQRzrxvXCThmKoq+IVyLhNrxB8kw3h7JxHojvbk
         Y/m2QnR7mOzkOujy2xL88wx3PEkFkkDF4ZcvGHhUwVzWHnOWqqx6ZDS++qsOTJaB/ycd
         CuJVENzutwP57kUbpX1Lb4k0GXr5IpE4e2pEuiZdEDC0hPxdYVyraOImwdXuumdeUv6N
         j7Q+hYlEulZ9dnjOtpAhiN16tGS15gdTQW85CBrG4F1uSR1xRBzWJ9VLjP+wubuimonn
         7Z6y/cKQwBbQ7Klm+JN05f35EK3TqqvSNVsXSnQVJOnnvVc7fpptToD3dMvpqfYm8xGI
         3ouQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=e8OQ7+jEk9cG0PkX32zVvSoA5QtxmwC6sLlCdtxCoO0=;
        b=rzgokOGQPIJjYNwwjngd3nc9Df9GnBvpFwW55Cc1A75oYYhdm7/Ss4fel7Q2DF53S4
         S4mpepV3CegS1DwugLDLNIINuY2dURy8wLJx79sBkwHTNroPxkyCnqQ6MhkmcT1s4okL
         H2y6ri4ipAWhDG2B+XJv3+H+M25mDPp3kpkwlMCsl2B7jUq8mqio4e+JuRLyUh0kxsI/
         C/ZkI8fRgd1k5htExR9S3mpoZsAwhlq0pbxsS13B2yyXoBxV8AN9BoM9i61KlNgfXMF7
         lEL39di5fLvs3bgWlA8uPJ0DERKIB0cur3a/OILjKtblUckuV8oiGrwaC6Ku0Vh8cGGw
         NFKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RnHNhxvd;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id d196si82262ywe.7.2017.09.06.14.22.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 14:22:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RnHNhxvd;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id h21so4654499qth.4
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Sep 2017 14:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=e8OQ7+jEk9cG0PkX32zVvSoA5QtxmwC6sLlCdtxCoO0=;
        b=RnHNhxvd3RsUHJ7piv6nHaPDazNcg2H4yfDFqGmGQPRuG3vRSfOvKWJ/mVYeHe4JXy
         5M6sz2o/bFnM9OhPdqNro+bj+n/tqGtnWvoVOF8BnXRNN4DBG6baLJiNgRG4DFrW7pTh
         8y04Po1lXrfPTW4WDHgz08uv16mx2pUDrN2+/zZg5310H7y/p6R/oeO/mtqRHlSA5NcV
         DudElXj/Ldtaw+UcOLZHxhExTWVdoRczMV9ti/137pXliE88Jtzaee0IHkz1albOP6s0
         kCAYZRZWOmTrZOC2layqAvD0rTJC5dNLkMuc9CtTtnHEOMj0jb0lG6dVFF8Z43ilM8rs
         yYtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=e8OQ7+jEk9cG0PkX32zVvSoA5QtxmwC6sLlCdtxCoO0=;
        b=svJteFTwgk0kAOQ/o6UsaqVFWW7cuiy9wWr0aEAoycFOa9t7bh5FW2NbrWoW5d2SRP
         33YaRwbqhjZcuvtiiYOmO1GYz2Hc8ALSzC70AjIF2EJfPqFMrZFzeI3ZTEqzf/zXIeeD
         AeAmvkV3fribyyT2LMJwuy6Uhb9mIEGGUoW1CHnlrVFyKH91jbIffE7hpjZjzOStHdk/
         PBAC5K4bbXiC3FOiZYaamIiefOHmPsNk0uuD8/BgS3TCsOa87BgIflMIH4E/ZvKodt1+
         ZAAq5hqE7ci54RcKz4xcaTefBmZqYMYdlvXtzjo1NiX4ulVDyw9ZIdCtqoaz+e3lkfx+
         +uSA==
X-Gm-Message-State: AHPjjUhdoxXy9TU4QmRl+L6hXGTuaqCgULGTZEUVSYBxo7Xyi0QkHsD1
	D0/edJC+EP/kLejnfmbLGX19cpm0Wg==
X-Google-Smtp-Source: ADKCNb5COO2pq3De9UPYpfp9bVIGlSTWnccwbh9JfVoNg0OypXmBeRmNPmPNGFLaigcV6BYTQu9DTTbqyBGor39+CRk=
X-Received: by 10.200.34.49 with SMTP id o46mr794634qto.194.1504732937570;
 Wed, 06 Sep 2017 14:22:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Wed, 6 Sep 2017 14:22:17 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709062316450.2984@hadrien>
References: <1504732426-9765-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709062316450.2984@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Thu, 7 Sep 2017 02:52:17 +0530
Message-ID: <CAB3L5owYErPk2hh3OnE68eHCyrbgqUY0cHj3TrU6DUL44ZbPgQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: ccree: ssi_cipher.c:
 Remove unused variable.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, Gilad Ben-Yossef <gilad@benyossef.com>, 
	linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 7, 2017 at 2:47 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Thu, 7 Sep 2017, Srishti Sharma wrote:
>
>> Remove local variable inflight_counter ,as it is never used.
>
> "counter ,as" -> "counter, as"
>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>> Changes in v3:
>>  - There was no longer a need to make the comment more comprehensible as
>>    I have deleted the variable associated with it because it is unused .
>>  drivers/staging/ccree/ssi_cipher.c | 5 +----
>>  1 file changed, 1 insertion(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
>> index fec2faa..609ebe4 100644
>> --- a/drivers/staging/ccree/ssi_cipher.c
>> +++ b/drivers/staging/ccree/ssi_cipher.c
>> @@ -702,10 +702,7 @@ static int ssi_blkcipher_complete(struct device *dev,
>>
>>       ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);
>>
>> -     /*
>> -      * Save inflight_counter in a local variable.
>> -      */
>> -     inflight_counter =  ctx_p->drvdata->inflight_counter;
>> +
>
> This is a patch on your previous patch.  It should be a patch on the
> original code.  Also, don't add a new blank line.  Just remove the line
> completely.

  so , when I resend it should I version it as v3 or send as a new
patch as it is now fixing a different problem ?

 Regards,
 Srishti
>
> julia
>
>>       /*Decrease the inflight counter*/
>>       if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
>>               ctx_p->drvdata->inflight_counter--;
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504732426-9765-1-git-send-email-srishtishar%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

