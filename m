X-GM-THRID: 6661069764566188032
X-Received: by 2002:a25:d88e:: with SMTP id p136mr1459816ybg.87.1550914474121;
        Sat, 23 Feb 2019 01:34:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:14b:: with SMTP id c11ls243240ybp.14.gmail; Sat, 23 Feb
 2019 01:34:33 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYkHN+i8S0koXJlvGFM53u18Wfi1vMs0fJGD7SQVu7ZgvO2qKuH0u8zi/KuP6EGm+NsSExi
X-Received: by 2002:a25:be47:: with SMTP id d7mr1279787ybm.15.1550914473290;
        Sat, 23 Feb 2019 01:34:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550914473; cv=none;
        d=google.com; s=arc-20160816;
        b=dTC8kVYOigtmleLoREDSiwoV0ftiJRS1sZe79rmkS8eh4oEHeS1sBg9MDNooR5ApR4
         kwnrG7fEKbWZnxuD8uaSz9Ks/REKNl7T4HBmcBpqDm/Ftui4nGvZZVmLYTTpqMaZKDkp
         FUCe2RqZDRSYym4FuVTSFwbHDfEda9Q9nzlx3S2uddi3a8CrEdAGY5tCCJ31oPyLMt0a
         5qlG+AgUjqshWoKTDLZ27Q6JHSQRqrtuk6EVPdxvCRSsL8itLePkggpaSxzu/ClUBkkx
         XY1F5PFBEDjQl0QuAuG07Lo5noxygoiPAWjCG/O3Fx8iEPlxVyJD4nL02t3e39NFt3bH
         VStQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2PkD/2A0tbc4RkBS7bFNheH7Od8W0QDMFwXAHzmJkiE=;
        b=T2cnqoM1xk6f1DEiNX+hUnmCkm67BKTPan24/aZdBsOVpjRO5xC2Fo+B5yLH915pxQ
         NVTwQoOB/+mdD3FsL/iO15N/64qKMdHLeLQi1Phknpx2bVyoGgKRtvjxifoYa71ZCVct
         Sej9QLt5H9T6/iYQG0scX/RVJKpXyzEqccUIOfK9/SmFnSFGeMknYCaQHDTTkyIXVbyC
         GqvWT8tqEFylZXyA3ixBgqTfE/RuKW63WNK4y9SecqA1syTSaqAoAEvN8MBJBQ6cyQgq
         1DN13N8V86iPqiRMeo8O5pmfFsMbW+jdeBXvWv+dyuMZJbAxc7rKoKwWB1B6Xrv5RCo6
         ds6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hp4LWQia;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id j16si7863ywa.2.2019.02.23.01.34.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 01:34:33 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hp4LWQia;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id g16so3716195oib.1
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Feb 2019 01:34:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2PkD/2A0tbc4RkBS7bFNheH7Od8W0QDMFwXAHzmJkiE=;
        b=hp4LWQiaXU6zVtUdKspvf56b9nBbbH6o6FPl6bkQON9w2jNbvDTZuYH1A2W9zOKKNa
         cLY8Q60l2pK/hdPFO8SvXr+VIW1j7bRfbyaqVyCJpRmZzm6UPDjGBOqQ/W3GiilhaJOh
         27YMyZPgfb7N1IgxuToZdIId35XjnYVz6TKZGgJiB5qGxXuuwgiBnCpAbguIDonOdUNk
         r3ChSXjnyZ57H8+wZXvAvC/rjpC1sVK5MNjk71i4lzhB+ZJvCFGy9i+Pj9gj22a9PJDR
         MPo5fUlJfaXG98iEnff+aLA8o0fBgnAWIlPoI00SZjWnqEiKOvtlwEZf+mctWdRPB7Eb
         gOSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2PkD/2A0tbc4RkBS7bFNheH7Od8W0QDMFwXAHzmJkiE=;
        b=FQnsWmXDKwPFz3u0ElA7E6MqOp45VZgRtLBf+mJo1nCKUWFtxteG2lKDAkqJ5lasQF
         3G3tBqp0gd6FwCfGPwPrpE3s+Ub40GgcUGhzZhkTSCUxH7E/56lp/cHFofyIunoHyH3+
         fxnb6SdsQQXSRazo7k/QMZ+IcHj6yiLIbQy60XwMH48VhuqYiTK2g66x2PG7KP9opEkG
         Hth/4+/cjVhnSkCzspy9joKNPHkCthEoZjDtbz2ccC6+hZkynCQkCp31+BHz23M3Jy/i
         FU81aAOdMDPEIKLM5zPMy7KXeB84dIs/EXqkQddWmeAVoAX+1oei61b3C3X2l9ZGYDYH
         NyBw==
X-Gm-Message-State: AHQUAuZ0uBe/SmmGWsKBfWdQCmkEQ1RtwCURKtu70DLLt0M3KvE4Goxz
	XUZjM4PNFcY5tFOw9aENCrK4gODcrT3LqXLW0JOEWV6G
X-Received: by 2002:aca:fd14:: with SMTP id b20mr4810691oii.115.1550914472585;
 Sat, 23 Feb 2019 01:34:32 -0800 (PST)
MIME-Version: 1.0
References: <20190223055207.3792-1-bhanusreemahesh@gmail.com>
 <20190223075641.GB2640@kroah.com> <20190223084254.GC4902@kroah.com>
In-Reply-To: <20190223084254.GC4902@kroah.com>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Sat, 23 Feb 2019 15:04:21 +0530
Message-ID: <CAB0Mk-O+S5OveTKh-hMxFGnWenjWg=AxY1-FGo0Xe6yAd6_vmw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] Staging: gasket: Replaces
 symbolic permissions
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Sat, 23 Feb 2019 at 14:12, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Sat, Feb 23, 2019 at 08:56:41AM +0100, Greg Kroah-Hartman wrote:
> > On Sat, Feb 23, 2019 at 11:22:07AM +0530, Bhanusree Pola wrote:
> > > Replaces Symbolic Permissions with Octal Permission which solves the
> > > checkpatch.pl warning:
> > > WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
> > >
> > > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > > ---
> > >
> > > v2: Subject line modified
> > >
> > >  drivers/staging/gasket/gasket_sysfs.h | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
> > > index 151e8edd28ea..60590ea4b760 100644
> > > --- a/drivers/staging/gasket/gasket_sysfs.h
> > > +++ b/drivers/staging/gasket/gasket_sysfs.h
> > > @@ -40,7 +40,7 @@
> > >   */
> > >  #define GASKET_END_OF_ATTR_ARRAY                                               \
> > >     {                                                                      \
> > > -           .attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL, NULL),   \
> > > +           .attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),   \
> >
> > The trailing "\" is now messed up :(
> >
> > But, as I have said before when people try to fix this up, this whole
> > macro is not needed at all.  Please just remove it and use the proper
> > logic in the code.
> >
> > >             .data.attr_type = 0,                                           \
> > >     }
> > >
> > > @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
> > >
> > >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
> > >     {                                                                      \
> > > -           .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> > > +           .attr = __ATTR(_name, 0444, _show_function, NULL),          \
> >
> > Trailing \ is not aligned here either.
> >
> > Also, this should be using __ATTR_RO(), right?
>
> Really, all of the sysfs stuff in this driver needs to be fixed up
> "properly".  I think it's even a TODO item, but that might take a lot
> more work than just a simple "coding style" cleanup patch would entail.
> I would recommend just leaving this mess alone for now.
>
I'm really interested in trying this if you say so. Please give me
some link on this.
I will understand and try to fix them up.

thanks,

Bhanusree Pola.

