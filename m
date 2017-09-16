X-GM-THRID: 6466169958600540160
X-Received: by 10.46.82.9 with SMTP id g9mr973988ljb.42.1505581459378;
        Sat, 16 Sep 2017 10:04:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.209.78 with SMTP id i75ls821215wmg.24.gmail; Sat, 16 Sep
 2017 10:04:18 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBJ4pfUQQG0AO93XbF3CSTvWm3AUyEjcuJuMb0kWUm8l1td97cAg238vji8GxuDIK3As3aT
X-Received: by 10.28.136.12 with SMTP id k12mr626707wmd.10.1505581458333;
        Sat, 16 Sep 2017 10:04:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505581458; cv=none;
        d=google.com; s=arc-20160816;
        b=RAym21E9LTverz2F7L1TPwYi2imNosDS0g/+5tjKxYF4agCHYE7cd6hQ5hR77TyT5/
         YaGgWE9uXdtP7sLAM0QIHJ4J0bi5+s6SuzjGFGKjD6kMjUSM0Ou6yWwpQMF2P+sFs9ON
         rRsMYttOaVp8M3uqWQLtoV8Na4nIGqwHpsO/pYVtFokFF4JUMwdOc+fQVK8pZ/mvhNh/
         z9E3B48fS4a3fmjdR4EqIr7Z3SA5R05YgtMI6zdQC/HYf3/BBJeB0wyCN5ie0ftnyVhs
         uNyicb9HTMAwCbLpPIzg2wo3HwBcPuZLEDcLgx2Z9ZMo6T7BHEuydMZeRUZ4RW5bzZjx
         sYUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=MNb77ErTIR9uDOc+csTI8LkkMqtXVxnBGqVzmd2L2Fw=;
        b=DmUNQnMaBzUvmLwNcsFXVVf/RfPNmXQ+3MgH2lrlzPr/ZFD/mKIoq7dVzRkvX+LHW4
         tBCnXIy7PGr578uuguExtNt7oB0uCxyhLBtiV7eeyC5dD5ZhxIaT0ic9nx7ZoUsozozS
         Cn7eGLpOTvrt8Fb2dgXMEoKuBErJhr0rGxdh6hXwNCg3yram89OK+WUnt02faoqQyCBl
         VpxijzJs2TsD7JMOvwnTUAyVaS8jRUnib1/kKNQFX9xuzO/pfr/pZRXyEWopWMviuLJ1
         wZyDAsPJBeMgWn6sbHMh9j5xsScYYrO3EFIDFy+UPpdTa4TI60tL+Ya7TNU2Eh0Mx5wm
         CfTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d82si199191wmd.1.2017.09.16.10.04.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 10:04:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,403,1500933600"; 
   d="scan'208";a="237733707"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 19:04:17 +0200
Date: Sat, 16 Sep 2017 19:04:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lnet: Replace
 list_for_each with list_for_each_entry
In-Reply-To: <20170916162124.GA6808@Haneen>
Message-ID: <alpine.DEB.2.20.1709161903390.1992@hadrien>
References: <20170916004148.GA25693@Haneen> <alpine.DEB.2.20.1709161320250.2943@hadrien> <20170916161048.GA6020@Haneen> <alpine.DEB.2.20.1709161814050.1992@hadrien> <20170916162124.GA6808@Haneen>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Haneen Mohammed wrote:

