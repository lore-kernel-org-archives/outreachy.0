X-GM-THRID: 6330571692278022144
X-Received: by 10.46.1.225 with SMTP id f94mr1796593lji.8.1473966926579;
        Thu, 15 Sep 2016 12:15:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.196 with SMTP id g65ls347757lji.22.gmail; Thu, 15 Sep
 2016 12:15:26 -0700 (PDT)
X-Received: by 10.25.78.12 with SMTP id c12mr1794071lfb.1.1473966926048;
        Thu, 15 Sep 2016 12:15:26 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y6si123597wmg.0.2016.09.15.12.15.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:15:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,340,1470693600"; 
   d="scan'208";a="237011187"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 21:15:25 +0200
Date: Thu, 15 Sep 2016 21:15:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Greg KH <gregkh@linuxfoundation.org>, jon.nettleton@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: olpc_dcon: Replace BUG/BUG_ON
 with WARN_ON
In-Reply-To: <CAAbeOSt2NVAJ51RBMhoe9d2m+2rfQ_pA3AxoU8-ObBNf10LSCg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609152112290.3364@hadrien>
References: <20160915145101.GA6064@life-desktop> <alpine.DEB.2.10.1609151656210.3045@hadrien> <CAAbeOSt2NVAJ51RBMhoe9d2m+2rfQ_pA3AxoU8-ObBNf10LSCg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1012519601-1473966926=:3364"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1012519601-1473966926=:3364
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 15 Sep 2016, Anchal Jain wrote:

>
> >I think that this is not a good idea.  It may be essential to crash the
> >kernel in these cases.  You would have to know why the kernel is able to
> >continue
>
> Because when we use BUG_ON and WARN_ON macro which will abort execution and
> produce diagnostic messages, a stack trace and a list of modules.
>
> but we prefer to use a WARN_ON because it is a less lethal mechanism,
>  which will produce a backtrace without crashing the Kernel.

Yes, but maybe the next instruction will do something that should not be
allowed to happen.  I understand what is the difference between BUG_ON and
WARN_ON, but not why WARN_ON is safe in this particular context.

Think of BUG_ON as hitting the brakes in a car.  You might not normally
want to do that when driving down the middle of a highway.  But it could
be a good thing to do if you are about to hit a brick wall.

julia

>
> On Thu, Sep 15, 2016 at 8:26 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Thu, 15 Sep 2016, Anchal Jain wrote:
>
>       > This patch fixed the warning detect by checkpatch.pl
>       >
>       > Avoid crashing the kernel - try using WARN_ON & recovery code
>       rather than
>       > BUG() or BUG_ON().
>
>       I think that this is not a good idea.  It may be essential to
>       crash the
>       kernel in these cases.  You would have to know why the kernel is
>       able to
>       continue.
>
>       julia
>
>
>       >
>       > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
>       > ---
>       >  drivers/staging/olpc_dcon/olpc_dcon.c | 4 ++--
>       >  1 file changed, 2 insertions(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/olpc_dcon/olpc_dcon.c
>       b/drivers/staging/olpc_dcon/olpc_dcon.c
>       > index f45b2ef..62e70ee 100644
>       > --- a/drivers/staging/olpc_dcon/olpc_dcon.c
>       > +++ b/drivers/staging/olpc_dcon/olpc_dcon.c
>       > @@ -141,7 +141,7 @@ power_up:
>       >       }
>       >       if (x < 0) {
>       >               pr_err("unable to stabilize dcon's smbus,
>       reasserting power and praying.\n");
>       > -             BUG_ON(olpc_board_at_least(olpc_board(0xc2)));
>       > +             WAARN_ON(olpc_board_at_least(olpc_board(0xc2)));
>       >               pm = 0;
>       >               olpc_ec_cmd(EC_DCON_POWER_MODE, &pm, 1, NULL,
>       0);
>       >               msleep(100);
>       > @@ -369,7 +369,7 @@ static void dcon_source_switch(struct
>       work_struct *work)
>       >               break;
>       >       }
>       >       default:
>       > -             BUG();
>       > +             WARN_ON();
>       >       }
>       >
>       >       dcon->curr_src = source;
>       > --
>       > 1.9.1
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20160915145101.GA6064%40
> life-desktop.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAAbeOSt2NVAJ51RBMhoe9d2
> m%2B2rfQ_pA3AxoU8-ObBNf10LSCg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1012519601-1473966926=:3364--

