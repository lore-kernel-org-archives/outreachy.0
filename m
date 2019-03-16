X-GM-THRID: 6669000631583244288
X-Received: by 2002:a37:3351:: with SMTP id z78mr5004881qkz.16.1552748543480;
        Sat, 16 Mar 2019 08:02:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6b82:: with SMTP id g124ls5404485qkc.3.gmail; Sat, 16
 Mar 2019 08:02:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzjjlb1+C1y5G5vclqDWeFyLqd0rw+kQwjge4ehER8C+sc35Z0CBfTBe92l5IdLwG6G1bMY
X-Received: by 2002:a37:47c4:: with SMTP id u187mr4955532qka.18.1552748542667;
        Sat, 16 Mar 2019 08:02:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552748542; cv=none;
        d=google.com; s=arc-20160816;
        b=xU2gomEwK7W1825TXIIbzjUwctdLBh2GzpdDnPT2LDjQvQj0u4PhHIt+rIDlgnRGxS
         mgYNG2hNw2ZLICFGjQ+j/Zcnw3amVHue1FbLWrt/1k+BDjFto/lCzyGgm5Er82JDoxRB
         BycXuOM7TMhSpu7wSvN4np3mB9Qx7BkjtZ1Jt9v1XWXIRIdsj/hXN4+5cg5qXjy7NIC0
         iFW1UUohrChSDzMrMv0CU/A0HcM/l+rvFq90qS6f2jOMHm8ZEUsnvsqBOj8Al7FOtjRK
         B3BjTDEmdudATHsXnq1rAAHP8wZvckwcdqhEqvw68N24BLUsscUI3EXJrR/Tlcyjbm4W
         E5Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BbsDO41V/8GsxXLK/+CTZzltlFTfgPh+jZ3tWhk6zhk=;
        b=a4/6gMp15hSU2Do+36aZ7hyQKOTdyIIRyZqVP2PzSW+QL7098H+4wCtv4y9xaVQLw4
         SUfdW0KS/XaXvVeTVcXlJZYTYYR12EhUXSPUfcx4U3YuSv2wcY2YqPPln3ZZiNVexO+F
         xLk4Bt+FHv7NMiNBkGiWWeYX2uFqPN3ewt5I/L+4LexvIImyN1M7fu9ODXFLarGoY346
         NCRYVzp31O5jH18KkazlkxgY1sBfHS7hREEbj72Fz7kI8fjUlrnL1Crz7Iz84HCmaSSU
         y6MAfnQaO3N6tMVqUUlHWTxHBjbsrHpwzDUd/8fiO6UpkEUqCNoUMDaDI+4to3SCw/Ed
         x8Tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oAdtm9vX;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::331 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com. [2607:f8b0:4864:20::331])
        by gmr-mx.google.com with ESMTPS id v2si201676qka.0.2019.03.16.08.02.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 08:02:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::331 as permitted sender) client-ip=2607:f8b0:4864:20::331;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oAdtm9vX;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::331 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x331.google.com with SMTP id r19so10934670otn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 08:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BbsDO41V/8GsxXLK/+CTZzltlFTfgPh+jZ3tWhk6zhk=;
        b=oAdtm9vXoUvBgFwSrPZ+ceHHqi+x+A1SCulsbYwHsjkjNMbPeP6mMqo/UvfWAcBsKf
         jOCPxcqhcEXfTTMD22yuxEPN6GGpZ4UQ7se6R5zsS1x0F3MwTydQxCPshrloUwjhqixR
         QFf40rO9dRsyTVoJvy/tAFwyCYjyiGC5tELn24bCGkMEIr8wNhEGNFKo7jDoT3z3FPtV
         dmmdDcUAhA8oRbcn5Z8ccmBmJNf2OJBYnrAEGOjgKg67tN2ACXNoHYZ5azJIW3xJyTzG
         /C4IQAS4463P86BvbsvgfAIuDM/cohA5OG9MF551DmpfmG7LQXKmaUAI98R5ksrTKEHa
         bmCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BbsDO41V/8GsxXLK/+CTZzltlFTfgPh+jZ3tWhk6zhk=;
        b=YqARX1Pl/OcGJimGyvxlDDBw9sjdQyhl51ppO5Mb+lA42/MTS71ha6n/M/7GHcN20R
         VjcAVa02LaIlTFLuVrkTF2Es8mKujGg0ozygdLp4HAbD1n35fteeE2AO0z4L91VrEroq
         FTOeLB/TGXjlCKWr9oePnBzzCdlJe41HX3gtBYg+hZJu4Px9xiP7niMy0fH0MvqY8Qlt
         eSg7gcFMCsLhE9QWN7yC66AJgxUjiUPfid8Ao79MTKgfxI+2DRPCqMlOWpBSl03Yx2Da
         7d+EvM/y4gUOLRUdYwjnXh894WM9kBjnLCRl8Hjw4JLuCkkRH4gblDrKGajj0LK+vVfS
         gSxA==
X-Gm-Message-State: APjAAAWgMr1CHwVvYnYWnjBGT2qJYaP/uBDSYblnt+4w0WKVE38aWYnp
	A9w5BVyb4gI2H+y0O0Go20rV7vuDGjgPXguc1l7OADRP
X-Received: by 2002:a9d:6410:: with SMTP id h16mr5640789otl.136.1552748542346;
 Sat, 16 Mar 2019 08:02:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190316144812.7427-1-bhanusreemahesh@gmail.com>
 <20190316144812.7427-2-bhanusreemahesh@gmail.com> <alpine.DEB.2.21.1903161556580.2487@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903161556580.2487@hadrien>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Sat, 16 Mar 2019 20:32:11 +0530
Message-ID: <CAB0Mk-PTtuhpbAQ3PsaPhuOfDXybUYNYrV-8FktpJYPsveUz2Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: mt7621-mmc: Fix ret.cooci warnings
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, 16 Mar 2019 at 20:28, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Sat, 16 Mar 2019, Bhanusree Pola wrote:
>
> > Return the value directly instead of storing it in local variable err.
> > The semantic patch that fixes this problem is as follows
>
> You can drop the now unused variable in this patch too.  This patch
> introduced the problem, so it would be better for all patches to leave the
> kernel in a reasonable state.

This was automatically done by using --in-place flag. so i removed
unused variable in the next patch.
Do you want me to do both in same patch and resend?

Bhanusree
>
> julia
>
> >
> > // <smpl>
> > @@
> > local idexpression ret;
> > expression e;
> > @@
> >
> > -ret =
> > +return
> >      e;
> > -return ret;
> > // </smpl>
> >
> > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > ---
> >  drivers/staging/mt7621-mmc/sd.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
> > index 4b26ec896a96..5943e95ed1c3 100644
> > --- a/drivers/staging/mt7621-mmc/sd.c
> > +++ b/drivers/staging/mt7621-mmc/sd.c
> > @@ -763,8 +763,7 @@ static int msdc_app_cmd(struct mmc_host *mmc, struct msdc_host *host)
> >       mrq.cmd = &cmd; cmd.mrq = &mrq;
> >       cmd.data = NULL;
> >
> > -     err = msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
> > -     return err;
> > +     return msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
> >  }
> >
> >  static int msdc_tune_cmdrsp(struct msdc_host *host, struct mmc_command *cmd)
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316144812.7427-2-bhanusreemahesh%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903161556580.2487%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

