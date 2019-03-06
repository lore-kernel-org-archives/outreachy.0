X-GM-THRID: 6664981263437266944
X-Received: by 2002:a62:bd0e:: with SMTP id a14mr2048360pff.71.1551848839162;
        Tue, 05 Mar 2019 21:07:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:246:: with SMTP id 67ls175229pgc.11.gmail; Tue, 05 Mar
 2019 21:07:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqwN6be7GK+TSF4eKOP4uhTSRJpjAtjILBgMPUdSdj+RPxVYZ5FJy9HxNhyFrunkWIy9fZC/
X-Received: by 2002:a62:42d6:: with SMTP id h83mr2024944pfd.52.1551848838366;
        Tue, 05 Mar 2019 21:07:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551848838; cv=none;
        d=google.com; s=arc-20160816;
        b=b4nHk1qbgSEK3fLmn9E32Q1eFuaaiPo8KEDEe2+ApSrV+p3+y1ixdpJOEVVM2UdqsC
         vk47Yc53/s16ZnWUU4vU2/HYr4Z+/AOV1kEZrGGTUjuDzc7jc+Zy1R9AI/RHz83FGlhs
         uDvYHNeT9LG8bsu4uq2QrH61qxhkWj5e9KimpN1zIv26SXZsghPoxu+B6n57CeZRalm6
         UaTFqpkP/o7olqGeCySfPqSH227qQ/nkeLv4h3uGtPqDZAAwDjyWQo3GlSWHg8YDsg1u
         ZgqTgaF2PQZeBV4NK2mRitiTaFqbe9ajsZL4jBd5Vrk7LCxAB2zWFD0KLnu9UNWvj5oL
         F+TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=osFgA3Iuh9AZshaPmEWtaRIf5QYabs2o4/IFP4Lm4UY=;
        b=zkwf6VrG++74vt/us+xf0Raw7qql6T6QO/5WnVALcDT8v3+VatJ+suU3ERVz3Hs5q5
         Wu5CsU1gf53H3OWXXBgeqZRaTN1Qn7OgJ5m3PF5BjMjdNlhKaEKDv7lWvl9sTlmGvtFx
         pWlNN9vs0K5U1HMkqpOI/p/74KBxexONo02aDx+ywnlgaUP62s+/EIx893Z7AnziMzqZ
         1PW66TVTTcu7z6B2gR7QcUzA9wxAaInGDTDuCbwzRZUs0bHQrdao8WWu6hPoDJINZ5dp
         zaxR8YR1sBN8u/dES/RewOHHk3DgZebqHm796TgZNwYnn/D6TvbOqbAJghDIG5/JVIoG
         blmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fHWTnMDZ;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com. [2607:f8b0:4864:20::830])
        by gmr-mx.google.com with ESMTPS id e71si51538pfc.1.2019.03.05.21.07.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 21:07:18 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) client-ip=2607:f8b0:4864:20::830;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fHWTnMDZ;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x830.google.com with SMTP id d2so11507977qti.11
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 21:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=osFgA3Iuh9AZshaPmEWtaRIf5QYabs2o4/IFP4Lm4UY=;
        b=fHWTnMDZTaoDZ2vE7eLoEup1AsCh9qN2lf4pb0wCBXupIp6ZzMVCOqC5I1DPtjJM2Z
         E2G1M2hfU6RL8uq4PSH1jq6tq2X8Fc/YWGWVJjuNRh9SQpQ9vgP5eoKxg8Hf5FYouFDt
         TLdd3ALXcQ62AW7yPvQx+5fALH1yWOuNUbH0hY3q9wo5rYTc+Mxq6DYFXJfxIoWTn8vY
         1zIT17ixu8uwXA8qX3zzGRIawblypkWGHLR/gthXX7e4B+g0zr716PKOyRQLoSYBdJF1
         TBlYSnv3uZ8L5wO9EP8yjQArCDi4+XCos4cQ4CdvD/YwhXvGmznYWDVhEjyXK7evYtu9
         pISw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=osFgA3Iuh9AZshaPmEWtaRIf5QYabs2o4/IFP4Lm4UY=;
        b=FzdjmOrT6wWbp7mbJ5M0eB2n0Y5OhFozd0r0wBDSTxelfJXcnO/zit6xDjDVeZ4i7H
         pUFDFka9eAsQEK5Q6YMaHjzvmU3Hr0pYqmHVYUheDeLA+RwirrB4eXDG6AeMzctDS5ap
         ksGPdS7I6/WWjYK2c6+OGO8sdxuwzD6iAqqUMYQbxdMEFP051K9HkdmWPd1YEcQsvbwp
         IV/8QnzLvkOqw0+OmwVT9QQDtE5qvUQZPV1FwvDp3m+GkORNLEWFyesEZQfMz/trFP82
         9QVEmLsmd6dUV2sHwciGtQ4fje2ZcKuKA9/TBP4xXIP+PrFXkrBJyT/LMyeHhjnRPAsT
         2W9g==
X-Gm-Message-State: APjAAAWaMmroBMDFy47q+Y5NboohsW/Tu54WQlNYs/rzMpjIE4NWIOM0
	32OnX/1OEQ0Igu8zceeNA2qISm+Xj4q9A4/P/18=
X-Received: by 2002:a0c:d1a7:: with SMTP id e36mr4916584qvh.127.1551848837878;
 Tue, 05 Mar 2019 21:07:17 -0800 (PST)
MIME-Version: 1.0
References: <20190305185109.GA2942@bhagyashri-Lenovo-G570> <alpine.DEB.2.20.1903051954200.3701@hadrien>
In-Reply-To: <alpine.DEB.2.20.1903051954200.3701@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Wed, 6 Mar 2019 10:36:41 +0530
Message-ID: <CAOMPgji8z6__WvCOe7Zrv4sAP3Rh9=gntOOw2VKq_Y8SkJV9Mw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/1] staging: fbtft: convert a macro
 to a function.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 6, 2019 at 12:25 AM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Wed, 6 Mar 2019, Bhagyashri Dighole wrote:
>
> > Convert a macro to an inline function to improve type safety and make
> > the code simpler.
>
> Didn't you have a series before where you also removed the other macros?
> You need to send the whole series again, even if some parts don't change.
> Greg will ignore all of the lower versioned patches on this file.

Yes, I will send both the patches together.
>
> julia
>
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> > Changes in v3:
> >   -- Change the subject line according to log messages.
> >   -- Remove extra spaces.
> >
> > Changes in v2:
> >   -- Make the converion from macro to inline function.
> >
> >  drivers/staging/fbtft/fb_watterott.c | 9 +++++----
> >  1 file changed, 5 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
> > index 502d67f..40e5427 100644
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
> > +     return ((c & 0xE000) >> 8)| ((c & 000700) >> 6)| ((c & 0x0018) >> 3);
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
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190305185109.GA2942%40bhagyashri-Lenovo-G570.
> > For more options, visit https://groups.google.com/d/optout.
> >