> On Sat, Sep 16, 2017 at 06:14:25PM +0200, Julia Lawall wrote:
> >
> >
> > On Sat, 16 Sep 2017, Haneen Mohammed wrote:
> >
> > > On Sat, Sep 16, 2017 at 01:23:28PM +0200, Julia Lawall wrote:
> > > >
> > > >
> > > > On Fri, 15 Sep 2017, Haneen Mohammed wrote:
> > > >
> > > > > Replace use of the combination of list_for_each and list_entry
> > > > > with list_for_each_entry to simplify the code and remove variables
> > > > > that are used only in list_for_each.
> > > > > Issue found and corrected using Coccinelle script:
> > > > >
> > > > > @r@
> > > > > expression head, member, e;
> > > > > type T1, T2, T3;
> > > > > iterator name list_for_each, list_for_each_entry;
> > > > > identifier pos, var;
> > > > > @@
> > > > >
> > > > > -T1 *pos;
> > > > > ...when!=pos=e;
> > > > >
> > > > > -list_for_each(pos, head)
> > > > > +list_for_each_entry(var, head, member)
> > > > > {
> > > > > ...when!=pos=e;
> > > > >    when!=T3 *var;
> > > > > -var = list_entry(pos, T2, member);
> > > > > ...when!=pos=e;
> > > > > }
> > > > > ...when!=pos=e;
> > > >
> > > > Actually, one could consider that there should be when != pos, not when !=
> > > > pos=e, because you need that there are no references at all to pos to be
> > > > able to delete it.  But it's true that if pos is not initialized then
> > > > there should be no other kinds of references either.  The other
> > > > possibility for initialization would be eg
> > > >
> > > > f(...,&pos,...)
> > > >
> > > > You could be suspicious of &pos in general.  But anyway there is no &pos
> > > > in this code.
> > > >
> > > > julia
> > > >
> > >
> > > I have tried "when != pos;" first and switched to "when !=pos=e;"
> > > becuase I have found cases where pos was still used. I only realised I
> > > should have used "when != pos" without the semicolon after I've
> > > submitted the patch.
> > >
> > > There is still case where even with "when!=pos" the script fails to match pos
> > > within an if statement. Is there away around that?
> >
> > Could you send an example?
> >
> > julia
> >
> >
>
> in staging/lustre/lustre/ldlm/ldm_lock.c, line 898:
>
> list_for_each(tmp, queue) {
> 	lock = list_entry(tmp, struct ldlm_lock, l_res_link);
>
> 	mode_end = list_prev_entry(lock, l_sl_mode);
>
> 	if (lock->l_req_mode != req->l_req_mode) {
> 		/* jump to last lock of mode group */
> 		tmp = &mode_end->l_res_link;
> 		continue;
> 	}

Indeed, it should not match that.  Perhaps the problem is because of the
continue.  Thanks for the report.

julia


> > >
> > > > > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > > >
> > > > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> > > >
> > > > > ---
> > > > >  drivers/staging/lustre/lnet/lnet/router.c | 9 ++-------
> > > > >  1 file changed, 2 insertions(+), 7 deletions(-)
> > > > >
> > > > > diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
> > > > > index 3df101b..b8eba33 100644
> > > > > --- a/drivers/staging/lustre/lnet/lnet/router.c
> > > > > +++ b/drivers/staging/lustre/lnet/lnet/router.c
> > > > > @@ -222,15 +222,12 @@ struct lnet_remotenet *
> > > > >  lnet_find_net_locked(__u32 net)
> > > > >  {
> > > > >  	struct lnet_remotenet *rnet;
> > > > > -	struct list_head *tmp;
> > > > >  	struct list_head *rn_list;
> > > > >
> > > > >  	LASSERT(!the_lnet.ln_shutdown);
> > > > >
> > > > >  	rn_list = lnet_net2rnethash(net);
> > > > > -	list_for_each(tmp, rn_list) {
> > > > > -		rnet = list_entry(tmp, struct lnet_remotenet, lrn_list);
> > > > > -
> > > > > +	list_for_each_entry(rnet, rn_list, lrn_list) {
> > > > >  		if (rnet->lrn_net == net)
> > > > >  			return rnet;
> > > > >  	}
> > > > > @@ -243,7 +240,6 @@ static void lnet_shuffle_seed(void)
> > > > >  	__u32 lnd_type, seed[2];
> > > > >  	struct timespec64 ts;
> > > > >  	struct lnet_ni *ni;
> > > > > -	struct list_head *tmp;
> > > > >
> > > > >  	if (seeded)
> > > > >  		return;
> > > > > @@ -254,8 +250,7 @@ static void lnet_shuffle_seed(void)
> > > > >  	 * Nodes with small feet have little entropy
> > > > >  	 * the NID for this node gives the most entropy in the low bits
> > > > >  	 */
> > > > > -	list_for_each(tmp, &the_lnet.ln_nis) {
> > > > > -		ni = list_entry(tmp, struct lnet_ni, ni_list);
> > > > > +	list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
> > > > >  		lnd_type = LNET_NETTYP(LNET_NIDNET(ni->ni_nid));
> > > > >
> > > > >  		if (lnd_type != LOLND)
> > > > > --
> > > > > 2.7.4
> > > > >
> > > > > --
> > > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170916004148.GA25693%40Haneen.
> > > > > For more options, visit https://groups.google.com/d/optout.
> > > > >
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170916161048.GA6020%40Haneen.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170916162124.GA6808%40Haneen.
> For more options, visit https://groups.google.com/d/optout.
>

