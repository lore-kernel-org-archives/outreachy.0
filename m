X-GM-THRID: 6391852583766458368
X-Received: by 10.28.104.2 with SMTP id d2mr2375wmc.12.1488309263110;
        Tue, 28 Feb 2017 11:14:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.92 with SMTP id r28ls210998ljd.11.gmail; Tue, 28 Feb
 2017 11:14:22 -0800 (PST)
X-Received: by 10.46.77.69 with SMTP id a66mr530165ljb.11.1488309262424;
        Tue, 28 Feb 2017 11:14:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si298754wmf.0.2017.02.28.11.14.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 11:14:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,221,1484002800"; 
   d="scan'208";a="262498514"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 20:14:21 +0100
Date: Tue, 28 Feb 2017 20:14:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: Joe Perches <joe@perches.com>, Greg KH <gregkh@linuxfoundation.org>, 
    lustre-devel@lists.lustre.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/5] staging: lustre: Remove
 unnecessary else after return
In-Reply-To: <CALrZqyP-BRPj4jEFgU=B_AV7E4-tJfgaXwwxRhUprLg_4gWQkg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702282012460.2171@hadrien>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com> <1488223529.25838.8.camel@perches.com> <CALrZqyMTTk4o5Y5e3DzH_cqXxvHsHDtByG0oYwWMjekZSR7Kkw@mail.gmail.com> <1488228200.25838.14.camel@perches.com>
 <CALrZqyP-BRPj4jEFgU=B_AV7E4-tJfgaXwwxRhUprLg_4gWQkg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 1 Mar 2017, SIMRAN SINGHAL wrote:

> On Tue, Feb 28, 2017 at 2:13 AM, Joe Perches <joe@perches.com> wrote:
> > On Tue, 2017-02-28 at 01:51 +0530, SIMRAN SINGHAL wrote:
> >> On Tue, Feb 28, 2017 at 12:55 AM, Joe Perches <joe@perches.com> wrote:
> >> > On Mon, 2017-02-27 at 23:44 +0530, simran singhal wrote:
> >> > > This patch fixes the checkpatch warning that else is not generally
> >> > > useful after a break or return.
> >> >
> >> > checkpatch doesn't actually warn for this style
> >> >
> >> >         if (foo)
> >> >                 return bar;
> >> >         else
> >> >                 return baz;
> >> >
> >>
> >> ok, My bad
> >> so, I have to change commit message as checkpatch doesn't warn for this style.
> >
> > Perhaps better would be to leave them unchanged instead.
> >
> >> > > diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> > []
> >> > > @@ -1806,8 +1806,7 @@ ksocknal_close_matching_conns(struct lnet_process_id id, __u32 ipaddr)
> >> > >
> >> > >       if (!count)
> >> > >               return -ENOENT;
> >> > > -     else
> >> > > -             return 0;
> >> > > +     return 0;
> >
> > There might be a case for this one.
> > error returns are generally in the form
> >
> > {
> >         [...]
> >
> >         err = func(...);
> >         if (err < 0)
> >                 return err;
> >
> >         return 0;
> > }
> Not sure, what's the problem in removing else as according to me
> there is no use of else.
>
> In this case if (if condition) does not satisfy then else condition will
> be satisfied and function will return 0.

I think that "there might be a case for" was a positive comment.  In any
case, it looks nicer to me if success is outside of a conditional and
failure is under a conditional.  Or to be more precise, Coccinelle bug
finding rules tend to work better if that property is respected.

julia

>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALrZqyP-BRPj4jEFgU%3DB_AV7E4-tJfgaXwwxRhUprLg_4gWQkg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

