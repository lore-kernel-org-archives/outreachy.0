X-GM-THRID: 6462940414905155584
X-Received: by 10.237.36.239 with SMTP id u44mr76123qtc.7.1504783094688;
        Thu, 07 Sep 2017 04:18:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.37.203 with SMTP id g194ls273404itg.20.canary-gmail; Thu,
 07 Sep 2017 04:18:13 -0700 (PDT)
X-Received: by 10.99.98.70 with SMTP id w67mr1419523pgb.142.1504783093854;
        Thu, 07 Sep 2017 04:18:13 -0700 (PDT)
Received: by 10.202.166.5 with SMTP id p5msoie;
        Thu, 7 Sep 2017 01:50:32 -0700 (PDT)
X-Received: by 10.129.94.198 with SMTP id s189mr1232466ywb.9.1504774232263;
        Thu, 07 Sep 2017 01:50:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504774232; cv=none;
        d=google.com; s=arc-20160816;
        b=uqtBc0X/8kXDJmZjZ7ggbCDNUhhnkBW9iw4gj2AXSMdGyQu3lWN/djRI/wjLhsczjC
         MJW69mhROwy/mFe/xFrjlfxRKGq1XO9h+6KVNBcWODSpdO1HzPt3G5+xHgASVxj/JYqO
         r8uNGsUHPMBcOT2U6q2GJ+sEfDvZKvMVngP2LFeZ9JJW0vOgqz+Y+DAkLvxSrr+QxmLm
         ARBvVr16/RKsoGgaIxLDc3sCeTD/xwzu+RGSdChG+E06+hnzQHrfGXciukyN1Zg0Gb/2
         Uspr+tXZSZ6Y9NGAwGeUe5vw52GI69e9/BYp3nSrtiPkKYNRNaUi/fOWVASbHcCv7iGn
         Dmig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=JpoIGJXzPe9TT1ajDOgp+TWp9JRMoYqYCshokv3CYZU=;
        b=v9pX9nGhuAn3i4gR1XlkOtUgkyJYVQ7I0Xdi9pLX4OmgSFMfNSEttZDi6LnriSe8dr
         i7DRaxJ3kMO6jgtzPZFjKn3FdgD9N8Tmg2eKJPla86G0rWWw91Qdh99MpFUxNPn0xP3k
         dU9oAXqU7tySpjZmbO4Sr1GP3sVTCCq8z8GJPHUIVF+4i5R82ozgvXgkp18tv9IudYCF
         mE+CzXU/PJkvl2ss7IOVN6kUanZlCV/R3nGbWv//IXK25nj0DiY1OdBijO6rUsvJPpov
         jg1pTdrp5ZWPjiW9sPJcW/T1UphEUdk9/5KB7ETP8gRj+pJhPDFPEYuWuto/Aju+Fp0h
         bJgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@benyossef-com.20150623.gappssmtp.com header.s=20150623 header.b=ojDNKdaH;
       spf=neutral (google.com: 2607:f8b0:4003:c06::241 is neither permitted nor denied by best guess record for domain of gilad@benyossef.com) smtp.mailfrom=gilad@benyossef.com
Return-Path: <gilad@benyossef.com>
Received: from mail-oi0-x241.google.com (mail-oi0-x241.google.com. [2607:f8b0:4003:c06::241])
        by gmr-mx.google.com with ESMTPS id o190si170848ywo.11.2017.09.07.01.50.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 01:50:32 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4003:c06::241 is neither permitted nor denied by best guess record for domain of gilad@benyossef.com) client-ip=2607:f8b0:4003:c06::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@benyossef-com.20150623.gappssmtp.com header.s=20150623 header.b=ojDNKdaH;
       spf=neutral (google.com: 2607:f8b0:4003:c06::241 is neither permitted nor denied by best guess record for domain of gilad@benyossef.com) smtp.mailfrom=gilad@benyossef.com
