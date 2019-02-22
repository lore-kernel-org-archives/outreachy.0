X-GM-THRID: 6659981654376841216
X-Received: by 2002:aca:d6c7:: with SMTP id n190mr1697044oig.41.1550829436959;
        Fri, 22 Feb 2019 01:57:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:bbd6:: with SMTP id l205ls2770574oif.3.gmail; Fri, 22
 Feb 2019 01:57:16 -0800 (PST)
X-Google-Smtp-Source: AHgI3IY3lmV7BPfnAvyL9gF4BupkFnw6RErRw1tfN/oxb/jW4/DXJoS/1aN0Qsg6wocGQoR9f+6K
X-Received: by 2002:aca:4d6:: with SMTP id 205mr1789820oie.26.1550829436066;
        Fri, 22 Feb 2019 01:57:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550829436; cv=none;
        d=google.com; s=arc-20160816;
        b=FBvml/2VcH57gDC/3K0NxdNEO0juYPffpXbG6s+iH8P2fIeDgm0R/gr9hLZBJbrOHF
         eUm2rPDQN1Eka+VEDwZlE39f+3wNQ+7ERELk+YGi7NJbVVlHwnMinhgEnUPJipQxiRoz
         tedURYCbDVDBo6ksGNdxCjT0VBywDgo92CIN5zyk+sHBSeOtJszXhmLdCli33rVW4Esn
         UxwdCJBv+e9bTCX6ya9Z6gZRBFe2JzHcIbaEXDgoNU2XIaszSLKWd4F5QrTmy41sNKgz
         KErq2OtEJfJkDoQ732/6xPYZNvhz/TzC5lb1DLVC3dyg5mqRSqbrGO1w60b51esLQoI5
         RVEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cXjckHOa1g7vUecA+XiBeHSaLrIqIPXV2GRIv0Z71uc=;
        b=RtThhBItar+O6xE645fTqyclrkxziZ4NLn7XZVuHUZP0Dod1hzz457cJ+UeXxI5R2A
         xSz3BKuFyZLw/j/SSE1fJFlERk2DYAfnI/ORX8/P2k0C52CGz2zU3NwgjS77Hc87WW9g
         eSaxAUfw/+ygfcBjlTySqcJlHEA+P7p4I/adrtxwbkrSY5qxKGaWvEoSNrL4DF0bzcAe
         BV7nxVwvQ+c358G2R8VMkbOAF6WqYrR0g2aXNevPMFeYeJ8ezn9p9E8rls3Cq8eNPMTX
         LL28V063VHx528zkOLJOsf/Fdmsz3W9jy3tMfSt/OvCc56CDXe8CnhvtlOSt1EnwGiX+
         bzGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FLZhVf0R;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id v129si74302oib.0.2019.02.22.01.57.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 01:57:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FLZhVf0R;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id j135so1246469oib.13
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 01:57:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cXjckHOa1g7vUecA+XiBeHSaLrIqIPXV2GRIv0Z71uc=;
        b=FLZhVf0RkuZSv/uH1u/MZr3OQG42SbdDkPwN+KcqZmxwa4f8z8ANlK/9WL45+LfE3r
         DPB75/rBoo5Lo8eRCLEUFpEu9DY1irHJgHG7wILSA3Epf03/02QzfDEKPG+UPVx/mAFM
         nEbRXQryViCe3BA76wdJKRpxDZJxkJDuPr9M6RyZ63PRqeGW87xC2emj56CC8BHZ8iDh
         rD6vvOc5SkM/p06Gifq0nadzggG6X4shXZgiNlXpWQX+TVoit0Nko1tBGy+e0YkLlSoW
         NGfKaF0NTrQxPSReqeXhqRDYQmgLzh2Rw3uyPo0gggAoXvM7ENcDtkQ5MmDdAibQPmFu
         GXsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cXjckHOa1g7vUecA+XiBeHSaLrIqIPXV2GRIv0Z71uc=;
        b=OY/UI1jLPXhl4sC8gX8L3i0DKvWpoO4LXFXFB+XE7aangRbcFh2gI/Kh4YAdj+RMPV
         uB2TKHV5UGodrYfTn+GTXZInynlYbcvj6tmWu5UP2ipwfTlOXdAtNBhlSIVgOJUo0Vyu
         7NY4Fhh6l/030Q/pti7/Zsmtf/iu3Mxk/DY/dykGbhIvWG2Sda7B1dLM65h5GtL6wlqO
         Cpx8XjLFHzwzW8U9h7JG/Sain6g0JPifCXVB8RsZf2RZgnvEmFoouIiZZhgt/QlomdF8
         hj8cH8tfdaE8tZzUbDKoZkh5XqvTCxx8BuiiFjCWuCQXalMczRrJ3yxyEzGhVug3MhtF
         rySQ==
X-Gm-Message-State: AHQUAuZtxzS0I0LsAa8Wj0emZZm5pWY8tLigGbt1pVn4Ua/5ai2DWklE
	6syylGACGvKeqr8V2O6e4Gqn7ptn5UGsKNx+L9s=
X-Received: by 2002:aca:5450:: with SMTP id i77mr2074404oib.174.1550829435686;
 Fri, 22 Feb 2019 01:57:15 -0800 (PST)
