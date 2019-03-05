X-GM-THRID: 6664782574497300480
X-Received: by 2002:a25:50c7:: with SMTP id e190mr1789144ybb.37.1551807975161;
        Tue, 05 Mar 2019 09:46:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3888:: with SMTP id f130ls1161594yba.5.gmail; Tue, 05
 Mar 2019 09:46:14 -0800 (PST)
X-Google-Smtp-Source: APXvYqyLvFmUtnxNjLgmweyzHYsQ41myqwzYvbZACFlCT+aU9AjaoIamC5KXnLWnPLJeYXvquTJh
X-Received: by 2002:a25:3249:: with SMTP id y70mr1662868yby.70.1551807974200;
        Tue, 05 Mar 2019 09:46:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551807974; cv=none;
        d=google.com; s=arc-20160816;
        b=xnx4Pshl/f1NzUX7PzmGGt6OEOauEcjXMaEcNZwFoBC/qAEV4mUdJE9hOm/KpM+Qie
         60jbgxwqq7vuSBtw4plaiiMb5k8H4gw7rHGXfmvP0hlSCfCuNAGksFqzH+9NZPNpJeTd
         CRI7KyltoqvDAqSeE8V0F4HtD4ORAOtSM8P+zOutTy3pG30cD3s5U6ekf7RL90be6fGg
         /xPpA86YqpMcU06z8EmlIwRl6acfeYREYDFkuIC/Y/t5Xj+astBCJUPtJXhIxWlkiRnE
         cod1bte0HFC7kS8cxFvOy4ez1+WsUsOUO9i8KTpJrDZ0Fc86MyPV/+hxtos4S96HLARa
         zVbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PXZAtQXCqtO6XPChNbsimk4Ek+7rXOUq1OcU0mHkH+0=;
        b=z1GgQoTVuz/ga0zBKKqd1e1y4XIL4Sc/CWoDmmCazYLCkhwkM7G2sf/zXaq0CQEEPT
         k4N5O7dmT9Y5J6HHiFixmFy6DyD/B3aV0yaytfkaYbiNMQfQVNj+T5BstHsptXnVra5u
         JQ54n+6frOIS4hBaMoUCs/8MW/vQax7M6hNZDPci1O2fHRAvWJcGxr87oIJVg378gyvy
         5YukXEgeLi5OB3ICQNsdZtg2X68ApD1QDixm3RJz/9gYiAMLESG/stdEHgxFkteOq7Dz
         Q8Kgi9UXLzSMH6UJDvBX/AYOsmnSvZ9bxDe8tjE/vg10wb+GzwhwpjVW9wdTpela+AVn
         ZDbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iKHtQqYZ;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com. [2607:f8b0:4864:20::831])
        by gmr-mx.google.com with ESMTPS id j16si494043ywa.2.2019.03.05.09.46.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 09:46:14 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::831 as permitted sender) client-ip=2607:f8b0:4864:20::831;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iKHtQqYZ;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x831.google.com with SMTP id d2so9804804qti.11
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 09:46:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PXZAtQXCqtO6XPChNbsimk4Ek+7rXOUq1OcU0mHkH+0=;
        b=iKHtQqYZvFpLKQbxlNWAsEmYnRhvvDrIjsabTRY7NU5YXsA0456vNgwCL0oGrmwZAM
         cI18OK8YquKIxMKZbNgya2wanrnAdOHdLtaQVfI//Xs7+iKTc+e16mcgpybAhWDZCD63
         N+C5XN/ZWwQg5g+4h9xfOKgcVzJHLQA6bI1QlX5SNd72FaFsQFOp2vwmolcxyqT5d0Ms
         1L1k2QNWsY6NtTxXjzlxrt7YL5WF+TRnfyHth9z1yBB4Jl/1r0Ym8QsZk+CgvIj/U7Xx
         x1UrWPtp40IH3ATqmcOKUYVOrq47SZryStrUrLR0lWd40JGaxZ75kSh9z1kIYcyhbGsD
         kz6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PXZAtQXCqtO6XPChNbsimk4Ek+7rXOUq1OcU0mHkH+0=;
        b=eOuJv6ybtQrFerZXKcqFqqftlcmr2pIiz43jv7eSRH7k9T+Afq1l0f8AYUnaIKaRNi
         Y8J2FtRNZmVt7AJjzvVNNNpeeBtZU6KnjV637Q/aN7jDu+w85vvhFbHgw9PVkO+I6hQx
         3QKM7wsnFWbAidXjLAd7+1whUCqaXooc2crcHW40ChG8EXEzCtj111IVAFtJCydkvsvo
         FvcqGNeAqeBryomxyhOcdoCOL1KSj0BBsKzBHtsc9eYAwx6RNR17rVROdVO5o95tLGo2
         JfcAjvmZRU0vHdJspaQznihzlTcsPGC02bmwlzjtwu7AsNps/Q05cfnlamq5N83yWSk6
         Pnmg==
