X-GM-THRID: 6394738986789634048
X-Received: by 10.25.26.80 with SMTP id a77mr411469lfa.18.1488922364511;
        Tue, 07 Mar 2017 13:32:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.125.137 with SMTP id y131ls22662lfc.24.gmail; Tue, 07 Mar
 2017 13:32:44 -0800 (PST)
X-Received: by 10.25.104.21 with SMTP id d21mr446573lfc.31.1488922364128;
        Tue, 07 Mar 2017 13:32:44 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si182989wmg.3.2017.03.07.13.32.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 13:32:44 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,260,1486422000"; 
   d="scan'208";a="215937754"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 22:32:43 +0100
Date: Tue, 7 Mar 2017 22:32:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sreya Mittal <sreyamittal5@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    gregkh@linuxfoundation.org, marvin24@gmx.de
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: Replace udelay
 byusleep_range
In-Reply-To: <9c43c46e-93b5-46fd-ba6f-ccdf5929d380@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703072232180.2292@hadrien>
References: <20170307125256.3998-1-sreyamittal5@gmail.com> <alpine.DEB.2.20.1703071651160.3150@hadrien> <fb43e9c5-9aa2-4a6b-8201-7879d791c71f@googlegroups.com> <2611658.WmW6x0yd6b@fb07-iapwap2> <9c43c46e-93b5-46fd-ba6f-ccdf5929d380@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1436595607-1488922363=:2292"

--8323329-1436595607-1488922363=:2292
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 7 Mar 2017, Sreya Mittal wrote:

>
>
> On Wednesday, March 8, 2017 at 2:17:36 AM UTC+5:30, Marc Dietrich wrote:
>
>       Am Dienstag, 7. März 2017, 20:14:06 CET schrieb Sreya Mittal:
>
>       > On Tuesday, March 7, 2017 at 9:22:16 PM UTC+5:30, Julia Lawall
>       wrote:
>
>       > > On Tue, 7 Mar 2017, Sreya Mittal wrote:
>
>       > > > Replace udelay by usleep_range.
>
>       > > > Fixes the checkpatch issue:
>
>       > > > usleep_range is preferred over udelay
>
>       > > >
>
>       > > > In Documentation/timers/timers-howto.txt,
>
>       > > > it is mentioned that udelay should be used
>
>       > > > for a few microseconds(less than 10), and
>
>       > > > usleep_range should be preferred for 10
>
>       > > > microseconds to 20 milliseconds.
>
>       > > >
>
>       > > > Signed-off-by: Sreya Mittal <sreyam...@gmail.com
>       <javascript:>>
>
>       > > > ---
>
>       > > >
>
>       > > > drivers/staging/nvec/nvec.c | 4 ++--
>
>       > > > 1 file changed, 2 insertions(+), 2 deletions(-)
>
>       > > >
>
>       > > > diff --git a/drivers/staging/nvec/nvec.c
>       b/drivers/staging/nvec/nvec.c
>
>       > > > index c1feccf..5fab241 100644
>
>       > > > --- a/drivers/staging/nvec/nvec.c
>
>       > > > +++ b/drivers/staging/nvec/nvec.c
>
>       > > > @@ -631,7 +631,7 @@ static irqreturn_t nvec_interrupt(int
>       irq, void
>
>       > >
>
>       > > *dev)
>
>       > >
>
>       > > > break;
>
>       > > >
>
>       > > > case 2: /* first byte after command */
>
>       > > >
>
>       > > > if (status == (I2C_SL_IRQ | RNW | RCVD)) {
>
>       > > >
>
>       > > > - udelay(33);
>
>       > > > + usleep_range(33, 43);
>
>       > >
>
>       > > The key point is how do you choose the upper bound. If you
>       don't have a
>
>       > > good rationale for your choice, it would be better not to
>       make the change.
>
>       >
>
>       > Could you please give some hint(s) regarding the choice of
>       upper bound and
>
>       > what possibly can be a good rationale for it?
>
>        
>
>       I n'acked a similar patch a few days ago. See
>       https://lkml.org/lkml/2017/3/2/293.
>
>        
>
>       Maybe it would be good to add a hint to the relevant tutorials
>       to first check if a similar patch has been submitted before.

I have added some text to this effect.  Thank you for the suggestion.

julia

>
>        
>
>       Marc
>
>
> Hi,
>
> Thank you for the link. My bad that I didn't check whether a similar patch
> has been submitted before.
>
> Sreya
>  
>
>        
>
>       Sreya
>
>        
>
>       >
>
>       > > julia
>
>       > >
>
>       > > > if (nvec->rx->data[0] != 0x01) {
>
>       > > >
>
>       > > > dev_err(nvec->dev,
>
>       > > >
>
>       > > > "Read without prior read
>
>       > >
>
>       > > command\n");
>
>       > >
>
>       > > > @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int
>       irq, void
>
>       > >
>
>       > > *dev)
>
>       > >
>
>       > > > * We experience less incomplete messages with this delay
>       than
>
>       > >
>
>       > > without
>
>       > >
>
>       > > > * it, but we don't know why. Help is appreciated.
>
>       > > > */
>
>       > > >
>
>       > > > - udelay(100);
>
>       > > > + usleep_range(100,200);
>
>       > > >
>
>       > > > return IRQ_HANDLED;
>
>       > > >
>
>       > > > }
>
>       > >
>
>       > > Groups "outreachy-kernel" group.
>
>       > >
>
>       > > > To unsubscribe from this group and stop receiving emails
>       from it, send
>
>       > >
>
>       > > an email to outreachy-kern...@googlegroups.com
>       <javascript:>.
>
>       > >
>
>       > > > To post to this group, send email to
>       outreach...@googlegroups.com
>
>       > >
>
>       > > <javascript:>.
>
>       > >
>
>       > > > To view this discussion on the web visit
>
>       > >
>
>       > >
>       https://groups.google.com/d/msgid/outreachy-kernel/20170307125256.3998-1-s
>
>       > > reyamittal5%40gmail.com.>
>
>       > > > For more options, visit
>       https://groups.google.com/d/optout.
>
>        
>
>        
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/9c43c46e-93b5-46fd-ba6f-
> ccdf5929d380%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1436595607-1488922363=:2292--