MIME-Version: 1.0
References: <20190221074729.GA27093@bhanusree-MacBookAir> <20190221083734.GE6397@kroah.com>
 <CAB0Mk-NDubg4tFZe8kzqhL3p31KQzPf7bJ3Pc=WsqnpwPisvJA@mail.gmail.com>
 <CAK-LDbJ178gRu7qU9M0DGD1-JG0to06-mjqMkOOUwuuMzWPL8w@mail.gmail.com>
 <CAB0Mk-P291ijeuBcUghOBCVOS4+CFsf9oq0h872yu7gsncZE2Q@mail.gmail.com> <20190222080417.GA3213@kroah.com>
In-Reply-To: <20190222080417.GA3213@kroah.com>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Fri, 22 Feb 2019 15:26:52 +0530
Message-ID: <CAB0Mk-MjPSnwLQOpg+JehBkdmAM-rU5Txa2M8ehT9jPEewuUeQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 2/2] Staging: rtl8192e: Avoid
 using bool structure members
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Vaishali Thakkar <vthakkar@vaishalithakkar.in>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 22 Feb 2019 at 13:34, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Fri, Feb 22, 2019 at 01:24:05PM +0530, Bhanusree Mahesh wrote:
> > On Thu, 21 Feb 2019 at 14:32, Vaishali Thakkar
> > <vthakkar@vaishalithakkar.in> wrote:
> > >
> > > On Thu, Feb 21, 2019 at 2:21 PM Bhanusree Mahesh
> > > <bhanusreemahesh@gmail.com> wrote:
> > > >
> > > > Ok, thanks.
> > >
> > > No top-posting, please!
> > >
> > > > On Thu, 21 Feb 2019 at 14:07, Greg Kroah-Hartman
> > > > <gregkh@linuxfoundation.org> wrote:
> > > > >
> > > > > On Thu, Feb 21, 2019 at 01:17:29PM +0530, Bhanusree Pola wrote:
> > > > > > -Use 'u8' with bitfield instead of 'bool' to preserve space.
> > > > > > -Also bool size can be 1 or sizeof(int) depending on the macro
> > > > > >  definition given to bool
> > > > > > -inorder to avoid alignment issues the u8 bitfield is placed as last
> > > > > >  member of the structure.
> > > > > > -removes checkpatch.pl check:
> > > > > >  CHECK: Avoid using bool structure members because of possible alignment
> > > > > >  issues
> > > > > >
> > > > > > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > > > > > ---
> > > > > >  drivers/staging/rtl8192e/dot11d.h | 3 +--
> > > > > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/staging/rtl8192e/dot11d.h b/drivers/staging/rtl8192e/dot11d.h
> > > > > > index 6d2b93acfa43..a1d879d316ed 100644
> > > > > > --- a/drivers/staging/rtl8192e/dot11d.h
> > > > > > +++ b/drivers/staging/rtl8192e/dot11d.h
> > > > > > @@ -33,8 +33,6 @@ enum dot11d_state {
> > > > > >   */
> > > > > >
> > > > > >  struct rt_dot11d_info {
> > > > > > -     bool enabled;
> > > > > > -
> > > > > >       u16 country_len;
> > > > > >       u8  country_buffer[MAX_IE_LEN];
> > > > > >       u8  country_src_addr[6];
> > > > > > @@ -44,6 +42,7 @@ struct rt_dot11d_info {
> > > > > >       u8  max_tx_power_list[MAX_CHANNEL_NUMBER + 1];
> > > > > >
> > > > > >       enum dot11d_state state;
> > > > > > +     u8 enabled:1;
> > > > >
> > > > > Again, no, this is not ok at all.  I thought I said so the last time you
> > > > > sent this patch.  checkpatch.pl is a "hint", you do not always have to
> > > > > follow everything it says to do.
> >
> > This clearly says that use unsigned bitfields instead of bool in a structure.
> > https://lkml.org/lkml/2017/11/21/384
>
> No, it says that "maybe" the developer should use a bitfield instead of
> a bool for that structure.  And that structure being talked about is a
> very core, and important one, where every byte and access counts.  That
> is not the case here at all :)
>
> > Please, let me know why exactly am I not supposed to change bool
> > inside a structure?
>
> Linus's complaint is that "bool" is an unknown size of a variable, so
> for structures that really matter as to the layout and speed of access,
> using it can be "dangerous" as you do not really know what the compiler
> is going to pick to use for it.
>
> So, if your really do care about the size, use something like "u8" which
> you know the size and accessing it should be simple and quick.
>
> When you use a bitfield, you too know the size, but accessing it is not
> always fast at all (the compiler has to mask off the other bits).  So it
> all depends on what is needed to be done.
>
Thanks for the helpful information. I understand the difference.

> For a structure like this one, nothing needs to be done.  There are no
> size requirements, no speed requirements, and nothing important at all.
> So I recommend just leaving it alone and ignoring the checkpatch
> "complaint".
>
> Again, remember that checkpatch provides hints as to what might be done
> to the code to make it better, it is not always right, and sometimes,
> flat out wrong.  You always have to use your brain when using it :)

Will definitely remember this while checking out. :)

