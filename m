X-GM-THRID: 6202253196489916416
X-Received: by 10.112.202.165 with SMTP id kj5mr5602851lbc.5.1444077177733;
        Mon, 05 Oct 2015 13:32:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.11.238 with SMTP id t14ls937760wib.40.canary; Mon, 05 Oct
 2015 13:32:57 -0700 (PDT)
X-Received: by 10.180.188.211 with SMTP id gc19mr2820374wic.6.1444077177311;
        Mon, 05 Oct 2015 13:32:57 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id hs5si438267wib.1.2015.10.05.13.32.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 13:32:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,640,1437429600"; 
   d="scan'208";a="181210792"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 05 Oct 2015 22:32:55 +0200
Date: Mon, 5 Oct 2015 21:32:53 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lnet: klnds: socklnd:
 removed trailing whitespace
In-Reply-To: <1444074576-12447-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1510052132150.2608@hadrien>
References: <1444074576-12447-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-80374463-1444077177=:2608"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-80374463-1444077177=:2608
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Mon, 5 Oct 2015, Hatice ERTÜRK wrote:

> Removed all trailing whitespace in
> "staging/lustre/lnet/klnds/socklnd/socklnd.c"

You don't have to redo it, but it's not necessary to put the whole name of
the file.  One can see it just below in the diffstat.

julia

> Signed-off-by: Hatice ERTÜRK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> index d5268e9..2a06f53 100644
> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> @@ -228,7 +228,7 @@ ksocknal_unlink_peer_locked(ksock_peer_t *peer)
>  		ip = peer->ksnp_passive_ips[i];
>
>  		iface = ksocknal_ip2iface(peer->ksnp_ni, ip);
> -		/*
> +		/*
>  		 * All IPs in peer->ksnp_passive_ips[] come from the
>  		 * interface list, therefore the call must succeed.
>  		 */
> @@ -362,7 +362,7 @@ ksocknal_associate_route_conn_locked(ksock_route_t *route, ksock_conn_t *conn)
>  	route->ksnr_connected |= (1<<type);
>  	route->ksnr_conn_count++;
>
> -	/*
> +	/*
>  	 * Successful connection => further attempts can
>  	 * proceed immediately
>  	 */
> @@ -444,7 +444,7 @@ ksocknal_del_route_locked(ksock_route_t *route)
>
>  	if (list_empty(&peer->ksnp_routes) &&
>  	    list_empty(&peer->ksnp_conns)) {
> -		/*
> +		/*
>  		 * I've just removed the last route to a peer with no active
>  		 * connections
>  		 */
> @@ -547,7 +547,7 @@ ksocknal_del_peer_locked(ksock_peer_t *peer, __u32 ip)
>  	}
>
>  	if (nshared == 0) {
> -		/*
> +		/*
>  		 * remove everything else if there are no explicit entries
>  		 * left
>  		 */
> @@ -702,7 +702,7 @@ ksocknal_local_ipvec(lnet_ni_t *ni, __u32 *ipaddrs)
>  	nip = net->ksnn_ninterfaces;
>  	LASSERT(nip <= LNET_MAX_INTERFACES);
>
> -	/*
> +	/*
>  	 * Only offer interfaces for additional connections if I have
>  	 * more than one.
>  	 */
> @@ -769,7 +769,7 @@ ksocknal_select_ips(ksock_peer_t *peer, __u32 *peerips, int n_peerips)
>  	int best_netmatch;
>  	int best_npeers;
>
> -	/*
> +	/*
>  	 * CAVEAT EMPTOR: We do all our interface matching with an
>  	 * exclusive hold of global lock at IRQ priority.  We're only
>  	 * expecting to be dealing with small numbers of interfaces, so the
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1444074576-12447-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-80374463-1444077177=:2608--

