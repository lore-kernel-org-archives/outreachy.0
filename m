X-GM-THRID: 6254007511915954176
X-Received: by 10.112.158.138 with SMTP id wu10mr207805lbb.11.1456141060604;
        Mon, 22 Feb 2016 03:37:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.215 with SMTP id 84ls262876lfv.57.gmail; Mon, 22 Feb
 2016 03:37:39 -0800 (PST)
X-Received: by 10.112.201.104 with SMTP id jz8mr3367052lbc.13.1456141059834;
        Mon, 22 Feb 2016 03:37:39 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s141si1176779wmd.1.2016.02.22.03.37.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 03:37:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,484,1449529200"; 
   d="scan'208";a="165553973"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2016 12:37:38 +0100
Date: Mon, 22 Feb 2016 06:37:36 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lusture: lnet: Use
 list_for_each_entry
In-Reply-To: <alpine.DEB.2.10.1602220534590.2685@hadrien>
Message-ID: <alpine.DEB.2.10.1602220636240.2655@hadrien>
References: <20160222070345.GA10232@Karyakshetra> <alpine.DEB.2.10.1602220534590.2685@hadrien>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 22 Feb 2016, Julia Lawall wrote:

>
>
> On Mon, 22 Feb 2016, Bhaktipriya Shridhar wrote:
>
> > In general, doubly linked lists are iterated  using list_empty
> > and list_entry functions. But it can be better written using
> > list_for_each_entry macro.
> >
> > This patch replaces the while loop containing list_empty and list_entry
> > with list_for_each_entry and list_for_each_entry_safe(if list_del is
> > used int the loop).
> >
> > This was done with Coccinelle.
> >
> > @@
> > expression E1;
> > identifier I1, I2;
> > type T;
> > iterator name list_for_each_entry;
> > @@
> >
> > - while (list_empty(&E1) == 0)
> > + list_for_each_entry (I1, &E1, I2)
> > {
> > 	...when != T *I1;
> > -	I1 = list_entry(E1.next, T, I2);
> > 	...when != list_del(...);
> > 	when != list_del_init(...);

Actually, I think that this rule makes no sense.  If there is no delete in
the loop, the list will never become empty.  Empty doesn't mean being at
the end of the list.  It means that there is really nothing in the list.

julia

>
> No need to change here, but it is nicer to line up the when's.
>
> > }
> >
> > @@
> > expression E1;
> > identifier I1, I2;
> > type T;
> > iterator name list_for_each_entry_safe;
> > @@
> > T *I1;
> > +  T *tmp;
> > ...
> > - while (list_empty(&E1) == 0)
> > + list_for_each_entry_safe (I1, tmp, &E1, I2)
> > {
> > 	...when != T *I1;
> > 	-	I1 = list_entry(E1.next, T, I2);
>
> The - line is too indented.
>
> > 	...
> > }
>
> Good job on the semantic patch.  Another possibility is converting
> list_for_each to list_for_each_entry.  Someone did quite a few of these
> recently, but there may still be some opportunities.  If you do find some
> opportunities, you may want to run make coccicheck on the result, because
> Coccinelle found a bunch of problems in the change that was done.  I think
> that the issue is that with list_for_each_entry, the variable containing
> the entry is invalid after the normal end of the loop (ie without break),
> while when one implements the same thing by hand, the variable would
> naturally end up pointing to the last element.
>
> julia
>
> > Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> > ---
> >  drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> > index efb7169..976fd78 100644
> > --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> > +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> > @@ -2354,13 +2354,12 @@ static inline void
> >  ksocknal_flush_stale_txs(ksock_peer_t *peer)
> >  {
> >  	ksock_tx_t *tx;
> > +	ksock_tx_t *tmp;
> >  	LIST_HEAD(stale_txs);
> >
> >  	write_lock_bh(&ksocknal_data.ksnd_global_lock);
> >
> > -	while (!list_empty(&peer->ksnp_tx_queue)) {
> > -		tx = list_entry(peer->ksnp_tx_queue.next, ksock_tx_t, tx_list);
> > -
> > +	list_for_each_entry_safe(tx, tmp, &peer->ksnp_tx_queue, tx_list) {
> >  		if (!cfs_time_aftereq(cfs_time_current(),
> >  				      tx->tx_deadline))
> >  			break;
> > --
> > 2.1.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160222070345.GA10232%40Karyakshetra.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