X-Gm-Message-State: APjAAAV7a6Jee0QdwevQlT2+QEuW2daVwDdp6QukKdV0K5xFff8BBIeI
	5G5XVdJtJgFiMVr5sHV+eYbSPGcIjc57X3m6NcQ=
X-Received: by 2002:aed:3c0f:: with SMTP id t15mr2418226qte.282.1551807973764;
 Tue, 05 Mar 2019 09:46:13 -0800 (PST)
MIME-Version: 1.0
References: <20190305162229.GA32171@bhagyashri-Lenovo-G570> <alpine.DEB.2.20.1903051726230.3701@hadrien>
In-Reply-To: <alpine.DEB.2.20.1903051726230.3701@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Tue, 5 Mar 2019 23:15:32 +0530
Message-ID: <CAOMPgjjtgqAA5qMrsBKcwbz3Gph2OhBSX8FZJrj2OK5yV=O=QA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: fbtft: Avoid CamelCase.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 5, 2019 at 9:59 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Tue, 5 Mar 2019, Bhagyashri Dighole wrote:
>
> > Fix coding style issues detected by checkpatch.pl `CHECK: Avoid
> > CamelCase`.
>
> Good job on making the function.  However the subject line and the log
> message are not really appropriate any more.  Say what you did (convert a
> macro to a function) and why (improve type safety).  The camel case thign
> is sort of a lucky accident that led you to the problem.

Thanks.
I will update it with the proper subject.

> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> > Changes in v2:
> >   -- Make conversion from macro to inline function.
> >
> >  drivers/staging/fbtft/fb_watterott.c | 9 +++++----
> >  1 file changed, 5 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
> > index 502d67f..90b7c07 100644
> > --- a/drivers/staging/fbtft/fb_watterott.c
> > +++ b/drivers/staging/fbtft/fb_watterott.c
> > @@ -90,9 +90,10 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
> >       return 0;
> >  }
> >
> > -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
> > -                        (((c) & 000700) >> 6) |\
> > -                        (((c) & 0x0018) >> 3))
> > +inline int rgb565_to_rgb332(u16 c)
> > +{
> > +     return ((c & 0xE000) >> 8)  | ((c & 000700) >> 6) | ((c & 0x0018) >> 3);
>
> This is getting really close to 80 characters.  It's fine though, but
> still there is no need to make the code wider than it has to be.  You can
> remove the extra space before the first |.

Sure.

>
> julia
>
> > +}
> >
> >  static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
> >  {
> > @@ -116,7 +117,7 @@ static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
> >       for (i = start_line; i <= end_line; i++) {
> >               pos[1] = cpu_to_be16(i);
> >               for (j = 0; j < par->info->var.xres; j++) {
> > -                     buf8[j] = RGB565toRGB332(*vmem16);
> > +                     buf8[j] = rgb565_to_rgb332(*vmem16);
> >                       vmem16++;
> >               }
> >               ret = par->fbtftops.write(par,
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190305162229.GA32171%40bhagyashri-Lenovo-G570.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903051726230.3701%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

