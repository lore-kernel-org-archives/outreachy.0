X-GM-THRID: 6659981654376841216
X-Received: by 2002:a63:455c:: with SMTP id u28mr903682pgk.71.1550822069201;
        Thu, 21 Feb 2019 23:54:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:d241:: with SMTP id t1ls2124822pgi.11.gmail; Thu, 21 Feb
 2019 23:54:28 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYolC2aHzBWXIvgFdwUgBagLsFpycGJH5VCEjwSM2r2GIbRGTD3KHkwMcKIyMwAZskGgMrj
X-Received: by 2002:a62:4454:: with SMTP id r81mr892696pfa.129.1550822068472;
        Thu, 21 Feb 2019 23:54:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550822068; cv=none;
        d=google.com; s=arc-20160816;
        b=M5ULQA+d7TfnKQjbxta9yb8YfFGgBoQ5ilKfKmdM/ZsJ0LoOFpWIUYBx9QEgjEIMyc
         LWm1jjnJ2roEi7PB0SU5HEsto6fvvDxz051DhTG5AjXlZVSsR7qlupVrBww756M/aDLR
         ek0u8NX5z6C1TQ5uaIrsOF1tE/98IR0tzL9PN0j38grORUXT6ev1b0AOI/vczEC29ysL
         O7bpF22hyIo7CcAznOpxpbrksmKlxrdM3DLTrBNJOWmXhZ7wDv1rmPNAiZmnUOFO6vQ8
         6En0sht17BL/hqhp6slNqDcUT8eDj1uaKpxCUtPuPl+wy54cw+fI8DjBwmkdCecKTagX
         OXHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7TkmenPPIm1NuW2EktyWHtaIqvz/2Ri7WfYQs9L84oQ=;
        b=K/CphZu/1fvdU5rnTS4dJ8zS1H/SV9d5GTzmTzbv0VN78Srfz9265ELlgF/6Wo/KGU
         +Q0cbh/TmaDicGmvNc2mpDnTu/oWfry1IS5GQKEaZa5Qssjw+a6aSVbKa79bqKDz37VO
         gm6QC1H8a8Wwgh26p6ukYGhKchwrRTZW8iaxjMNRYhWN1/vhwRoZBpUbS8A7fXk2D5/t
         UiiCFs3WAJvJlWOQMJVL4gU/iOvGVOLBBjRG8aS1qRv1dG/sQ/EsygJzq1iEN8cr7fDs
         0mhKIivI3G7DdRZps+8FZeqMSGc0kQDTb0dQTtSNCfaU/sQ60PjDTlRfcI0RxoD5q2v6
         4F2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k+45+Y1Y;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com. [2607:f8b0:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id q17si37458pgb.1.2019.02.21.23.54.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 23:54:28 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) client-ip=2607:f8b0:4864:20::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k+45+Y1Y;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22e.google.com with SMTP id s16so1040624oih.9
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 23:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7TkmenPPIm1NuW2EktyWHtaIqvz/2Ri7WfYQs9L84oQ=;
        b=k+45+Y1YkbC01ELd3Yzn537Ku3iIT1fim/eO9c5IJ9VvIdPuquarnM5kyeiOosoeZg
         gHCCYZMF7JRaPDl6UFlHAWgxQ64g6hxdW9WuusSelSB5gbh+J5q0gCh+ebiVqOSjblLZ
         REa7vcz1kTraAw220hCuVvCulJwdO8LPYwDnSwPND/5cdX7eKmj51lEggif3QoHHnz6G
         A4z3ZzpbA+CWeyngUvo4o+rNbrSGfVHCqTXz8Mn6ic0LlOo7TSg8LkmrVfMb7jfqMOdD
         SVC9OBmo0Dztz2p5NuvcVfbnSIAUz9FBNf+A1uAZCBO+k4vtz5MH+SRnGHuHJT3yiMcy
         WQkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7TkmenPPIm1NuW2EktyWHtaIqvz/2Ri7WfYQs9L84oQ=;
        b=Z1D5aoANR8iQ65P10BcCggshXdC+ZyrlONcAMednTCan2Iq128l2ZDYZRoWL5pfirU
         WdLx8aGCtqKB1J477BjFcAINO1E6yalF1mz/jh/loX5aKey7y0I6LxaPEA6ID9hjVbjS
         EAf0PGN/YhjQlirxPqpCxyv0NBRY3ptWmYbsnXZdsZKyhmwmtsp/Rcdyuvz/TcdT3nzT
         ad7WKFlxVn9OCADRjy34RUSbDYT5jAEYCCbyoNl+IJCtiNh6J6ldDO27Evbz5f9F+Z3x
         AQPo1cr8Jk7o9jCLLADw/Kl6BUEawQQKlEGblF2M57XzZHWLI2aeC6qFyAxsljYQlehv
         MWpQ==
