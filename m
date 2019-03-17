X-GM-THRID: 6669419489146175488
X-Received: by 2002:a19:c50d:: with SMTP id w13mr420944lfe.9.1552848658805;
        Sun, 17 Mar 2019 11:50:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:43af:: with SMTP id t15ls1287104lfl.8.gmail; Sun, 17 Mar
 2019 11:50:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzley5Sn6M2NJaRDnQfZ/imLKfs5n+fakvZ130qD4YabRq6afyuyd5Mfo4B/joJbycQ4lGZ
X-Received: by 2002:ac2:515d:: with SMTP id q29mr648114lfd.10.1552848657950;
        Sun, 17 Mar 2019 11:50:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552848657; cv=none;
        d=google.com; s=arc-20160816;
        b=K7nt2mnJj6u7yp809oRlJG7l1xzCrifB/zVXz05UrWw6lwYugr2+9sMKh77FLeqNsG
         FVUaAFwcCty8LVl5H03Zaa+QuVmkmagLMypLzuFX9A/nblizT3MU/cfbnB2U9TSk2cNI
         BE9nhZo2cMOUFxbs1NNKog4+o687m4ywBjFHkAS0BX6srML7qnZBRsN0i87wjwQFG8Gh
         NdwdD92F4pDIyKJzCHuT4/AoAGpsIj0kbpmt6ex/8DCV2jUKtQLOtHQz0ZAuxaPRAuSY
         3qrTPoKKn+ds21Kw5kyjXxBs1N/mTNZNOnq5Y6QDpF3hot2B66JozVS/4f4un80kHKkF
         fpWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=nBqRJlawWQp4rNsPkV+HKVqI5LB+gvPBAA93Vyznc38=;
        b=wW+/sS/7dOB/PFrYTvP6mDZHS7qrFQJ2Vk0ar2xfb+5IbF0cmzigfyalNVjvjI4uGN
         XVQWvJwztHFIXwU0Gd7q9d5vMfUxRK48IpCe9EzBRfsVCRpBa0xmGbyEpEH/yBw8ukiC
         pD30EXtTndLv79kDyKoh+bgMDETtqp9n2GGQ2jFnYE9qRPgsDT3xlNQkl6VytDuFO2L6
         cVjhTJ9ZQi9r5oo9JPksqwRbl35Rt5YonaIBf6wDQEW9h2YpIc4yf+Yk8XUfDI2vDOeE
         el09Z+nfehs7gWZsBDSO1bMFRlHoEdCMJOJuZi0H6skBuPY3Y8IFYQQz+aC9cOz4ZMm4
         bu4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h14si450954lja.2.2019.03.17.11.50.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 11:50:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,490,1544482800"; 
   d="scan'208";a="374408143"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 19:50:56 +0100
Date: Sun, 17 Mar 2019 19:50:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: Greg KH <greg@kroah.com>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: greybus: adding ()
In-Reply-To: <CANTOzWGV5QatNq_RKks_6GFT2DspBErEo7aig-MvkLD8bT5F5A@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903171950340.2434@hadrien>
References: <1552845213-12653-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <20190317182210.GB3482@kroah.com> <CANTOzWGV5QatNq_RKks_6GFT2DspBErEo7aig-MvkLD8bT5F5A@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1033065236-1552848656=:2434"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1033065236-1552848656=:2434
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 18 Mar 2019, Payal Kshirsagar wrote:

> okay, no problem at all.
> Thank you!

Don't top post.  Put your response under the text that you are responding
to.

julia

>
> payal
>
> On Sun, 17 Mar 2019 at 23:52, Greg KH <greg@kroah.com> wrote:
>       On Sun, Mar 17, 2019 at 11:23:33PM +0530, Payal Kshirsagar
>       wrote:
>       > Parenthesis added to macro argument ‘gcam’ as (gcam)
>       > to avoid precedence issues
>       >
>       > Signed-off-by: Payal Kshirsagar
>       <payal.s.kshirsagar.98@gmail.com>
>       > ---
>       >  drivers/staging/greybus/camera.c | 6 +++---
>       >  1 file changed, 3 insertions(+), 3 deletions(-)
>       >
>       > diff --git a/drivers/staging/greybus/camera.c
>       b/drivers/staging/greybus/camera.c
>       > index 615c8e7..b1670b8 100644
>       > --- a/drivers/staging/greybus/camera.c
>       > +++ b/drivers/staging/greybus/camera.c
>       > @@ -180,9 +180,9 @@ static const struct gb_camera_fmt_info
>       *gb_camera_get_format_info(u16 gb_fmt)
>       > 
>       >  #define GB_CAMERA_MAX_SETTINGS_SIZE  8192
>       > 
>       > -#define gcam_dbg(gcam, format...)   
>       dev_dbg(&gcam->bundle->dev, format)
>       > -#define gcam_info(gcam, format...) 
>        dev_info(&gcam->bundle->dev, format)
>       > -#define gcam_err(gcam, format...)   
>       dev_err(&gcam->bundle->dev, format)
>       > +#define gcam_dbg(gcam, format...)   
>       dev_dbg(&(gcam)->bundle->dev, format)
>       > +#define gcam_info(gcam, format...) 
>        dev_info(&(gcam)->bundle->dev, format)
>       > +#define gcam_err(gcam, format...)   
>       dev_err(&(gcam)->bundle->dev, format)
>
>       I don't know why checkpatch.pl keeps getting this one wrong, but
>       no,
>       this is not needed at all.
>
>       sorry,
>
>       greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CANTOzWGV5QatNq_RKks_6GF
> T2DspBErEo7aig-MvkLD8bT5F5A%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1033065236-1552848656=:2434--

