X-GM-THRID: 6950399749246681088
X-Received: by 2002:a05:622a:49:: with SMTP id y9mr35762423qtw.0.1618397892852;
        Wed, 14 Apr 2021 03:58:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4d8d:: with SMTP id a13ls728677qtw.5.gmail; Wed, 14 Apr
 2021 03:58:12 -0700 (PDT)
X-Received: by 2002:ac8:5208:: with SMTP id r8mr13165541qtn.206.1618397891977;
        Wed, 14 Apr 2021 03:58:11 -0700 (PDT)
Received: by 2002:ae9:e88c:0:b029:2e0:3a6d:aeb7 with SMTP id a134-20020ae9e88c0000b02902e03a6daeb7msqkg;
        Tue, 13 Apr 2021 09:05:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyHgep1OqGlLw8fWpD8N1s+nML/kKx6UC2QoVjqVs3uBJ7sm1xM/vKADZt+o9h9q/725QRG
X-Received: by 2002:a05:651c:543:: with SMTP id q3mr13543702ljp.46.1618329927845;
        Tue, 13 Apr 2021 09:05:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618329927; cv=none;
        d=google.com; s=arc-20160816;
        b=iWtDZrfQ1KTsLxgO/30BFWP7uuL3DJt56HaRQc1e1dgwCUXlN1FEQr05r5nzUMsACP
         kmvVl0dp3vr3RcAbwg2UTFjpjkUFRkxCUoA+vGpnz+XtDXTzJLKO5RmviMf4V8pLf6LH
         yPUBN3cTBsQAezLw8SR2bu64gx9YubXhvtawm6Ehm5Z/Un0hTpGb3DKWiSHosEqX3t8t
         TCvO+6IRhoCpsRz84sh0kKFLMot2AxUzZZTPG5PgeDQGaAQqUyP+cDTAGwQzdi/9M70l
         R4SQwOx/jOoZXsXFeuYBOrRh6YSw/H51znTF/X5u6SOl4Nnyuz42hk4SfQdwrX6dx284
         ON3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UaQ/mAhPBWcVQ4YIzorH159V0qjCsRuD4zR9Ef1vsSA=;
        b=EVtKNZggmmg3YJOJ9v6oQi44RsUpKlr7zo43CJcMcw4NIOBWgPRgK2klYXn1zn7K2z
         ph23jveSJRFIvhPHkoYEwLdwJX7BZ00IFvTV2xPyFMtcT086b7VMdpO+L3V2Z8S1j2qz
         TuOBT6w/Pw7KFrRH09RMiP6wMxqdTFv9g7jyeE3WLeaKrwc0UtG47WM8PNRJ2MOmrZ6Y
         T3Jb360rHB2i0dG0JKUhrPC778G6FvJKp4GRfyeQ/DNFIM9otkhcLA/z1eI3miBGK7aP
         J9dfOxmByVLuSjVVDPAW9PUZU214/I6puIslHUqUgGBs6WEs7MFoErFIYdbFTDr/sBr9
         fBRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nhv26Fjt;
       spf=pass (google.com: domain of dwaipayanray1@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=dwaipayanray1@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dwaipayanray1@gmail.com>
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id p18si787215lji.8.2021.04.13.09.05.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 09:05:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of dwaipayanray1@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nhv26Fjt;
       spf=pass (google.com: domain of dwaipayanray1@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=dwaipayanray1@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x12f.google.com with SMTP id w8so19700300lfr.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 09:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UaQ/mAhPBWcVQ4YIzorH159V0qjCsRuD4zR9Ef1vsSA=;
        b=Nhv26FjtTrKx18HWTKMiJfuFCpT2B+O8I/yPgaTyCHFTPcczkm/SCS1gWUXWj08Nsv
         BKOxEJIrDVeMRef8F9lJA0eztz7TjDxZ2PHwiYhOk95VELWzgCZXlCSVQtM7DmARqADE
         Dagx/xR8vGWH3nUBQWJLulDIC4mq+bnO2db/CSYwhNjHDEj28siMVeesLtBNZtcVuHqZ
         AV66BSKIwwbnXfgxFHk+nPgaXq7lPpB8hMXCSz3JcOsbxuXfFVuVr+zsiHwHUgjd5w4o
         AXov4DzX/tquDIoBZl8J4CGb0vwyb8vK6R4Vxp7zr57b6CUU/QCap2Vydu9/lXAjdqBQ
         iS/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UaQ/mAhPBWcVQ4YIzorH159V0qjCsRuD4zR9Ef1vsSA=;
        b=LI61+JBTzgunht6HqyL6vqrvCzZpyqdNV/QRhA4WbmMV9qedYNAfGxkviyXVfiGyP7
         sKveQERbmkL2q5gKlz5LJagYAYb3p8ZpR/Y/BQXSd2b1T+P7VGsKPm+9ZeXWP+6oLXPH
         BbbcW1P2LuN5M07PhXMY05ho6wuZ/eYy+VEvzFHKNb8wH5fTd6mBAjt+HfSwfp8D2y6u
         Gj/YIXmLGEZs0CgYLad19Xd50DJaksr5wSCCfofJzU6ech+puTMi2xNpu2PAUdzvZQrD
         ipXvpfYMQaTyYR7rqxQUJ/jRExdefqzzzBr0kkZ/rLiAsjAl1rVtaZCpfGlMgvxO3RdD
         CyEg==
X-Gm-Message-State: AOAM531Cy/P8AzYdTthFaAvXbhzIDggFBx2vHzvgRfAsTl5phxeqPfL/
	9jZsFDuXIEo/mW6v0K+foD8Bi05Y+GUd9VPoUIM=
X-Received: by 2002:ac2:4e43:: with SMTP id f3mr22802574lfr.206.1618329927516;
 Tue, 13 Apr 2021 09:05:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210412222040.GA13659@focaruja> <YHW5Fwl55c7NJAeo@orome.fritz.box>
In-Reply-To: <YHW5Fwl55c7NJAeo@orome.fritz.box>
From: Dwaipayan Ray <dwaipayanray1@gmail.com>
Date: Tue, 13 Apr 2021 21:35:16 +0530
Message-ID: <CABJPP5AEtg+615Q2d-d9aZf=CE7EFPKEbc7tr=gKo_H-XL+M5Q@mail.gmail.com>
Subject: Re: [PATCH] staging: media: tegra-vde: Align line break to match with
 the open parenthesis in file trace.h
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>, Andy Whitcroft <apw@canonical.com>, 
	Joe Perches <joe@perches.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	Dmitry Osipenko <digetx@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 13, 2021 at 8:59 PM Thierry Reding <thierry.reding@gmail.com> wrote:
>
> On Mon, Apr 12, 2021 at 07:20:40PM -0300, Aline Santana Cordeiro wrote:
> > Align line break to match with the open parenthesis.
> > Issue detected by checkpatch.pl.
> > It consequently solved a few end lines with a '(',
> > issue also detected by checkpatch.pl
> >
> > Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
> > ---
> >  drivers/staging/media/tegra-vde/trace.h | 111 ++++++++++++++------------------
> >  1 file changed, 50 insertions(+), 61 deletions(-)
>
> Ugh... I'd say this is one case where checkpatch.pl really shouldn't be
> complaining since this isn't a function call or declaration. It's more
> like a code snippet written with macros, so I don't think the same rules
> should apply.
>
> Adding checkpatch folks (hence quoting in full): is there anything we
> can do about this without too much effort? Or should we just accept this
> the way it is?
>

While it may be possible to add exceptions for trace headers on the
alignment rules, I don't know how many more such exceptions we will
end up adding. Such fine grained checks might be unnecessarily complex.
So I think we should just accept the way it is for now.

Joe might have a different opinion?

Thanks,
Dwaipayan.

> Thierry
>
> > diff --git a/drivers/staging/media/tegra-vde/trace.h b/drivers/staging/media/tegra-vde/trace.h
> > index e571410..1fcc573 100644
> > --- a/drivers/staging/media/tegra-vde/trace.h
> > +++ b/drivers/staging/media/tegra-vde/trace.h
> > @@ -11,79 +11,68 @@
> >  #include "vde.h"
> >
> >  DECLARE_EVENT_CLASS(register_access,
> > -     TP_PROTO(struct tegra_vde *vde, void __iomem *base,
> > -              u32 offset, u32 value),
> > -     TP_ARGS(vde, base, offset, value),
> > -     TP_STRUCT__entry(
> > -             __string(hw_name, tegra_vde_reg_base_name(vde, base))
> > -             __field(u32, offset)
> > -             __field(u32, value)
> > -     ),
> > -     TP_fast_assign(
> > -             __assign_str(hw_name, tegra_vde_reg_base_name(vde, base));
> > -             __entry->offset = offset;
> > -             __entry->value = value;
> > -     ),
> > -     TP_printk("%s:0x%03x 0x%08x", __get_str(hw_name), __entry->offset,
> > -               __entry->value)
> > +                 TP_PROTO(struct tegra_vde *vde, void __iomem *base,
> > +                          u32 offset, u32 value),
> > +                 TP_ARGS(vde, base, offset, value),
> > +                         TP_STRUCT__entry(__string(hw_name, tegra_vde_reg_base_name(vde, base))
> > +                                          __field(u32, offset)
> > +                                          __field(u32, value)
> > +                         ),
> > +                         TP_fast_assign(__assign_str(hw_name,
> > +                                                     tegra_vde_reg_base_name(vde, base));
> > +                                        __entry->offset = offset;
> > +                                        __entry->value = value;
> > +                         ),
> > +                         TP_printk("%s:0x%03x 0x%08x", __get_str(hw_name), __entry->offset,
> > +                                   __entry->value)
> >  );
> >

