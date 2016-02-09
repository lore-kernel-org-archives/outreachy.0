X-GM-THRID: 6249320187876605952
X-Received: by 10.194.171.198 with SMTP id aw6mr4153426wjc.1.1455033425500;
        Tue, 09 Feb 2016 07:57:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.126.147 with SMTP id z141ls625529wmc.3.canary; Tue, 09 Feb
 2016 07:57:05 -0800 (PST)
X-Received: by 10.194.204.194 with SMTP id la2mr4049248wjc.7.1455033425106;
        Tue, 09 Feb 2016 07:57:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h73si420992wme.0.2016.02.09.07.57.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:57:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,421,1449529200"; 
   d="scan'208";a="202316775"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 16:57:04 +0100
Date: Tue, 9 Feb 2016 16:57:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniel Baluta <daniel.baluta@gmail.com>
cc: Rakhi Sharma <rakhish1994@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] drivers: staging: lustre: lustre:
 lov: lov_request: Fixed a coding style warning.
In-Reply-To: <CAEnQRZDfqzRmAxwsMFehNOdBx6813BNncTC_x-jq-JhEUtKtjQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602091656290.2578@hadrien>
References: <1455033212-16140-1-git-send-email-rakhish1994@gmail.com> <CAEnQRZDfqzRmAxwsMFehNOdBx6813BNncTC_x-jq-JhEUtKtjQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 9 Feb 2016, Daniel Baluta wrote:

> On Tue, Feb 9, 2016 at 5:53 PM, Rakhi Sharma <rakhish1994@gmail.com> wrote:
> > Fixed a coding style warning.
> > WARNING: braces {} are not necessary for single statement blocks
> >
> > Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> > ---
>
> Better not touch this. At some point someone will implement the FIXME.

Actually, it's much worse than this.  A comment is not a statement.  Now
the lov_put_reqset(set); is under the if.

julia

>
>
> >  drivers/staging/lustre/lustre/lov/lov_request.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lustre/lov/lov_request.c b/drivers/staging/lustre/lustre/lov/lov_request.c
> > index 42deda7..c77b987 100644
> > --- a/drivers/staging/lustre/lustre/lov/lov_request.c
> > +++ b/drivers/staging/lustre/lustre/lov/lov_request.c
> > @@ -340,9 +340,8 @@ int lov_fini_destroy_set(struct lov_request_set *set)
> >         if (set == NULL)
> >                 return 0;
> >         LASSERT(set->set_exp);
> > -       if (atomic_read(&set->set_completes)) {
> > +       if (atomic_read(&set->set_completes))
> >                 /* FIXME update qos data here */
> > -       }
> >
> >         lov_put_reqset(set);
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAEnQRZDfqzRmAxwsMFehNOdBx6813BNncTC_x-jq-JhEUtKtjQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

