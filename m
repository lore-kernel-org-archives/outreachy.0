X-GM-THRID: 6523310311652458496
X-Received: by 10.223.133.101 with SMTP id 92mr1650717wrh.5.1518958972518;
        Sun, 18 Feb 2018 05:02:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.170.1 with SMTP id t1ls1000818wme.7.gmail; Sun, 18 Feb 2018
 05:02:51 -0800 (PST)
X-Google-Smtp-Source: AH8x224oPNELaBaYcgvYxav34mQVAFQ8O2vnDMmnkqpHJ9icIRxUh+Je2Zuan8p9ksvkmEQSCWid
X-Received: by 10.28.5.2 with SMTP id 2mr1805460wmf.3.1518958971498;
        Sun, 18 Feb 2018 05:02:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518958971; cv=none;
        d=google.com; s=arc-20160816;
        b=yxqMxCDmsSwgN7gSJmXXgxnu5p1alJ/43PaGf1Xnc9L2+evG15Xyf6QE6DR6ltKw/j
         1fhq2EtbRq296/BUTloLsX7mKCnaaGI8bsrr197PcxCh+q0EjhPtP3UKF95D+V05/YRD
         q9l8AEoC0wSPwG1IFl/vJ3lqlXcO2zi8IeUMU/q6/hALo0WBUxQsJJbYEVlItItj+tch
         7sXe/EwFW0XdosslWxFgn16WyNd/VGmtfBOX895u9OO3Nn+rQ0V5OfBFMDvq00DLg6pa
         and4zsdjyoGM3Aq/2CAl/wn7DWv7XZsgkPhgzYDSv9WswHUWGJBsvxGRt51gwva1x25R
         ca8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=q2fqlhPz77xNX9McA9ZC+MwqF/+iIyP9lcD5nurFlkc=;
        b=MYe7/BpkvZF2y+o39TzW7ftzqHjW74HszdIuymhadD71vsXhUXue4rcl2gyo4C4HOb
         lcyvAlIfJcJwM9IjooA0Mw6hpK3+S7DSkJ3CwQwAYm0qcXf1up4RaqDsTEacDTt41cn8
         0p4f0dD6yg8vmS2AwZXPdvEzA/AKL2s08fRlVMuxs3Vs15Li3jRVIqWcr4q+QWsmukfT
         KOlq5eKO1y7Vne8awe6rVEpfMeBD0srlxvjd6oLcOh2HnnObumSSWq2wFkt614xXusUq
         8kqJ/o79g3Hyj82rrJzYfvGuQB/VCM9b4H6QpXbUOD5s+PgKLOv3LLXOZrj+Tdq2qEvc
         hrYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y42si84545wry.5.2018.02.18.05.02.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 05:02:51 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,530,1511823600"; 
   d="scan'208";a="314117452"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2018 14:02:51 +0100
Date: Sun, 18 Feb 2018 14:02:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eisha Chen-yen-su <chenyensu0@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Fix dereference
 warning style
In-Reply-To: <CAEXvT6vEi198aC_ej=9Tm2byd+peBtzy7iFYj40SC3PkrP9x3w@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1802181401220.2777@hadrien>
References: <20180217001446.6261-1-chenyensu0@gmail.com> <alpine.DEB.2.20.1802170832430.2645@hadrien> <CAEXvT6vEi198aC_ej=9Tm2byd+peBtzy7iFYj40SC3PkrP9x3w@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 18 Feb 2018, Eisha Chen-yen-su wrote:

> On Sat, Feb 17, 2018 at 8:35 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sat, 17 Feb 2018, Eisha Chen-yen-su wrote:
> >
> >> This patch fixes the checkpatch.pl warning:
> >>
> >> WARNING: Avoid multiple line dereference - prefer 'devpriv->ao_buffer_bus_addr[i]'
> >> \#1494: FILE: drivers/staging/comedi/drivers/cb_pcidas64.c:1494:
> >> +                                                  &devpriv->
> >> +                                                  ao_buffer_bus_addr[i],
> >
> > Thank you for your patch.  For the subject line and the commit log, please
> > try to focus on what you did, rather than what you fixed, as fixing can
> > typically be done in multiple ways.  Basically what you have done is to
> > remove a newline inside a dereference.  Also, while it's ok to include the
> > checkpatch message, it is probably not necessary to cinlude the cited
> > line, since one can easily see that from what changes in the patch.
> >
> > Please send a v2.
> >
> > julia
>
> Hello,
>
> I was wondering if the line
> `WARNING: Avoid multiple line dereference - prefer
> 'devpriv->ao_buffer_bus_addr[i]'`
> wasn't too long in the commit body, as it is more than 80 characters long.
> Unless it is acceptable because I'm quoting something?

Long lines in the coomit log are better avoided.  It is not necessary to
put the full checkpatch message.  If it is straightforward, you don't need
to show it all.  Just put something like Problem detected by checkpatch.

>
> Eisha
>
> Ps: I've sent a v2 without answering here before. Maybe it was a
> little bit rude.
> Sorry, if it was the case.

No problem.  You only have to reply if there is something you didn't
understand or want to discuss.

julia

> >>
> >> Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
> >> ---
> >>  drivers/staging/comedi/drivers/cb_pcidas64.c | 3 +--
> >>  1 file changed, 1 insertion(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
> >> index b657beedd5ff..eea44435a2aa 100644
> >> --- a/drivers/staging/comedi/drivers/cb_pcidas64.c
> >> +++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
> >> @@ -1490,8 +1490,7 @@ static int alloc_and_init_dma_members(struct comedi_device *dev)
> >>                       devpriv->ao_buffer[i] =
> >>                               dma_alloc_coherent(&pcidev->dev,
> >>                                                  DMA_BUFFER_SIZE,
> >> -                                                &devpriv->
> >> -                                                ao_buffer_bus_addr[i],
> >> +                                                &devpriv->ao_buffer_bus_addr[i],
> >>                                                  GFP_KERNEL);
> >>                       if (!devpriv->ao_buffer[i])
> >>                               return -ENOMEM;
> >> --
> >> 2.14.3
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180217001446.6261-1-chenyensu0%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

