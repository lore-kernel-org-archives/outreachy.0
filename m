X-GM-THRID: 6329721618764398592
X-Received: by 10.46.1.75 with SMTP id 72mr2504123ljb.10.1473760032758;
        Tue, 13 Sep 2016 02:47:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.41.135 with SMTP id p129ls1743426wmp.9.canary; Tue, 13 Sep
 2016 02:47:12 -0700 (PDT)
X-Received: by 10.28.193.198 with SMTP id r189mr2553741wmf.2.1473760032186;
        Tue, 13 Sep 2016 02:47:12 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a126si1031065wmd.1.2016.09.13.02.47.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 02:47:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,328,1470693600"; 
   d="scan'208";a="236247554"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 11:47:11 +0200
Date: Tue, 13 Sep 2016 11:47:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org, lidza.louina@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: dgnc_cls.c: usleep_range
 is preferred over udelay
In-Reply-To: <CAAbeOSv0+HCx28Ug1eqEnFsEjT3sMuP6aMUR+J2G_gKFuYYcaw@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609131146300.3355@hadrien>
References: <20160913075211.GA6959@life-desktop> <3010989.B07XkbaqhU@wuerfel> <CAAbeOSv0+HCx28Ug1eqEnFsEjT3sMuP6aMUR+J2G_gKFuYYcaw@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1279247154-1473760030=:3355"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1279247154-1473760030=:3355
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 13 Sep 2016, Anchal Jain wrote:

> > This gets called from cls_copy_data_from_queue_to_uart() under a spinlock.
>
> According to the documentation "Documentation/timers/timers-howto.txt".
> In this documentation no explanation of "spinlock". What is that meaning?

A spinlock is a certain kind of lock.  It could be taken with a function
like spin_lock or spin_lock_irqsave.  Probably you can find more
information with google.

julia

>
> On Tue, Sep 13, 2016 at 1:28 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>       On Tuesday, September 13, 2016 1:22:26 PM CEST Anchal Jain
>       wrote:
>       > According to Documentation/timers/timers-howto.txt"
>       > udelay() is only called once from a place where sleeping is
>       allowed.
>       > We can replace it with a call to usleep_range()
>       > with a reasonable upper limit.
>       >
>       > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
>       > ---
>       >  drivers/staging/dgnc/dgnc_cls.c      |  6 +++---
>       >  drivers/staging/wilc1000/linux_mon.c | 11 +++++++++++
>       >  2 files changed, 14 insertions(+), 3 deletions(-)
>       >
>       > diff --git a/drivers/staging/dgnc/dgnc_cls.c
>       b/drivers/staging/dgnc/dgnc_cls.c
>       > index 4e1e0dc6..1b07255 100644
>       > --- a/drivers/staging/dgnc/dgnc_cls.c
>       > +++ b/drivers/staging/dgnc/dgnc_cls.c
>       > @@ -410,7 +410,7 @@ static void
>       cls_assert_modem_signals(struct channel_t *ch)
>       >       writeb(out, &ch->ch_cls_uart->mcr);
>       >
>       >       /* Give time for the UART to actually drop the signals
>       */
>       > -     udelay(10);
>       > +     usleep_range(10, 20);
>       >  }
>       >
>
>       This gets called from cls_copy_data_from_queue_to_uart() under a
>       spinlock.
>
>       > diff --git a/drivers/staging/wilc1000/linux_mon.c
>       b/drivers/staging/wilc1000/linux_mon.c
>       > index 242f82f..22f7684 100644
>       > --- a/drivers/staging/wilc1000/linux_mon.c
>       > +++ b/drivers/staging/wilc1000/linux_mon.c
>       > @@ -59,9 +59,15 @@ void WILC_WFI_monitor_rx(u8 *buff, u32
>       size)
>       >
>       >       /* Get WILC header */
>       >       memcpy(&header, (buff - HOST_HDR_OFFSET),
>       HOST_HDR_OFFSET);
>       > +<<<<<<< HEAD
>       >       /*
>       >        * The packet offset field contain info about what type
>       of management
>       >        * the frame we are dealing with and ack status
>       > +=======
>
>       Clearly doesn't belong into the patch.
>
>               Arnd
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAAbeOSv0%2BHCx28Ug1eqEn
> FsEjT3sMuP6aMUR%2BJ2G_gKFuYYcaw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1279247154-1473760030=:3355--

