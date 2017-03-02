X-GM-THRID: 6392907056098050048
X-Received: by 10.46.15.2 with SMTP id 2mr2116672ljp.31.1488467947939;
        Thu, 02 Mar 2017 07:19:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.221 with SMTP id e90ls392878lji.30.gmail; Thu, 02 Mar
 2017 07:19:07 -0800 (PST)
X-Received: by 10.46.82.157 with SMTP id n29mr2113183lje.29.1488467947396;
        Thu, 02 Mar 2017 07:19:07 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v201si612536wmv.3.2017.03.02.07.19.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 07:19:07 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,231,1484002800"; 
   d="scan'208";a="215335460"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 16:19:06 +0100
Date: Thu, 2 Mar 2017 16:18:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, marvin24@gmx.de, 
    gregkh@linuxfoundation.org, ac100@lists.launchpad.net, 
    linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: cleanup USLEEP_RANGE
 checkpatch checks
In-Reply-To: <4958c8a8-4b50-4567-91d8-9554e9bdf7f6@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703021618120.3414@hadrien>
References: <20170302142418.GA16773@singhal-Inspiron-5558> <alpine.DEB.2.20.1703021535500.3414@hadrien> <b90bc602-cf06-4abb-bea2-6386d4976864@googlegroups.com> <alpine.DEB.2.20.1703021557230.3414@hadrien>
 <4958c8a8-4b50-4567-91d8-9554e9bdf7f6@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-681796631-1488467905=:3414"
Content-ID: <alpine.DEB.2.20.1703021618310.3414@hadrien>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-681796631-1488467905=:3414
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.20.1703021618311.3414@hadrien>



On Thu, 2 Mar 2017, SIMRAN SINGHAL wrote:

>
>
> On Thursday, March 2, 2017 at 8:31:23 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Thu, 2 Mar 2017, SIMRAN SINGHAL wrote:
>
>       >
>       >
>       > On Thursday, March 2, 2017 at 8:06:40 PM UTC+5:30, Julia
>       Lawall wrote:
>       >
>       >
>       > � � � On Thu, 2 Mar 2017, simran singhal wrote:
>       >
>       > � � � > Resolve strict checkpatch USLEEP_RANGE checks by
>       converting
>       > � � � delays and
>       > � � � > sleeps as described in
>       > � � � ./Documentation/timers/timers-howto.txt.
>       > � � � >
>       > � � � > CHECK: usleep_range is preferred over udelay; see
>       > � � � Documentation/
>       > � � � > timers/timers-howto.txt
>       > � � � >
>       > � � � > Signed-off-by: simran singhal <singhal...@gmail.com>
>       > � � � > ---
>       > � � � > �drivers/staging/nvec/nvec.c | 4 ++--
>       > � � � > �1 file changed, 2 insertions(+), 2 deletions(-)
>       > � � � >
>       > � � � > diff --git a/drivers/staging/nvec/nvec.c
>       > � � � b/drivers/staging/nvec/nvec.c
>       > � � � > index c1feccf..cd35e64 100644
>       > � � � > --- a/drivers/staging/nvec/nvec.c
>       > � � � > +++ b/drivers/staging/nvec/nvec.c
>       > � � � > @@ -631,7 +631,7 @@ static irqreturn_t
>       nvec_interrupt(int irq,
>       > � � � void *dev)
>       > � � � > �����������������break;
>       > � � � > ���������case 2:����������������/* first byte after
>       command */
>       > � � � > �����������������if (status == (I2C_SL_IRQ | RNW |
>       RCVD)) {
>       > � � � > -������������������������udelay(33);
>       > � � � > +������������������������usleep_range(33, 100);
>       >
>       > � � � How did you choose the upper limit.
>       >
>       > � � � I believe that Greg previously suggested not to make
>       these
>       > � � � changes if you
>       > � � � have no way to test them.
>       >
>       > Julia, After going through the reply given by�Nicholas Mc
>       Guire�
>       >
>       https://www.mail-archive.com/kernelnewbies@kernelnewbies.org/msg16464.html
>       > in this reply he has mentioned that even the range of 10
>       microsecond is
>       > enough,
>       > so I prefer to take 100 as upper limit. �
>
>       Than you for the link.
>
>       It looks like he suggests to change 33 to 30-40, not to 33-100.
>       �In any
>       case, you have three choices for this kind of issue:
>       1. Don't make the change, because you can't test the result
>       2. Make the change, and explain the commit log what your
>       rationale is
>       3. Make the change, and explain below the --- that you have no
>       idea what
>       you are doing, and you are just proposing the patch as something
>       concrete
>       to start a discussion.
>
>       But your preference is not a suitable justification. �The
>       hardware does
>       something, and the choice can only really be made by the person
>       who knows
>       what it does.
>
> �
> Thanks,�
> Julia I'll keep this in mind from next time.
>
> I choose the range from 33 to 100 for being on more safer side.
> Should I make it 30-40 and send v2.

I thought that the maintainer already responded saying that one shouldnot
change this code?

julia

>
>       julia
>
>       > �
>       > Simran
>       >
>       > � � � julia
>       >
>       >
>       > � � � > �������������������������if (nvec->rx->data[0] !=
>       0x01) {
>       > � � � > ���������������������������������dev_err(nvec->dev,
>       > � � � > �����������������������������������������"Read without
>       prior
>       > � � � read command\n");
>       > � � � > @@ -718,7 +718,7 @@ static irqreturn_t
>       nvec_interrupt(int irq,
>       > � � � void *dev)
>       > � � � > ��������� * We experience less incomplete messages
>       with this
>       > � � � delay than without
>       > � � � > ��������� * it, but we don't know why. Help is
>       appreciated.
>       > � � � > ��������� */
>       > � � � > -��������udelay(100);
>       > � � � > +��������usleep_range(100, 200);
>       > � � � >
>       > � � � > ���������return IRQ_HANDLED;
>       > � � � > �}
>       > � � � > --
>       > � � � > 2.7.4
>       > � � � >
>       > � � � > --
>       > � � � > You received this message because you are subscribed
>       to the
>       > � � � Google Groups "outreachy-kernel" group.
>       > � � � > To unsubscribe from this group and stop receiving
>       emails from
>       > � � � it, send an email to outreachy-kern...@googlegroups.com.
>       > � � � > To post to this group, send email to
>       > � � � outreach...@googlegroups.com.
>       > � � � > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/20170302142418.GA16
>       773%4
>       > � � � 0singhal-Inspiron-5558.
>       > � � � > For more options, visit
>       https://groups.google.com/d/optout.
>       > � � � >
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups
>       > "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an
>       > email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/b90bc602-cf06-4abb-
>       bea2-
>       > 6386d4976864%40googlegroups.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/4958c8a8-4b50-4567-91d8-
> 9554e9bdf7f6%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-681796631-1488467905=:3414--

