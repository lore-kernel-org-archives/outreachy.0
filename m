X-GM-THRID: 6392086747768946688
X-Received: by 10.25.79.23 with SMTP id d23mr268720lfb.27.1488288270662;
        Tue, 28 Feb 2017 05:24:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.132 with SMTP id f4ls114857lji.41.gmail; Tue, 28 Feb 2017
 05:24:29 -0800 (PST)
X-Received: by 10.25.0.141 with SMTP id 135mr266384lfa.5.1488288269688;
        Tue, 28 Feb 2017 05:24:29 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si1185366wmd.0.2017.02.28.05.24.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 05:24:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,219,1484002800"; 
   d="scan'208";a="215010423"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 14:24:28 +0100
Date: Tue, 28 Feb 2017 14:24:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com, 
    oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lnet: Use
 list_for_each_entry()
In-Reply-To: <CAOCi2DHOhQWs9oj=kicB48zkSjo0+whGbWyLtpyoAN5NdVa_Cw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702281420200.3056@hadrien>
References: <1488273521-29919-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1702281125590.3056@hadrien> <CAOCi2DHOhQWs9oj=kicB48zkSjo0+whGbWyLtpyoAN5NdVa_Cw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1540250856-1488288162=:3056"
Content-ID: <alpine.DEB.2.20.1702281422530.3056@hadrien>

--8323329-1540250856-1488288162=:3056
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.20.1702281422531.3056@hadrien>



On Tue, 28 Feb 2017, Gargi Sharma wrote:

> On Tue, Feb 28, 2017 at 3:57 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Tue, 28 Feb 2017, Gargi Sharma wrote:
> >
> > > Use list_for_each_entry() rather than a combination of list_for_each()
> > > and list_entry() since the former does not expose the list spine.
> > >
> > > Done using Coccinelle:
> > > @a@
> > > expression pos, n, mem;
> > > type t;
> > > identifier var;
> > > iterator name list_for_each_entry, list_for_each;
> > > @@
> > >
> > > - list_for_each(pos, n)
> > > + list_for_each_entry(var, n, mem)
> > > � {
> > > � ... when != var
> > > - var = list_entry(pos, t, mem);
> > > � ... when != pos
> > > � }
> > >
> > > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > > ---
> > > �drivers/staging/lustre/lnet/selftest/conrpc.c | 6 ++----
> > > �1 file changed, 2 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/lustre/lnet/selftest/conrpc.c
> b/drivers/staging/lustre/lnet/selftest/conrpc.c
> > > index c6a683b..72b6ff2 100644
> > > --- a/drivers/staging/lustre/lnet/selftest/conrpc.c
> > > +++ b/drivers/staging/lustre/lnet/selftest/conrpc.c
> > > @@ -1339,10 +1339,8 @@ lstcon_rpc_cleanup_wait(void)
> > > � � � LASSERT(console_session.ses_shutdown);
> > >
> > > � � � while (!list_empty(&console_session.ses_trans_list)) {
> > > - � � � � � � list_for_each(pacer, &console_session.ses_trans_list) {
> > > - � � � � � � � � � � trans = list_entry(pacer, struct lstcon_rpc_trans,
> > > - � � � � � � � � � � � � � � � � � � � �tas_link);
> > > -
> > > + � � � � � � list_for_each_entry(trans,
> &console_session.ses_trans_list,
> > > + � � � � � � � � � � � � � � � � tas_link) {
> >
> > I'm not sure to understand this code, in particular the outer while loop.
> > Who is removing elements from the list? �
> Actually, there is no code to remove elements from the list. I think I might
> have done something wrong here. From what I gather list_for_each increments
> the pointer to the list so that wen one iterates over the whole list,
> list_empty now
> returns true. So, before exiting from this while loop (which is only
> executed once),
> you execute a set of instructions(which are a timeout and setting a state in
> this case).
> In the case of list_for_each_entry this will never happen and it'll be stuck
> in an infinite
> loop.

Something is going on with the calls to wake_up and schedule_timeout.
Some other process is removing things from the list.  Actually,
looking further up in the code there is a comment that says "Called with
hold of global mutex".  So perhaps this implies that the woken up
processes cannot run until schedule_timeout is called, and thus can't
interrupt the list_for_each.

julia

>
> gargi
>
> >If that can happen with in the
> > list_for_each/list_for_each_entry, then a safer version of the iterator is
> > needed.
> >
> > julia
> >
> > > � � � � � � � � � � � CDEBUG(D_NET, "Session closed, wakeup transaction
> %s\n",
> > > � � � � � � � � � � � � � � �lstcon_rpc_trans_name(trans->tas_opc));
> > >
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1488273521-29919-1-git-s
> end-email-gs051095%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
>
--8323329-1540250856-1488288162=:3056--

