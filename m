X-GM-THRID: 6661107741495394304
X-Received: by 2002:a17:902:7b87:: with SMTP id w7mr2817730pll.43.1550931419296;
        Sat, 23 Feb 2019 06:16:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:5081:: with SMTP id r1ls3467300pgp.9.gmail; Sat, 23 Feb
 2019 06:16:58 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbZH/dUcuPGaAfmGfACZZnYUY2gPNLGa7YuLylDScp15Z3QY5wRfS5ZFLVODNveTQRoXPdd
X-Received: by 2002:a62:6f49:: with SMTP id k70mr3473650pfc.136.1550931418549;
        Sat, 23 Feb 2019 06:16:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550931418; cv=none;
        d=google.com; s=arc-20160816;
        b=D+b/OdpZNtHq1emsGEY1/0cqYbKKGSks0ryKgiB3pPtejLAroReJB796d0PtazocqR
         S85f1mt2Kp4ZUW79nCCZxJe+dmCKugEcULA656tBgdyeLajVOFq0ZQnggbHGVLtm24er
         ROibFmhmBdGZgzga6vAPLXi+CPtmFWCzHoE0aTyUJZ993fXCrKn4qNpCoX8vgBMlFl0/
         akKF7SEU7H0fLsirB0b64sso6GI7BEXmSo4FxSjYtyGwKteapyf7YkAZqP88pVGTg2KH
         bfQB54urWZCaGxPpE8V5L0YUx7Pc9AKZNL0PGf38jP+DiLP5VFB4LN+idX5RRfF71XeH
         Sa6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vBj/SjQNXlTrj///GwFxtPI+PoD22HGNIgS4UKLUmds=;
        b=blTJ8ZUSrS4a/Sw/4YnKCz/4ectI7V7ZQ2sewhbef/i+Zp9gNBFUH9XNdLCIzVPZme
         rt+x+yktfoMt+PlNq7O15VUgY+0SR/6lvJXGxRN7T4AEY/v04gceXbWSj9ywwugZqjHA
         f/FxX7sqteX86zrmbJhlIOfDL0KVNlw9uE5rdgBBcx33RtN18o+JFtJQWtGlt77lUhB3
         Upki1ywUUPGbaS4MG7iLd2eaqGJ2QMmHeB1tA2wE2pvcxEOGW3UeGgUt14fArUeznNf/
         3SimtbQccb4vgpK9kiy0k4sbIQ3L+kVRPbQv2y7KUjsRZAOGDUiVj3DjeZaitZCBpEmN
         H0oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fEDAT6NO;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com. [2607:f8b0:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id m189si326472pfb.0.2019.02.23.06.16.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 06:16:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) client-ip=2607:f8b0:4864:20::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fEDAT6NO;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22c.google.com with SMTP id s16so3961431oih.9
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Feb 2019 06:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vBj/SjQNXlTrj///GwFxtPI+PoD22HGNIgS4UKLUmds=;
        b=fEDAT6NOkNlnrywkOgzgFfj1vnNfaVObSuo9P4F3UpJ06Op98CI3o44NDCPNgLYmy4
         k5wdKBE1PvRXqwcrluPTYCkU9JEI5VE929QyKfwvGWomqyrAn2FZJdjowWxV+gEBQudT
         onGZ6Kf5IkFdQL5/K6o7MLBfSb+bRZVvjHIe1+KXGbFlKHYuWESNgYNALoFP8wRuwLZD
         DWmDI1bd8OEdh+n0A+d8+loFEgeClSkerx98S6A8e39jppGqmi24e0crc6mJCK7ZBSHx
         hdY0CR4QUkkRnI7ywkhgcalmErzrWKyzXTcwLJlSrwRJVb4s7C6OdyaHiECjquW6GRR3
         6EyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vBj/SjQNXlTrj///GwFxtPI+PoD22HGNIgS4UKLUmds=;
        b=PnVXdGzPraiT0lbHlH13pU+Crr4qnKTo3aSu3uS+GAq96s/z+WtztX3KFITFFz3KJz
         0Gfz8u/WZo4PBuD0DUiWS1H9rdrWRTHhmgxStDNd7MoX6+lGo/iSu7wp7Sh1ivVh7bLJ
         g8bjEDA7kCKEHWXaVQ7z54XhmvTXltz2yaAGfRcfTiuB5v1TH0RALby/aprcBQeBAEbS
         0j0ugnJ94PmkVnlmYz+9mtDDQWDc7oNrdOTTsVlgITmOlyPSzRdhCgSCA3SdsWqQisb+
         mHwoCYkGi5yGrjPj0uXgWrxdz+u5+K0ZxpvdVgIQvNWKUfZDWkC3a6RziDRZpXkuPyU5
         48+w==
X-Gm-Message-State: AHQUAublEesnxXhxb2qqEf/tEMnLyFHRvVTIUz5qolziMBUZ2Ll7TNaW
	ZsF8py73VWfNofxuFRtOTqTVw6WuRpYf2faexVc=
X-Received: by 2002:aca:ac45:: with SMTP id v66mr5413909oie.134.1550931418013;
 Sat, 23 Feb 2019 06:16:58 -0800 (PST)
MIME-Version: 1.0
References: <20190223081941.9629-1-bhanusreemahesh@gmail.com>
 <20190223081941.9629-3-bhanusreemahesh@gmail.com> <alpine.DEB.2.21.1902231506310.2551@hadrien>
In-Reply-To: <alpine.DEB.2.21.1902231506310.2551@hadrien>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Sat, 23 Feb 2019 19:46:46 +0530
Message-ID: <CAB0Mk-Nr3GrXEnVE4pdQG6snUpXq3pOqx=19nNpZYCDLEtcF4Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: mt7621_dma: Prefer
 unsigned int over just unsigned
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, 23 Feb 2019 at 19:37, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Sat, 23 Feb 2019, Bhanusree Pola wrote:
>
> > Fixes checkpatch.pl warning:
> > WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
>
> Log messages are supposed to be in the imperative.  So here it should be
> "Fix ...".  But it would be even better to come up with a description that
> says something other than Fix.  Explain what you have done and why.
>
should i change the log message and resend it ?

> julia
>
> >
> > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > ---
> >  drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > index 54bf89e2f629..fa7631cfbb78 100644
> > --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> > +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > @@ -191,7 +191,7 @@ static inline u32 mtk_hsdma_read(struct mtk_hsdam_engine *hsdma, u32 reg)
> >  }
> >
> >  static inline void mtk_hsdma_write(struct mtk_hsdam_engine *hsdma,
> > -                                unsigned reg, u32 val)
> > +                                unsigned int reg, u32 val)
> >  {
> >       writel(val, hsdma->base + reg);
> >  }
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190223081941.9629-3-bhanusreemahesh%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1902231506310.2551%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