X-Gm-Message-State: AHQUAuZCOp0g9JiCG3I0kSgnHQqIfc4PKQ6zJHx/NLH7ihKov8SKmedl
	Ig7aaUZpGoi4VbuLs2yD9P8aYOOSH7azxjQ/SFw=
X-Received: by 2002:aca:5c05:: with SMTP id q5mr1674662oib.146.1550822068035;
 Thu, 21 Feb 2019 23:54:28 -0800 (PST)
MIME-Version: 1.0
References: <20190221074729.GA27093@bhanusree-MacBookAir> <20190221083734.GE6397@kroah.com>
 <CAB0Mk-NDubg4tFZe8kzqhL3p31KQzPf7bJ3Pc=WsqnpwPisvJA@mail.gmail.com> <CAK-LDbJ178gRu7qU9M0DGD1-JG0to06-mjqMkOOUwuuMzWPL8w@mail.gmail.com>
In-Reply-To: <CAK-LDbJ178gRu7qU9M0DGD1-JG0to06-mjqMkOOUwuuMzWPL8w@mail.gmail.com>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Fri, 22 Feb 2019 13:24:05 +0530
Message-ID: <CAB0Mk-P291ijeuBcUghOBCVOS4+CFsf9oq0h872yu7gsncZE2Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 2/2] Staging: rtl8192e: Avoid
 using bool structure members
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Feb 2019 at 14:32, Vaishali Thakkar
<vthakkar@vaishalithakkar.in> wrote:
>
> On Thu, Feb 21, 2019 at 2:21 PM Bhanusree Mahesh
> <bhanusreemahesh@gmail.com> wrote:
> >
> > Ok, thanks.
>
> No top-posting, please!
>
> > On Thu, 21 Feb 2019 at 14:07, Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Thu, Feb 21, 2019 at 01:17:29PM +0530, Bhanusree Pola wrote:
> > > > -Use 'u8' with bitfield instead of 'bool' to preserve space.
> > > > -Also bool size can be 1 or sizeof(int) depending on the macro
> > > >  definition given to bool
> > > > -inorder to avoid alignment issues the u8 bitfield is placed as last
> > > >  member of the structure.
> > > > -removes checkpatch.pl check:
> > > >  CHECK: Avoid using bool structure members because of possible alignment
> > > >  issues
> > > >
> > > > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > > > ---
> > > >  drivers/staging/rtl8192e/dot11d.h | 3 +--
> > > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/rtl8192e/dot11d.h b/drivers/staging/rtl8192e/dot11d.h
> > > > index 6d2b93acfa43..a1d879d316ed 100644
> > > > --- a/drivers/staging/rtl8192e/dot11d.h
> > > > +++ b/drivers/staging/rtl8192e/dot11d.h
> > > > @@ -33,8 +33,6 @@ enum dot11d_state {
> > > >   */
> > > >
> > > >  struct rt_dot11d_info {
> > > > -     bool enabled;
> > > > -
> > > >       u16 country_len;
> > > >       u8  country_buffer[MAX_IE_LEN];
> > > >       u8  country_src_addr[6];
> > > > @@ -44,6 +42,7 @@ struct rt_dot11d_info {
> > > >       u8  max_tx_power_list[MAX_CHANNEL_NUMBER + 1];
> > > >
> > > >       enum dot11d_state state;
> > > > +     u8 enabled:1;
> > >
> > > Again, no, this is not ok at all.  I thought I said so the last time you
> > > sent this patch.  checkpatch.pl is a "hint", you do not always have to
> > > follow everything it says to do.

This clearly says that use unsigned bitfields instead of bool in a structure.
https://lkml.org/lkml/2017/11/21/384
Please, let me know why exactly am I not supposed to change bool
inside a structure?

> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB0Mk-NDubg4tFZe8kzqhL3p31KQzPf7bJ3Pc%3DWsqnpwPisvJA%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.

