X-GM-THRID: 6947895612953067520
X-Received: by 2002:a1f:3250:: with SMTP id y77mr13595722vky.10.1617721528994;
        Tue, 06 Apr 2021 08:05:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e8cc:: with SMTP id y12ls2326676vsn.8.gmail; Tue, 06 Apr
 2021 08:05:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxPqGBMdwkX424KYlcMtxXU0KNpRVrQEaO8cm/kB0agjxLUKAg8nYA9u0GAMcaj0wBb0OGS
X-Received: by 2002:a67:f595:: with SMTP id i21mr3955965vso.16.1617721527950;
        Tue, 06 Apr 2021 08:05:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617721527; cv=none;
        d=google.com; s=arc-20160816;
        b=wWITD7yq6klc3SjysKhXMgsVsynazj9rc/T6ARneomkLZXZHJlahG5yB44UwzYgdM/
         xkJzgXATIKh0ovd8xie62uoGS6fDmSvn9iA+e8WDtejSAdkOmrOMNlLLTfx1IaLxiAYQ
         /3nRo16cFzXKoTk/QD+GFTZialARylHMeG7oSwTHBoOnCyrLNiA2htfMKZjgHwp8Rbc2
         xrSD+aPCVvPwis4Czum8zIsnibz6rn2SDwnI2LHGSEbv105Fi8FGkXqZi6Auv2+LEQ6U
         i+Fl4GPNrKroR53Fdwyb1L/OZPUs6VrgscSumLOrw0ucjd/XZ7DZpUgvtDoOSMUjkX9T
         ORyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DN+Pv7shK2P5BW650iRpB29dWVvYcWcUHF2JuKWInlk=;
        b=SRgReiZTmXD8XFQjY9yYZT/FSSf96NLy1tF9YikIE10auiUpm5Z+hexOrQqAyDfbvy
         GAIXWcG7PN1mOno/gkIOQrnDVTYFPKQSKP2invMbwjtEutmcDlYvagHBfFwivw7CiTvx
         OO8BcOnqDp0hf02Nt+5lRotHhb70u6j6enbNAA9gpkR5L0vY/kM1TcZdqYOoOKjmoptO
         xpNX4giddqVvkkpz5WGsMLqScT4ezB7+zO0L1ZUWo/4lHWkiDNirHeWKMpEMrgbM72ev
         d1RXzaDeEPJR570+KOsCnraNDOf998xix06IoGJAKbMGGn9DbY/zK2KgplDMM6vALvhW
         JT0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ku1nVe5i;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com. [2607:f8b0:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id u142si177975vkb.3.2021.04.06.08.05.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 08:05:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) client-ip=2607:f8b0:4864:20::32b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ku1nVe5i;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32b.google.com with SMTP id s11-20020a056830124bb029021bb3524ebeso14975644otp.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 08:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DN+Pv7shK2P5BW650iRpB29dWVvYcWcUHF2JuKWInlk=;
        b=Ku1nVe5iO8Xtqeg8NkdHqrYdN21nd8yNnCo+E/U016S9pQabMx3O8P+3jQ0YAykN+Z
         yKuil8NO5EmGUWi+vPhbdxWBxGZC/HiGdyD6tgX2nK1hvA8HEnO8/mgbyl3fxXVfO96i
         edZs8cxghO6icquJGY3+z9X7XlK8q+XJjH2b8hjrLv+yDS2vYOtZmAALPmiUfbFwqLDN
         f0UVl3T8AcfL0fiHd6lnIXFeWc5PaFLiCoQ7bXuhN0sKUskgF1YxYo2Yvy/oAQC2B5Rd
         LGqsZbaR2Aw4xXqPrdAMjv4hZQTcWUpnjiNQ38C6FrlhLNAHdHvxI39s1hsKY8N37ffB
         yHaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DN+Pv7shK2P5BW650iRpB29dWVvYcWcUHF2JuKWInlk=;
        b=uMuVazHbUmYVqmioNahqSH0QXtpvFcdFy/t6Hsuu875lJ+4IhUM2yHqSShxmBRu96r
         9SqUpbHgBFPIOqu2bjl9yMWanhv3CX3T347STDTomxxnvPIsu8Ws6Mg7pFez2WiVR2wO
         kFrwkYCTYmh8hqrMUrfzGBv+GYdRXLvU+VWrJg9sMCmF29fHjU4GHiqXQnLYo3rU09NQ
         XxXM0g0m0BX/GA+rRl/zRoZFsiGocO/rTG/RKUXkLRK7GtWkVptiM7YDuAMASNIX7vgz
         NI4Ex1cdHoWBCJXlS2trPO7Y4hGdQ8q6qdIShxJCtZJ6GPexRMlvgMRsbaKH1zlNSyLz
         a1iQ==
