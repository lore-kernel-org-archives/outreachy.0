X-GM-THRID: 6659803762561908736
X-Received: by 2002:a5d:914f:: with SMTP id y15mr7451023ioq.18.1550651114689;
        Wed, 20 Feb 2019 00:25:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:228e:: with SMTP id o136ls1542574ito.0.canary-gmail;
 Wed, 20 Feb 2019 00:25:14 -0800 (PST)
X-Google-Smtp-Source: AHgI3IabcLxtzY05qpUT9ENDw1FOq+wM3JaetY+AGCe3kU2pPRH0gO19buN5gasH8GV56rhBqPso
X-Received: by 2002:a24:69c6:: with SMTP id e189mr4920868itc.8.1550651114103;
        Wed, 20 Feb 2019 00:25:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550651114; cv=none;
        d=google.com; s=arc-20160816;
        b=FTxkvphWDhm9ORDfdhMRi7Oo1qtq1jgEDT9IfZ9t65oMqoIWBsCwFrMZuloIFDNTCI
         v1b/H0oCQmuokEyaiJS812YimIBqyVVZfUan5IFBKoycf/0TMTXZbg+RTdVbZYcWiVkB
         DR16g7JlDcOdMDpNPOKyYc4M4A3P6amhE9cJPjy7i/sHxM/NzF5RpTUPPvtOYN5r9kge
         bxUpvEmz3R7K1hNtpACrCZZJQYVVl4NOaQqz19b/JwhdYc6JKTwXtpfdm9B+iTL3E8In
         1suGlT6G9DdKZydBqKpPhwmaSbEmQgYWffnUDgq+DzXrcVS1MMct4mLPtxKxH7GSKObi
         LHKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GvR78ZvdeWGPKobYh6NKTi8kEKloNIs8HIu1IxmxlFw=;
        b=RkPTwbrWObyYZHkVtJScOKqxKMXwoG/y6fZuBdK4f5vEnORFfQWRJbtkRbX0xrfCa+
         Es34gFROsQH3ueD3F8TKRJiiyu/tADoUVE5sguo0WswMbhJ2lbDLeWoWBjAkhfEgNgdP
         hYRrTnt7uKOiQwa56F4ZgG63dZu1+x2ePlQYkvLDnlVPHUyEDdwOy7FniHojkTU/2S4Z
         pAJB362fPx1COywv78gl/GYOoSZhwaBPD0vxArhkocOStanQSK+S4NHv6ig5Hd0kJx9L
         yd+J0ezmGfrduqPI52F+yBvHI7PbTQC29bkxi796GD4iqAqn7ay4sWa7j4k+68FYzRSx
         bJRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rIHPzKKc;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com. [2607:f8b0:4864:20::329])
        by gmr-mx.google.com with ESMTPS id 184si1270165iou.3.2019.02.20.00.25.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Feb 2019 00:25:14 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) client-ip=2607:f8b0:4864:20::329;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rIHPzKKc;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x329.google.com with SMTP id i20so38906817otl.0
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Feb 2019 00:25:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GvR78ZvdeWGPKobYh6NKTi8kEKloNIs8HIu1IxmxlFw=;
        b=rIHPzKKcECLM3t0qrSldyBfQb6FXjzJmSCXpBAaMUbLkTEkD7sVCytRJ1WtMnHZAWW
         f1USzcBZ40gJFjt9lrbwvDrsUPe3n9bAYCnV2w66jaiMn0rFEv2a+EWz1rpC8yElX2C6
         e8LHDs7bGfxPUuJ1ZIeDsD/64Jxuiiynf4S1BBA8iI4h49V958V/HVhbW3A2shGgZk1B
         MwaEHZ5igfhxCjvXeSEfOvzuPcHYGSGCCWmoltxfyIResRpNcmtTh9BVmSGG73Gw4myt
         gCxvTpz6esIXrrwRZQy/JkfoSSua/QXpGs3JdmSX/F4MCWKuqWF0jq8Jp4IsWiedNpmq
         CiTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GvR78ZvdeWGPKobYh6NKTi8kEKloNIs8HIu1IxmxlFw=;
        b=TRfngeIMEl2HGcV1mYjAsj4/h1nQmWyGFXf/ws3W9V++ZuF/uRYbaf35cg+ZrWVnaY
         Hi9CzF7qdYwvYc0/s0nvRiEsu3oxDyUxTbFoMkI83gUnJpAeK6Ksa2NaH7xzBRtwHICb
         YPEdyYRxWx46cYZy2XzU7jVc8CsNKBZ9KphDGlZ6RtRLlryk3G1rqh+vlwMIQ9FTmGWd
         Qnpb2GkFW+rMaAPK+MzreF9VyPnEMhsACRzzn8aU4F0wD78n0Iau3PTi1YeIqlfej4RZ
         p+Z58Bp5b8/deNdZ+jaRNSaN5NPJLlMqTyJTPNinKpagJWFqF1D8EvDrjd0MlMOXIrqW
         TxgQ==
