X-GM-THRID: 6466169958600540160
X-Received: by 10.28.54.30 with SMTP id d30mr580001wma.6.1505578467953;
        Sat, 16 Sep 2017 09:14:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.17 with SMTP id s17ls642461ljd.53.gmail; Sat, 16 Sep
 2017 09:14:26 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDsOqj7lBTub35F7TtxIOExdWttd7HixWjKiMQ7e+EMOZJlnVpbZRTdyRdhHRf8a7wRPdIC
X-Received: by 10.25.115.131 with SMTP id h3mr454127lfk.44.1505578466302;
        Sat, 16 Sep 2017 09:14:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505578466; cv=none;
        d=google.com; s=arc-20160816;
        b=dpnFQfPi7PiExaKiPtJGdx5L0FJxRPDhLQ4Qj6az5ZgUN8esiC1QInFOT6hzhbuY78
         E3gniknz9IdHBz2RGQZhozD+VqnxMmqc6yjXz57sYY5ye3Xmyv7hkdJfFRqn1TRMRSdj
         X2CxouEx6fU8PLv4xIxGIPw/kMyjRpJfkk/JzHXq505DQfQeQna+YXqbu2mtv0f/XvVm
         ZULooFYem0RhMg4TN+y2LxR7mD6TuMEThkyOFboIUB6BBpd8+VbZWZHeUDcrUuelCXxP
         8sgUCDRaXyzaJSWduTgZmkz+NUgphcfaYrA/OSyySLQDGWFowXSJeK+hf5Wh15CDT+n/
         mQQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=tLfOBRW6K9ioAp7GVxb5WG2GpCi+zLeVOARpt8uEj4c=;
        b=DX/50epLhyOMikpHrnhRmul1QM+1ZjepycoIfHeBjyOXhjAEeVP5deQYBGNm6UTuB3
         L7tEEj04yK5YxGmm/DNzz7zFeRHo8xE4CS9GlLNlLg1ayupImpK7zqHFsL2Zqo2g9m4R
         7jfLZH6mmyvGI6+8Nmr+MWvwt/UbLzeCESfGmCCnIfyK3cU6wxX4Q+RY13TQ02MfDRTN
         wsbkDyPYk7iIWKI81HMihOk60RHE4ghP4CkKh2gnQbWAS+R/DJRf7thHwGlvU/GCBXWX
         Qkj7dP6AD25DsSuYFL7E6t0NadWuf3G12TYVKx32Gd6eGoMsK7LpjxCrJzh4F/VWzVK2
         jiXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b203si158010wmh.4.2017.09.16.09.14.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 09:14:26 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,403,1500933600"; 
   d="scan'208";a="237731913"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 18:14:25 +0200
Date: Sat, 16 Sep 2017 18:14:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lnet: Replace
 list_for_each with list_for_each_entry
In-Reply-To: <20170916161048.GA6020@Haneen>
Message-ID: <alpine.DEB.2.20.1709161814050.1992@hadrien>
References: <20170916004148.GA25693@Haneen> <alpine.DEB.2.20.1709161320250.2943@hadrien> <20170916161048.GA6020@Haneen>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Haneen Mohammed wrote:

> On Sat, Sep 16, 2017 at 01:23:28PM +0200, Julia Lawall wrote:
> >
> >
> > On Fri, 15 Sep 2017, Haneen Mohammed wrote:
> >
> > > Replace use of the combination of list_for_each and list_entry
> > > with list_for_each_entry to simplify the code and remove variables
> > > that are used only in list_for_each.
> > > Issue found and corrected using Coccinelle script:
> > >
> > > @r@
> > > expression head, member, e;
> > > type T1, T2, T3;
> > > iterator name list_for_each, list_for_each_entry;
> > > identifier pos, var;
> > > @@
> > >
> > > -T1 *pos;
> > > ...when!=pos=e;
> > >
> > > -list_for_each(pos, head)
> > > +list_for_each_entry(var, head, member)
> > > {
> > > ...when!=pos=e;
> > >    when!=T3 *var;
> > > -var = list_entry(pos, T2, member);
> > > ...when!=pos=e;
> > > }
> > > ...when!=pos=e;
> >
> > Actually, one could consider that there should be when != pos, not when !=
> > pos=e, because you need that there are no references at all to pos to be
> > able to delete it.  But it's true that if pos is not initialized then
> > there should be no other kinds of references either.  The other
> > possibility for initialization would be eg
> >
> > f(...,&pos,...)
> >
> > You could be suspicious of &pos in general.  But anyway there is no &pos
> > in this code.
> >
> > julia
> >
>
> I have tried "when != pos;" first and switched to "when !=pos=e;"
> becuase I have found cases where pos was still used. I only realised I
> should have used "when != pos" without the semicolon after I've
> submitted the patch.
>
> There is still case where even with "when!=pos" the script fails to match pos
> within an if statement. Is there away around that?

Could you send an example?

julia


>
> > > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> >
> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> >
> > > ---
> > >  drivers/staging/lustre/lnet/lnet/router.c | 9 ++-------
> > >  1 file changed, 2 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
> > > index 3df101b..b8eba33 100644
> > > --- a/drivers/staging/lustre/lnet/lnet/router.c
> > > +++ b/drivers/staging/lustre/lnet/lnet/router.c
> > > @@ -222,15 +222,12 @@ struct lnet_remotenet *
> > >  lnet_find_net_locked(__u32 net)
> > >  {
> > >  	struct lnet_remotenet *rnet;
> > > -	struct list_head *tmp;
> > >  	struct list_head *rn_list;
> > >
> > >  	LASSERT(!the_lnet.ln_shutdown);
> > >
> > >  	rn_list = lnet_net2rnethash(net);
> > > -	list_for_each(tmp, rn_list) {
> > > -		rnet = list_entry(tmp, struct lnet_remotenet, lrn_list);
> > > -
> > > +	list_for_each_entry(rnet, rn_list, lrn_list) {
> > >  		if (rnet->lrn_net == net)
> > >  			return rnet;
> > >  	}
> > > @@ -243,7 +240,6 @@ static void lnet_shuffle_seed(void)
> > >  	__u32 lnd_type, seed[2];
> > >  	struct timespec64 ts;
> > >  	struct lnet_ni *ni;
> > > -	struct list_head *tmp;
> > >
> > >  	if (seeded)
> > >  		return;
> > > @@ -254,8 +250,7 @@ static void lnet_shuffle_seed(void)
> > >  	 * Nodes with small feet have little entropy
> > >  	 * the NID for this node gives the most entropy in the low bits
> > >  	 */
> > > -	list_for_each(tmp, &the_lnet.ln_nis) {
> > > -		ni = list_entry(tmp, struct lnet_ni, ni_list);
> > > +	list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
> > >  		lnd_type = LNET_NETTYP(LNET_NIDNET(ni->ni_nid));
> > >
> > >  		if (lnd_type != LOLND)
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170916004148.GA25693%40Haneen.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170916161048.GA6020%40Haneen.
> For more options, visit https://groups.google.com/d/optout.
>