Received: by mail-oi0-x241.google.com with SMTP id z73so1096828oia.0
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Sep 2017 01:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=benyossef-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=JpoIGJXzPe9TT1ajDOgp+TWp9JRMoYqYCshokv3CYZU=;
        b=ojDNKdaH8AxhGsG13J/dZ6BaoSUm7yY9mARC+PtmJukduK67tytRxH3jygvCx0CGLb
         8r27fB/ZcXXFNDKRGvKd8Jayng9u5jzu197cED/KDhixpqEnwAV/846VKnLVWQ07+QlY
         m2izdq51RN0Ks1r4bDYX+i9y7foZTQRVl3XQhXvu19TPhgL2RGbmIZ6UBlBCGqn5+T4E
         KUSucB6aG9ZupxcI+qvvoNo2IswcNNHKZ1RB0PlITGKeB6FHjzd+HylpfQBOZkjXajxl
         ytfGM4XOhUsrNeBCP+1R++NU7lAdipTk9xva97QqtCdMscsm8lOXW4kF+biuGvfhclBY
         cY7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=JpoIGJXzPe9TT1ajDOgp+TWp9JRMoYqYCshokv3CYZU=;
        b=fHf5ZGv3flUbn3y6TgMlN8wSD1DUQm1vG5ll3M7HsQ25hlaz4c0ZXq2gsD6j76GZBS
         HjQOp3KIvRfWfi/ayFU94ttFBdnNC6HDJMiIm0XpvIEm9kJDPAJ1KselSW9Hp+sK9rIc
         GcQx9CW8zwNhvxga5/6WX3Lv+5R+ZEqH+D/ekE7tJ0DMmTFx/Bz1gCmNQoeNR3ge6slI
         El2MrIwy3cTHjMcQDZ4VKJGFoRxFMoxg2ccTMkwNseKiCiD2IfnnlUueLCQ0rX+QosGP
         nmLfuCqooPDyjid/eBg26cvMMRFqjqxHSeY4gD8TIBniCD/MwINBnwYMLWm30l2DLOOt
         TpHw==
X-Gm-Message-State: AHPjjUiCqgghKehC3poa1rg6YrTUz+K5aXX9g02NhQ1VmZi4uh2bwm6l
	IFgcGc5o1iYPNYwybJJToHthaEzFtRyP
X-Google-Smtp-Source: ADKCNb5Kyush5IDNV6yzlBVQs6RoJlMTYUjGC+P1XVOxXNfSOk6MNcucJB5ipmqDsoWJCeRiZmiYSBAoh7NP66zxWvc=
X-Received: by 10.202.173.11 with SMTP id w11mr1834877oie.239.1504774231784;
 Thu, 07 Sep 2017 01:50:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.48.148 with HTTP; Thu, 7 Sep 2017 01:50:31 -0700 (PDT)
X-Originating-IP: [217.140.96.140]
In-Reply-To: <1504770561-5554-1-git-send-email-srishtishar@gmail.com>
References: <1504770561-5554-1-git-send-email-srishtishar@gmail.com>
From: Gilad Ben-Yossef <gilad@benyossef.com>
Date: Thu, 7 Sep 2017 11:50:31 +0300
Message-ID: <CAOtvUMc0zxtAnfZhL5M4A7mrYt9z-i58mr2SLtYpXJ5-eEo+QQ@mail.gmail.com>
Subject: Re: [PATCH v5] Staging: ccree: Remove unused variable.
To: Srishti Sharma <srishtishar@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

Hi,

On Thu, Sep 7, 2017 at 10:49 AM, Srishti Sharma <srishtishar@gmail.com> wrote:
> Remove the local variable inflight_counter as it is never used.
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---

I've been meaning to clean that for some time now and never got around to do it.
Thank you! :-)

Acked-by: Gilad Ben-Yossef <gilad@benyossef.com>


> Changes in v5:
>  - Correct the format of the subject.
>  drivers/staging/ccree/ssi_cipher.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
> index 8d31a93..1ff3c8a 100644
> --- a/drivers/staging/ccree/ssi_cipher.c
> +++ b/drivers/staging/ccree/ssi_cipher.c
> @@ -697,13 +697,10 @@ static int ssi_blkcipher_complete(struct device *dev,
>                                   void __iomem *cc_base)
>  {
>         int completion_error = 0;
> -       u32 inflight_counter;
>         struct ablkcipher_request *req = (struct ablkcipher_request *)areq;
>
>         ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);
>
> -       /*Set the inflight couter value to local variable*/
> -       inflight_counter =  ctx_p->drvdata->inflight_counter;
>         /*Decrease the inflight counter*/
>         if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
>                 ctx_p->drvdata->inflight_counter--;
> --
> 2.7.4
>



-- 
Gilad Ben-Yossef
Chief Coffee Drinker

"If you take a class in large-scale robotics, can you end up in a
situation where the homework eats your dog?"
 -- Jean-Baptiste Queru

