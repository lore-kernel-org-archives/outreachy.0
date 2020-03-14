X-GM-THRID: 6804152716629114880
X-Received: by 2002:a1c:c257:: with SMTP id s84mr18824952wmf.9.1584217927283;
        Sat, 14 Mar 2020 13:32:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4b06:: with SMTP id y6ls3740030wma.3.canary-gmail; Sat,
 14 Mar 2020 13:32:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vti8q7IhSwHIwcKJh16A3sMmJI988pyPOuO5eW0/H/5d/wRuj4CeQ7wLbavsAcQ2wDSeq9L
X-Received: by 2002:a05:600c:410c:: with SMTP id j12mr15037995wmi.77.1584217925663;
        Sat, 14 Mar 2020 13:32:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584217925; cv=none;
        d=google.com; s=arc-20160816;
        b=LeSqqdLHglQC7DJpLMZGjCdiQbyQczXxYgyFUGQzyemb6OPuDnSJVTOVa0GBOH9Lrz
         lZTf36ZfsPIi8NCtvIGOub3stA2pJfg9fbuKHltX2zLOmtJsiOV9JpwVhsAtBQtADJ7f
         d+FvpCePl/mP4wJ770ZUJG6pgE4kQdfPhsCUTaNcCc75Poulgko5iKDPF+YQf4ZigWcq
         Aah0FSo1KFnTCtRgQWfKiOQb+9eiUgkmFLGuc5yYQxxqP4eN1R5DKJN6S2ym50UeMTNy
         P0wyTzOOdYtf0MfoWDcQik9U/bD99epo2TNevlZ9MI4W9LFk+UcGiFm51O9LdtT9urNd
         GM7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=c+4rjag5U1/zxLA8owPjPR1BjK1Cm9XqEZPjuUaIbUU=;
        b=hABSajhQrACSWLVaB0NCYVexISU4BSSVkzkN1uy5luqWM+JT69SwujLDThvqHUyzg2
         /x+410BJDQfrsqHOrMouvCjRLWlOZYqIKDevnq1C2TZkKTFlpudL+19g5TLOv9PaWRpX
         DY2NSQ8iQ4dWtB8MQ1u3HGMt0LP+Yl1J2ieF7IJxSGRihyHUQY7tFNUwxMopESN6oJoK
         WE7gncUtFmbN2XRdjeYHdim/WE2SiGAY9HTL2fXO6oF/cV/2TVR0SqKQC9AkyMUXMal1
         LWJVbSoulISjKtLbG148eCirIMUd2DzhUj1XRRO+G4KDAEeKOXGgQBbIWP1AvTGklSuS
         8BNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d16si396566wrv.4.2020.03.14.13.32.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2020 13:32:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,553,1574118000"; 
   d="scan'208";a="440341017"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2020 21:32:05 +0100
Date: Sat, 14 Mar 2020 21:32:05 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: ni_mio_common: Code
 reformat and re-indentation
In-Reply-To: <facae09d-0a64-4007-af28-d9da637a95c8@googlegroups.com>
Message-ID: <alpine.DEB.2.21.2003142128530.2293@hadrien>
References: <20200314194724.GA2711@deeUbuntu> <alpine.DEB.2.21.2003142054110.2293@hadrien> <facae09d-0a64-4007-af28-d9da637a95c8@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1519906805-1584217925=:2293"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1519906805-1584217925=:2293
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 14 Mar 2020, Deepak Varma wrote:

>
>
> On Sunday, 15 March 2020 01:27:27 UTC+5:30, Julia Lawall wrote:
>
>
>       On Sun, 15 Mar 2020, Deepak R Varma wrote:
>
>       > Resolve general code indentation problems as detected by checkpatch script.
>       > Implement code reformat and re-indentation as per coding style to
>       > improve readability.
>       >
>       > Signed-off-by: Deepak R Varma <mh12g...@gmail.com>
>       > ---
>       >  .../staging/comedi/drivers/ni_mio_common.c    | 62 ++++++++++---------
>       >  1 file changed, 32 insertions(+), 30 deletions(-)
>       >
>       > diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
>       > index b72a40a79930..48e20de3ebcf 100644
>       > --- a/drivers/staging/comedi/drivers/ni_mio_common.c
>       > +++ b/drivers/staging/comedi/drivers/ni_mio_common.c
>       > @@ -2198,10 +2198,10 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
>       >                             NISTC_AI_TRIG_START1_SEL(0);
>       >                  break;
>       >          case TRIG_EXT:
>       > -                ai_trig |= NISTC_AI_TRIG_START1_SEL(
>       > -                        ni_get_reg_value_roffs(CR_CHAN(cmd->start_arg),
>       > -                                               NI_AI_StartTrigger,
>       > -                                               &devpriv->routing_tables, 1));
>       > +                ai_trig |= NISTC_AI_TRIG_START1_SEL(ni_get_reg_value_roffs(
>       > +                                        CR_CHAN(cmd->start_arg),
>       > +                                        NI_AI_StartTrigger,
>       > +                                        &devpriv->routing_tables, 1));
>
>       These may have been better as they were.  At least the two function calls
>       are more visible in the original.
>
>
> I think the reformatting makes it look simpler and more readable. Did you review it in mutt or here on this page? Please confirm if you want me to revert these back.

It looks strange to have the call to ni_get_reg_value_roffs to the right
of its arguments.  It looks like the arguments are the arguments of
NISTC_AI_TRIG_START1_SEL.

