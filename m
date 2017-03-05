X-GM-THRID: 6394061646033059840
X-Received: by 10.46.33.163 with SMTP id h35mr2023508lji.17.1488735824407;
        Sun, 05 Mar 2017 09:43:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.65 with SMTP id y1ls1245667ljd.17.gmail; Sun, 05 Mar
 2017 09:43:43 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr1774797ljb.2.1488735823840;
        Sun, 05 Mar 2017 09:43:43 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e72si597031wma.0.2017.03.05.09.43.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 09:43:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,249,1484002800"; 
   d="scan'208";a="263196545"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2017 18:43:43 +0100
Date: Sun, 5 Mar 2017 18:43:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, oleg.drokin@intel.com, 
    andreas.dilger@intel.com, jsimmons@infradead.org, 
    Greg KH <gregkh@linuxfoundation.org>, lustre-devel@lists.lustre.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: lustre: ptlrpc: Use
 list_for_each_entry_safe
In-Reply-To: <CALrZqyO2XF80KZoYQiM_zCJe42c_W_AyhJQ7-JBQZsoeYBkK1w@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703051843060.3052@hadrien>
References: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com> <1488733610-22289-3-git-send-email-singhalsimran0@gmail.com> <alpine.DEB.2.20.1703051838110.3052@hadrien> <CALrZqyO2XF80KZoYQiM_zCJe42c_W_AyhJQ7-JBQZsoeYBkK1w@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 5 Mar 2017, SIMRAN SINGHAL wrote:

> On Sun, Mar 5, 2017 at 11:09 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sun, 5 Mar 2017, simran singhal wrote:
> >
> >> Doubly linked lists which are  iterated  using list_empty
> >> and list_entry macros have been replaced with list_for_each_entry_safe
> >> macro.
> >> This makes the iteration simpler and more readable.
> >>
> >> This patch replaces the while loop containing list_empty and list_entry
> >> with list_for_each_entry_safe.
> >>
> >> This was done with Coccinelle.
> >>
> >> @@
> >> expression E1;
> >> identifier I1, I2;
> >> type T;
> >> iterator name list_for_each_entry_safe;
> >> @@
> >>
> >> T *I1;
> >> + T *tmp;
> >> ...
> >> - while (list_empty(&E1) == 0)
> >> + list_for_each_entry_safe (I1, tmp, &E1, I2)
> >> {
> >> ...when != T *I1;
> >> - I1 = list_entry(E1.next, T, I2);
> >> ...
> >> }
> >>
> >> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> >> ---
> >>  drivers/staging/lustre/lustre/ptlrpc/sec_gc.c | 5 ++---
> >>  1 file changed, 2 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c b/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
> >> index 8ffd000..fe1c0af 100644
> >> --- a/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
> >> +++ b/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
> >> @@ -98,12 +98,11 @@ void sptlrpc_gc_del_sec(struct ptlrpc_sec *sec)
> >>  static void sec_process_ctx_list(void)
> >>  {
> >>       struct ptlrpc_cli_ctx *ctx;
> >> +     struct ptlrpc_cli_ctx *tmp;
> >
> > Another improvement would be to define both variables at once:
> >
> > T *I1
> > + , *tmp
> >   ;
> >
> This is particulary for this patch or for all the patches of this patch-series.

All, I would guess.  Unless the line gets too long.

julia

>
> > julia
> >
> >>
> >>       spin_lock(&sec_gc_ctx_list_lock);
> >>
> >> -     while (!list_empty(&sec_gc_ctx_list)) {
> >> -             ctx = list_entry(sec_gc_ctx_list.next,
> >> -                              struct ptlrpc_cli_ctx, cc_gc_chain);
> >> +     list_for_each_entry_safe(ctx, tmp, &sec_gc_ctx_list, cc_gc_chain) {
> >>               list_del_init(&ctx->cc_gc_chain);
> >>               spin_unlock(&sec_gc_ctx_list_lock);
> >>
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488733610-22289-3-git-send-email-singhalsimran0%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