X-Gm-Message-State: AOAM531V3htLIpb2Y8K/iGj9aalpgcfaYhkTrJvPwQVQ2bwzzUxLvnYZ
	BANQqTkEvkbxdhVWf/QynVWuCrHbgLqek+V760cEcFX9TxLFzQ==
X-Received: by 2002:a9d:7f8a:: with SMTP id t10mr26302185otp.239.1617721525118;
 Tue, 06 Apr 2021 08:05:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210406130556.1417-1-fmdefrancesco@gmail.com>
 <YGxsExq2fcQvrN99@kroah.com> <CAPj211u9MHgtjeZGUPsLxU3HkbJ8cr2EUL0v9HA7LE9-b1uUoA@mail.gmail.com>
 <alpine.DEB.2.22.394.2104061652590.2882@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2104061652590.2882@hadrien>
From: FMDF <fmdefrancesco@gmail.com>
Date: Tue, 6 Apr 2021 17:05:09 +0200
Message-ID: <CAPj211uct7K7e2Kcz7drmWGcfuTRQYTWHFRvrA9ah-JmBTotsg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: hal: Remove
 camelcase in Hal8723BReg.h
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 6, 2021 at 4:55 PM Julia Lawall <julia.lawall@inria.fr> wrote:
>
>
>
> On Tue, 6 Apr 2021, FMDF wrote:
>
> > On Tue, Apr 6, 2021 at 4:11 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Tue, Apr 06, 2021 at 03:05:56PM +0200, Fabio M. De Francesco wrote:
> > > > Remove camelcase in some symbols defined in Hal8723BReg.h. These symbols
> > > > are not used anywhere else, therefore this patch does not break the driver.
> > > >
> > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > ---
> > > >  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 16 ++++++++--------
> > > >  1 file changed, 8 insertions(+), 8 deletions(-)
> > >
> > > If this is "v2", you need to put below the --- line what changed from
> > > v1.
> >
> > It is a v2 only because you made me notice that I forgot to cc
> > linux-staging and linux-kernel.
> > So I sent it again, but probably I shouldn't have changed the version
> > number because nothing else had changed.
> >
> > > Please fix up and send a v3.
> > >
> >
> > No problem at all. I can explain in the patch v3 what I wrote above.
> > May you please confirm that a patch v3 is the correct solution even
> > when nothing changes in the code?
>
> When Greg acknowledges your patch, everyone who is concerned with the
> patch should see it.  So he needs to pick up the right version of the
> patch that has everyone in CC.  He can use the version number to choose
> the most recent one.
>
> The version numbers don't appear anywhere once the code is committed.  So
> it's not a problem to move up to the next version for any reason.  On the
> other hand, if you skip a version, it can be a problem, because someone
> may wonder if they missed some useful information.
>
> julia
>

Thanks for your clear explanation of these details of the workflow,

Fabio

> >
> > Thanks for your help,
> >
> > Fabio
> >
> > > thanks,
> > >
> > > greg k-h
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAPj211u9MHgtjeZGUPsLxU3HkbJ8cr2EUL0v9HA7LE9-b1uUoA%40mail.gmail.com.
> >