>
>       [...]
>
>       > @@ -3079,12 +3081,10 @@ static void ni_ao_cmd_set_update(struct comedi_device *dev,
>       >           * zero out these bit fields to be set below. Does an ao-reset do this
>       >           * automatically?
>       >           */
>       > -        devpriv->ao_mode1 &= ~(
>       > -          NISTC_AO_MODE1_UI_SRC_MASK         |
>       > -          NISTC_AO_MODE1_UI_SRC_POLARITY     |
>       > -          NISTC_AO_MODE1_UPDATE_SRC_MASK     |
>       > -          NISTC_AO_MODE1_UPDATE_SRC_POLARITY
>       > -        );
>       > +        devpriv->ao_mode1 &= ~(NISTC_AO_MODE1_UI_SRC_MASK          |
>       > +                                NISTC_AO_MODE1_UI_SRC_POLARITY     |
>       > +                                NISTC_AO_MODE1_UPDATE_SRC_MASK     |
>       > +                                NISTC_AO_MODE1_UPDATE_SRC_POLARITY);
>
>       This looks like an improveemnt.  Are the subsequent NISTCs lines up with
>       the right side of the (?  It doesn't look like it, but the +s can change
>       the appearance of the indentation.
>
>
> sorry, I did not follow this fully. Could you please explain what do you mean by improvement? There is no code change. I only realigned the NISTC* lines so that the "&= ~(" part is clearly visible. It definitely looks different here on the web page
> that the vi editor.  

I would expect

   (NISTC_AO_MODE1...
    NISTC_AO_MODE1...
    NISTC_AO_MODE1...
    NISTC_AO_MODE1...

As far as I can see, you have

   (NISTC_AO_MODE1...
     NISTC_AO_MODE1...
     NISTC_AO_MODE1...
     NISTC_AO_MODE1...


>
>
>       >          if (cmd->scan_begin_src == TRIG_TIMER) {
>       >                  unsigned int trigvar;
>       > @@ -3133,10 +3133,10 @@ static void ni_ao_cmd_set_update(struct comedi_device *dev,
>       >          } else { /* TRIG_EXT */
>       >                  /* FIXME:  assert scan_begin_arg != 0, ret failure otherwise */
>       >                  devpriv->ao_cmd2  |= NISTC_AO_CMD2_BC_GATE_ENA;
>       > -                devpriv->ao_mode1 |= NISTC_AO_MODE1_UPDATE_SRC(
>       > -                        ni_get_reg_value(CR_CHAN(cmd->scan_begin_arg),
>       > -                                         NI_AO_SampleClock,
>       > -                                         &devpriv->routing_tables));
>       > +                devpriv->ao_mode1 |= NISTC_AO_MODE1_UPDATE_SRC(ni_get_reg_value(
>       > +                                                CR_CHAN(cmd->scan_begin_arg),
>       > +                                                NI_AO_SampleClock,
>       > +                                                &devpriv->routing_tables));
>       >                  if (cmd->scan_begin_arg & CR_INVERT)
>       >                          devpriv->ao_mode1 |= NISTC_AO_MODE1_UPDATE_SRC_POLARITY;
>       >          }
>       > @@ -3672,13 +3672,15 @@ static int ni_cdio_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
>       >           */
>       >          cdo_mode_bits = NI_M_CDO_MODE_FIFO_MODE |
>       >                          NI_M_CDO_MODE_HALT_ON_ERROR |
>       > -                        NI_M_CDO_MODE_SAMPLE_SRC(
>       > -                                ni_get_reg_value(CR_CHAN(cmd->scan_begin_arg),
>       > -                                                 NI_DO_SampleClock,
>       > -                                                 &devpriv->routing_tables));
>       > +                        NI_M_CDO_MODE_SAMPLE_SRC(ni_get_reg_value(
>       > +                                                CR_CHAN(cmd->scan_begin_arg),
>       > +                                                NI_DO_SampleClock,
>       > +                                                &devpriv->routing_tables));
>
>       These like the earlier ones are probably better left as is.
>
>
> Same as above. Please confirm if you want me to revert these.
>
>
>       >          if (cmd->scan_begin_arg & CR_INVERT)
>       >                  cdo_mode_bits |= NI_M_CDO_MODE_POLARITY;
>       > +
>       >          ni_writel(dev, cdo_mode_bits, NI_M_CDO_MODE_REG);
>       > +
>
>       I'm not sure what motivated adding these blank lines, but it doesn't seem
>       to be the same issue as what is done in the rest of the patch.
>
>
> I think with the new line in place, it makes it easier to spot the ni_write function call easily. Otherwise it may get overlooked during a quick glace of this area. Let me know if you still think the new line is unnecessary and I will revert it. No
> problem.

It's not so much of whether it is necessary or not.  The point is just
that none of the other changes involve adding new blank lines.  So these
look like a different kind of change than the rest.

julia

>       julia
>
>       >          if (s->io_bits) {
>       >                  ni_writel(dev, s->state, NI_M_CDO_FIFO_DATA_REG);
>       >                  ni_writel(dev, NI_M_CDO_CMD_SW_UPDATE, NI_M_CDIO_CMD_REG);
>       > --
>       > 2.17.1
>       >
>       > --
>       > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from it, send an email to outreach...@googlegroups.com.
>       > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200314194724.GA2711%40deeUbuntu.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/facae09d-0a64-4007-af28-d9da637a95c8%40googlegroups.com.
>
>
--8323329-1519906805-1584217925=:2293--

