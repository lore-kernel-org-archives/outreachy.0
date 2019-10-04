X-GM-THRID: 6743623075363815424
X-Received: by 2002:adf:e881:: with SMTP id d1mr124729wrm.126.1570181915536;
        Fri, 04 Oct 2019 02:38:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4282:: with SMTP id k2ls2608042wrq.2.gmail; Fri, 04 Oct
 2019 02:38:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxpUBmyQIGAMPWW15EgdFcxPHG5FEGTxRB0YxvJCbLAEjNFuEJER3B4G093cvukBrqfPWbb
X-Received: by 2002:a5d:670c:: with SMTP id o12mr11210468wru.103.1570181914626;
        Fri, 04 Oct 2019 02:38:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570181914; cv=none;
        d=google.com; s=arc-20160816;
        b=iMXIcKz9nNBgxaENjjwGlO0bQAW9wT7csW80bpzeq0sMTF6ei32WJWe3rBKY7gu/2D
         vbLQJwyaKCF7QVbU2KBU0z9nq/OeP9URT2mJ8BHIh6oP09qhONf5FjP0t2eM53kDn3UK
         7qQqGm2BEQg9dGkmihP92/SUHlyCfOAISTmcKJkqzno0yFi1zw9BlSFGdDEmbMqpDGfo
         d2U5vPMWfoCZcslriXeltqUDV+ovSmhYJd3fFc550Y+nSGW+esaZgmuvfi9HNyvYkBKX
         0OVjJFszVhujbOQnYkJfZmdXgeiLYnijNaeeXFxRHHGlxFx/SQg5rHzsf+QzwOXifLIG
         h6Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AmmZZ6gUoHRN2tRFK9jFfbl/cQ+OPuAd5e8+3HVzeGU=;
        b=PshFJdW+3iM5jK86hNFeKGbYcYTfJScu/S+VOI+qV6tkOcFcgre4FdzDJ3j5Sa5LFg
         u2Jnts3khci6wr8vkIToLZd7LeEuSX6jc6+jp29xSjBwerIcBq+be+qaqwcfi/s90ziK
         xY3zEeGaRbgEziXxtP9ENLHdOtKcT9mZnMYyoUtjxS4FagsliN0YZyYOOU0Q2c81ZaFY
         DKhq6KWnnwqdrYYfuhq0sehPs4cGpIQMzulDslvJ1QyQHWqeNtkBnzbjnt16ByqrFkoA
         873NUvrzWvmscIwwe5E8XSfoXIMtDTq7jRXwv/e7xR68jTjCg4XcwAUYbkPz10Xtgm7x
         4AOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Io/KSUTA";
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id r1si302747wrn.2.2019.10.04.02.38.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2019 02:38:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Io/KSUTA";
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x144.google.com with SMTP id u3so3975157lfl.10
        for <outreachy-kernel@googlegroups.com>; Fri, 04 Oct 2019 02:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AmmZZ6gUoHRN2tRFK9jFfbl/cQ+OPuAd5e8+3HVzeGU=;
        b=Io/KSUTAaQxSbh8Re/A5n2bfS1J8Noq3FWSP+dPOXXYFURF6DKTBufgq+crfBACQj5
         gBu6ET+nV9ffG/M7roeo1iBZZSawRu+xzUkErlqCuDFETT93nPal07iew2hj6m273Y1J
         qCtnzMlFg9+qIm3T0ng2P8bSOBoYie5agazWopchn3kUD5PuyTvZVyLtVeCyHwHHPIDT
         qL8ZAjq6XdHsBQIN1ZF9LrHYEJ5COFTzXnevWnl6GLu/5JXJrmyaYfnfX5/LY32dcpzf
         R3S/GqMSPE1uWEowDuifF3PEuoAjSCo4nhVlzM9tZFPG33pUFv415C1bqOye5ZRQTSuG
         SPJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AmmZZ6gUoHRN2tRFK9jFfbl/cQ+OPuAd5e8+3HVzeGU=;
        b=Ap4rcBZZvZjjrdiMnomm38Vk04uRzSUx8dW3BBletzVCCu/v4s4TSQJ2neMEU4Lq32
         yDRGBO7ckNpyZU8qE/mHDy/m85zZMUlHflP+zOf9ytoc32CyGU3/LzW1oJ7MSj5tBESC
         9Nn4k5EfBu4RJAZ1GSNBTZixkyRXAdQ9eOU3y7heyrhu1ZIcTVik7ZXyvvJEN97vz35l
         zdMdz2ja/ai7EM95fFOF9l2isucfKbqTuXxi2batOXwUjL83UIqLv1HhT1XEzTJdLeqL
         k2Hvmrfkl+TRkzQCFr1DV3ZiuBPii0upkW4xVGPwCwMHxh8y/Lf0A6N2cFdDHtGRlyrJ
         oEbQ==
X-Gm-Message-State: APjAAAVAp2+TG27IYubyY2mfRVqKga/ozpdBfQ3oaKDbIB88XQC4EkhM
	JmbhZgkRbu7TG3wIZO5O1rtD4kdktYsTpSTYut/PutoP8yY=
X-Received: by 2002:ac2:554e:: with SMTP id l14mr8970535lfk.32.1570181914070;
 Fri, 04 Oct 2019 02:38:34 -0700 (PDT)
MIME-Version: 1.0
References: <1570122078-23942-1-git-send-email-nachukannan@gmail.com> <alpine.DEB.2.21.1910032309220.3451@hadrien>
In-Reply-To: <alpine.DEB.2.21.1910032309220.3451@hadrien>
From: Nachammai Karuppiah <nachukannan@gmail.com>
Date: Fri, 4 Oct 2019 05:38:21 -0400
Message-ID: <CAMOCsdt9xxO9nCP+HWppnfsws+yUar=RTrjVg1FFZQ6Fq=N4hA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Avoid NULL comparison
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 3, 2019 at 5:10 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Thu, 3 Oct 2019, Nachammai Karuppiah wrote:
>
> > Remove NULL comparison. Issue found using checkpatch.pl
> >
> > Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
> > ---
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > index 17a4f2c..a2268d5 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > @@ -628,7 +628,7 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
> >               }
> >       }
> >
> > -     return (service != NULL) ? 0 : -1;
> > +     return (service) ? 0 : -1;
>
> You don't need the parentheses.
>

Yes, will remove the parenthesis.

Nachammai

> julia
>
> >  }
> >  EXPORT_SYMBOL(vchi_service_open);
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1570122078-23942-1-git-send-email-nachukannan%40gmail.com.
> >