X-Gm-Message-State: AHQUAubTc+40HDpphT9rtn+ZxT7Pd+7IbalKUyiSYlthS15Pa+EZZpo+
	qIZLtZL/bSv8OCt9BmU/9OjzDLnuXginphBExWg=
X-Received: by 2002:aca:ac45:: with SMTP id v66mr4933754oie.134.1550651113725;
 Wed, 20 Feb 2019 00:25:13 -0800 (PST)
MIME-Version: 1.0
References: <20190220050522.GA19976@bhanusree-MacBookAir> <alpine.DEB.2.21.1902200825590.14914@hadrien>
In-Reply-To: <alpine.DEB.2.21.1902200825590.14914@hadrien>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Wed, 20 Feb 2019 13:54:51 +0530
Message-ID: <CAB0Mk-PfG9DENHZObXhL+=T1-tkbSc3sJr_VEn8TF+FDcbPepw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] Staging: rts5208: Fix Macro
 argument reuse
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 20 Feb 2019 at 12:58, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Wed, 20 Feb 2019, Bhanusree Pola wrote:
>
> > Fixes Macro argument reuse issue
> > typeof is used to avoid possible side effects
> > Issue found with checkpatch.pl
> >
> > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > ---
> >  drivers/staging/rts5208/xd.h | 9 +++++----
> >  1 file changed, 5 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
> > index 98c00f268e56..5e9b3805c33a 100644
> > --- a/drivers/staging/rts5208/xd.h
> > +++ b/drivers/staging/rts5208/xd.h
> > @@ -99,11 +99,12 @@
> >  #define      XD_RW_ADDR                      0x01
> >  #define      XD_ERASE_ADDR                   0x02
> >
> > -#define      XD_PAGE_512(xd_card)            \
> > +#define      XD_PAGE_512(_card)              \
> > +(typeof(_card) (card) = (_card);     \
> >  do {                                 \
> > -     (xd_card)->block_shift = 5;     \
> > -     (xd_card)->page_off = 0x1F;     \
> > -} while (0)
> > +     (card)->block_shift = 5;        \
> > +     (card)->page_off = 0x1F;        \
> > +} while (0))
>
> Is it useful to reuse this macro?  Other types may not have the same
> fields, with the same semantics.  On the other hand, I wonder why this is
> a macro at all, and not an inline function?  Likewise for the next two
> macros.  Then you would have proper typed parameters.
>
Should I change it to inline function or leave it as a macro?
Should I also modify for the next two macros?

> I haven't checked on the uses, though.  Perhaps there are many closely
> related types with the same field names and so having a macro is useful.
>
> julia
>
> >
> >  #define      XD_SET_BAD_NEWBLK(xd_card)      ((xd_card)->multi_flag |= 0x01)
> >  #define      XD_CLR_BAD_NEWBLK(xd_card)      ((xd_card)->multi_flag &= ~0x01)
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190220050522.GA19976%40bhanusree-MacBookAir.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1902200825590.14914%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

