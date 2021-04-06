X-GM-THRID: 6947895612953067520
X-Received: by 2002:a62:d15e:0:b029:218:4f9:d8ee with SMTP id t30-20020a62d15e0000b029021804f9d8eemr27923317pfl.28.1617719660646;
        Tue, 06 Apr 2021 07:34:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:a45:: with SMTP id gw5ls108885pjb.2.experimental-gmail;
 Tue, 06 Apr 2021 07:34:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyzusrzxjTll5zzl2ogODb9q+JPC/ZcfgC/gIXNuxsdvStmmT8f/BuTsHFUfaevivT2mZMn
X-Received: by 2002:a17:902:c145:b029:e9:244f:7b49 with SMTP id 5-20020a170902c145b02900e9244f7b49mr7146279plj.13.1617719658743;
        Tue, 06 Apr 2021 07:34:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617719658; cv=none;
        d=google.com; s=arc-20160816;
        b=e5rEAGdHCtHIWFvPWQpPZSu3Vvbj+/+pYEueMwzOkh+8yUN1hPXjCpq+sL8XhCDCme
         SIp/GlvonSCbmE+vbLn9/Wj1bbZWThx+DFsCKVfhZImJ4R4c3PMRc8/9czlYAiKA2bcE
         QU0LaCazdHLpQ3SA3wCshTEO2du/aMKgcveloKMVlV4SlYzxzYrwVtyc1uwuZUqWOb83
         409vSsMbVqGoS+tqfsqo8DjwE0kYPZu1AJE3/AJ52r5OAU/1wA1YQnUncZJHqpX++5qR
         Tz+ZOEA93lPPgTLa7BOG/A6WcTQTSgxsBul1J0W2T2uEeTT/25HpUkD6yvgTio3f9tyu
         3QLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZUYbOgHuSAYpzoZRGuGwSjbBeBpiwQiB3xQEQ3O76qc=;
        b=SPsQ78qMhIAYb1ZIcyRPmCC56fAXGvDaApOUE1J3u0VzYYpPRgJvAgLdFvojZUkYoC
         0wfgO5nt+zpucFelN+t22Git7i1EMoXOO52dK8bvoDiDHOHYxgXpQsUTuX67fRzQbZ5M
         MCy2kguActwfmrq7zjQttib9yTuTAlSbPmJk+xUmGjMzvWaI5MDPhBx5hvJi3OBcxCgY
         G9/9Ok6Nm4OyF7Rbi2GleKu5WfKqGaDpsgC1R150WD3so3lIY0IhlnL7HdDVd88fOUml
         Sq+dL+efto5p6i4Gs0yz3/Cd7MATV/7dAg7giEHeRPvXroUs2OVXxujepufVtC6C5AQU
         wFcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a6C3pD6F;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com. [2607:f8b0:4864:20::329])
        by gmr-mx.google.com with ESMTPS id 131si1541996pfa.2.2021.04.06.07.34.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 07:34:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) client-ip=2607:f8b0:4864:20::329;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a6C3pD6F;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x329.google.com with SMTP id g8-20020a9d6c480000b02901b65ca2432cso14828858otq.3
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 07:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZUYbOgHuSAYpzoZRGuGwSjbBeBpiwQiB3xQEQ3O76qc=;
        b=a6C3pD6FZR61u+r6hPwcKK5oPhn2ctxJjsOImJToXfLJYrlNSUeZlN8JXgdtQBIVae
         b9yU843pSLe08l56Q2/hEbSH5fsx8eEr5yWr1T4+EzogfNEIZsPyQ67wOIZkugIg0xlQ
         TQ7VNHagnrdq+1WZq2jRezfmr2+eQIdlYIG0l1tvV4dwwIddjU/Pt2Js8t9ufQcfxCqs
         JvGd4jmKggm7npHfYtd0utBl1JwrfefCX79/TTOcmlDBcAsWQxHHw6I4VdJXpratuhk6
         zYSk/LJHPnzrH20acNB8EAYmRlUGgBzARdDYtfZRncK4jMwIptaogcenWCCjnVgLpQ4K
         xswg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZUYbOgHuSAYpzoZRGuGwSjbBeBpiwQiB3xQEQ3O76qc=;
        b=Uc4qTyIV38HY4h/JUkylJRnfSvxz0weN3NUG1jWJHKMxHPki26kc2+KJ8cbbB8sIWo
         Accad39Q63YBaQO1xjWNHZyEEsDjw0jlGU9faLd47+xnM3R6x5JnWU1Zn7iGKupNJ7d+
         CBMRacAQWTHI9uPDdHI2pxB2IbA/nu1IuGB6Maqi40+Jl479+YaRHgmTynlflcI12dVM
         6Ov5anQ6GiwVhvqn3XRw50xcFXOZFMf9DGvhEh16jaPgICogMUQM+kzbGJSi47oRRXsW
         JaFpTkQtgz9nJ1w0PHsX9npt1zBTXNj2Qa39+W+vLI8DxJqkE3ee/EjsXUlKmEJLv6yR
         vdtA==
X-Gm-Message-State: AOAM530NmBQYmRV/TGOI/pqlGn1FvQaH23k0pBvahWWy3rSyec6Yf+Ff
	ix+dAR68vCUYDbGyHzg1m9we69F+hBkvj+p5z54=
X-Received: by 2002:a9d:7f8a:: with SMTP id t10mr26190979otp.239.1617719658109;
 Tue, 06 Apr 2021 07:34:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210406130556.1417-1-fmdefrancesco@gmail.com> <YGxsExq2fcQvrN99@kroah.com>
In-Reply-To: <YGxsExq2fcQvrN99@kroah.com>
From: FMDF <fmdefrancesco@gmail.com>
Date: Tue, 6 Apr 2021 16:34:02 +0200
Message-ID: <CAPj211u9MHgtjeZGUPsLxU3HkbJ8cr2EUL0v9HA7LE9-b1uUoA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: hal: Remove
 camelcase in Hal8723BReg.h
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 6, 2021 at 4:11 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, Apr 06, 2021 at 03:05:56PM +0200, Fabio M. De Francesco wrote:
> > Remove camelcase in some symbols defined in Hal8723BReg.h. These symbols
> > are not used anywhere else, therefore this patch does not break the driver.
> >
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
>
> If this is "v2", you need to put below the --- line what changed from
> v1.

It is a v2 only because you made me notice that I forgot to cc
linux-staging and linux-kernel.
So I sent it again, but probably I shouldn't have changed the version
number because nothing else had changed.

> Please fix up and send a v3.
>

No problem at all. I can explain in the patch v3 what I wrote above.
May you please confirm that a patch v3 is the correct solution even
when nothing changes in the code?

Thanks for your help,

Fabio

> thanks,
>
> greg k-h

