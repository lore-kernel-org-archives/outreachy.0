X-GM-THRID: 6255537432818614272
X-Received: by 10.25.17.25 with SMTP id g25mr100143lfi.8.1456481193543;
        Fri, 26 Feb 2016 02:06:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.228.70 with SMTP id b67ls318977wmh.42.gmail; Fri, 26 Feb
 2016 02:06:31 -0800 (PST)
X-Received: by 10.28.63.19 with SMTP id m19mr230394wma.0.1456481191618;
        Fri, 26 Feb 2016 02:06:31 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s141si127041wmd.1.2016.02.26.02.06.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 02:06:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,498,1449529200"; 
   d="scan'208";a="166062539"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Feb 2016 11:06:31 +0100
Date: Fri, 26 Feb 2016 11:06:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: lnet: Use
 list_for_each_entry
In-Reply-To: <20160226100041.GA11042@Karyakshetra>
Message-ID: <alpine.DEB.2.10.1602261101330.2614@hadrien>
References: <20160226100041.GA11042@Karyakshetra>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII


On Fri, 26 Feb 2016, Bhaktipriya Shridhar wrote:

> In general, doubly linked lists are iterated  using list_empty
> and list_entry functions.

It's a little bit fussy, but this is not true.  I had neer seen this
pattern before you found it.  So I don't think that it is the general
case.  Currently there are over 2000 uses of list_for_each_entry.

Also the subject and this part of the commit message mention
list_for_each_entry, but actually you are using list_for_each_entry_safe.
And list_for_each_entry_safe is the only thing that makes sense when there
is a list_empty test on the loop, because for the list to be empty, you
have to remove things from it, and if you remove things from it, you need
to use list_for_each_entry_safe.

Note that when you reach the "end" of a doubly linked list, you actually
reach the beginning, not a NULL element like for a singly linked list, so
reaching the end of the list does not make list_empty true.

julia

> But it can be better written using
> list_for_each_entry macro.
>
> This patch replaces the while loop containing list_empty and list_entry
> with list_for_each_entry and list_for_each_entry_safe(if list_del is
> used int the loop).
>
> This was done with Coccinelle.
>
> @@
> expression E1;
> identifier I1, I2;
> type T;
> iterator name list_for_each_entry_safe;
> @@
>
> T *I1;
> + T *temp;
> ...
> - while (list_empty(&E1) == 0)
> + list_for_each_entry_safe (I1, temp, &E1, I2)
> {
> ...when != T *I1;
> - I1 = list_entry(E1.next, T, I2);
> ...
> }
>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	-Fixed typo "lusture" to "lustre" in the subject.
>
>  drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> index efb7169..8c1d50a7 100644
> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> @@ -2354,13 +2354,12 @@ static inline void
>  ksocknal_flush_stale_txs(ksock_peer_t *peer)
>  {
>  	ksock_tx_t *tx;
> +	ksock_tx_t *temp;
>  	LIST_HEAD(stale_txs);
>
>  	write_lock_bh(&ksocknal_data.ksnd_global_lock);
>
> -	while (!list_empty(&peer->ksnp_tx_queue)) {
> -		tx = list_entry(peer->ksnp_tx_queue.next, ksock_tx_t, tx_list);
> -
> +	list_for_each_entry_safe(tx, temp, &peer->ksnp_tx_queue, tx_list) {
>  		if (!cfs_time_aftereq(cfs_time_current(),
>  				      tx->tx_deadline))
>  			break;
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160226100041.GA11042%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
>

