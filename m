X-GM-THRID: 6664942000953884672
X-Received: by 2002:a81:8546:: with SMTP id v67mr2591605ywf.1.1551860559933;
        Wed, 06 Mar 2019 00:22:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:589:: with SMTP id 131ls329408ybf.7.gmail; Wed, 06 Mar
 2019 00:22:39 -0800 (PST)
X-Google-Smtp-Source: APXvYqwkMod5Ld0SHyhJo5svcNCIqb8H4z8qWmQVt338dyCvS1uMBvpEhl+WhSmAj9F+4r3cGKWk
X-Received: by 2002:a25:34cb:: with SMTP id b194mr2786873yba.98.1551860559087;
        Wed, 06 Mar 2019 00:22:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551860559; cv=none;
        d=google.com; s=arc-20160816;
        b=uIwxQ2CQ9avDrpq5C5OblVCANOo6jgT8hCVD7zrEn6amoJV6MZKDtGmlCLwaHFX/ZT
         1ujc/au6A4CYl8ErGQLmVIXJf+wIWIJCfnPDmVLjuAD6jzwoZ2EjpqwZy29sy8xHOKWK
         LHC+jTmynoAuBV2+ZXeFkoilRRd68Grhw0Xao4EbSxsnUV/uHzVd/rptAfCl2vD/gdp8
         ZTwxIcPuKAbRJXkrgffah8SdIXRSNkzxI0qwpZvQxJTCSK/s/kTc9+7jvV45//WB8AWS
         Pmszd62KVKjUz3O+MXVvhm1p7eiuvE5Ml23Vy8R7QJTAn/RLPKbC/w7wkj3owEFSN26N
         IJMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vkP7utw15ivlePu44hNwIsPXYz7uXINLL7UrI+1806M=;
        b=xusCRv2i+AffoW0Qx3A53UyqjZIDsIkBfBfP+SkG7FT0VrlVZ/Oz3o/vsjzFB5XgEv
         EmYN9YV41Hq/pvc6vzzySUSxeUbc2VRvXLR13jkBcf6MymxM5DnFduKwW1FRKtFUITQr
         yh48drRGia+jaRSqv5sVFHB1VQaR/cdm7XU/lhX1kfb7eJjFdx99RNmToPnawmmZktHy
         VfMzOlROHlzCm8K9MiazblXue7dWvzeuldidmCIYXENSlDsmCXMrBUdEJIV2vDzzeAHp
         PHN0U2j205H9xF34RG3pMSZmPdpCYwV3Bmc5mOyvKkO+P10c7z1uQjCSAOQFODRISVUP
         mSKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ck8zL6bY;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id d186si19666ywa.1.2019.03.06.00.22.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 00:22:39 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ck8zL6bY;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id m9so6217521qkl.4
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 00:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vkP7utw15ivlePu44hNwIsPXYz7uXINLL7UrI+1806M=;
        b=ck8zL6bYj/iUyhzKZ1H0ibQXLTQ9ZsSbrWkNyOJy6jCL02o1guNR4i55UGWbSnmde8
         8Te3apaBuzR074XLqxp3bVrC+bloC+wrlbkvMEfwt2Tahl1qOmT4VD4OL/jJWG89qkWf
         sH20GA525VTi+vh/cWnRX4v+AS8wAeCKWIjPJrP43bCa0Fho1eF4lkDK4rNkP7iTyaRG
         mfo5iV9SIgKsVzoA4y62bOGFp8QhXMBhvTcLHA7CE8pqzN1DySlf7YOGWYLDoLitQXIq
         90MaDL+uuvwpUOgEByLUA5/ZFXaezAOQjayzp83mgmLETOq0ulA5k/hZPNoDxMbOWGB1
         RC+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vkP7utw15ivlePu44hNwIsPXYz7uXINLL7UrI+1806M=;
        b=AUN/0TxFE6y7d0bS/iVaIDKmCt0BHU7L7lNus/YSwc7WZW/53brXd1zeVESl38gfdE
         q3KSmXc9KyP+eRAAkcGWqcggWx2fOBAq+oEojh94hbTshwDCSAsdwWomv/WV0HWnlKO2
         1Y3AMCWrtXNW+gNwofbuM2Kboq2DfDab4d6uI8rzDLKOrr5HcYNOkySBLwrbKIPool+Z
         7PcjidNoh4oBuMisCjnoCo3FpHYD/J3008q86oOtvEA6D6YApoq12YLQogt/k6uJ82JR
         26wVfRkhNWf3x8r20DXJg6JcytTYVXSM0mSLz57oNCpB4mK6afutHYO7nDZafLZqPcYW
         TnJg==
X-Gm-Message-State: APjAAAVjcMwZYutKSjCNSr4WFB3uvvqsmZEoL57MNc6SRRvhIpszUKPU
	kL5SEQ3aWPYiR+QLF4ikLjrxicx9lXo/eJax2IlvqnWW
X-Received: by 2002:a37:4ca:: with SMTP id 193mr4632837qke.21.1551860558672;
 Wed, 06 Mar 2019 00:22:38 -0800 (PST)
MIME-Version: 1.0
References: <20190306052313.GA3924@bhagyashri-Lenovo-G570> <alpine.DEB.2.21.1903060859150.2706@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903060859150.2706@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Wed, 6 Mar 2019 13:52:01 +0530
Message-ID: <CAOMPgjgrT3q67efW_nnbGU0qTi1DMEj=Siyy2FRSZOCG+dQAoA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] staging: fbtft: Remove unused #defines.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 6, 2019 at 1:29 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> It would be good to have a cover letter (0/2) for this patch series as
> well.
>

I used -n flag for generating cover letter because there is two patch series.

> julia
>
> On Wed, 6 Mar 2019, Bhagyashri Dighole wrote:
>
> > Remove unused #defines detected by checkpatch.pl.
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> > Changes in v3:
> >   -- Change the subject line according to log messages.
> >   -- Remove extra spaces.
> >
> > Changes in v2:
> >   - Remove unused macro.
> >
> >  drivers/staging/fbtft/fb_watterott.c | 6 ------
> >  1 file changed, 6 deletions(-)
> >
> > diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
> > index 0a5206d..502d67f 100644
> > --- a/drivers/staging/fbtft/fb_watterott.c
> > +++ b/drivers/staging/fbtft/fb_watterott.c
> > @@ -90,15 +90,9 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
> >       return 0;
> >  }
> >
> > -#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
> > -                        (((c) & 000600) >> 6) |\
> > -                        (((c) & 0x001C) >> 2))
> >  #define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
> >                          (((c) & 000700) >> 6) |\
> >                          (((c) & 0x0018) >> 3))
> > -#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
> > -                        (((c) & 000700) >> 5) |\
> > -                        (((c) & 0x001C) >> 2))
> >
> >  static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
> >  {
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190306052313.GA3924%40bhagyashri-Lenovo-G570.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903060859150.2706%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

