X-GM-THRID: 6468793537189117952
X-Received: by 10.129.52.131 with SMTP id b125mr529056ywa.142.1506145774004;
        Fri, 22 Sep 2017 22:49:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.68 with SMTP id 65ls2539384ioi.0.gmail; Fri, 22 Sep 2017
 22:49:33 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA9X+JNjnakl9Ahm+W+0PYdkjEURuMi1LUx8M/4TZ8mUVPN4e6ms778lc8kGKDKivaM37+h
X-Received: by 10.36.172.101 with SMTP id m37mr446401iti.25.1506145773218;
        Fri, 22 Sep 2017 22:49:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506145773; cv=none;
        d=google.com; s=arc-20160816;
        b=LgMUGu4I5TOydP+aFtpWeJRXILYakRSQXP1bb+voGS1W0Lihwc3kaGdtXj6jamRfd4
         YrfwR/zFyxIRWgyOd+oHhsSSoFvdO9ASWxFYwytj9JjcEtQAa/Htl0HrSUnNAYJgSgqE
         l4miylRi1QvbxN7ECJBTYzyKk9aAoB+VLxGqnObkeZcvZZ3sSGUh1fg/Fwrw5BEPz0O/
         6trb2lqtN2f920uDynCXvVQnu2AEVWjWhF00FFXZtCKB4gf2sjz+E7peoFWnIKjDjBcf
         x4PgLC1jL9bw9BjTu1tg7HHmnvBVLh59xNjO2yMxh8QHbWAkivTrtw7/PTJqYGJkDfrS
         HfHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=AIqYF3WgJA86A5ZdhGYWJO1Fc5DBqqu2layOeVStAYc=;
        b=lY6unsOZnnEuAW4IaC+UjJzI4BMxa0DcNYCsAuQnRErzPxWijshimaSWRSCZRvHpN+
         JcAXtMO8dNwx6j12Hwn1v3UTlHoYgRD1R3x94BWtJcj6s0F8kv2IDCgJeD+va9+tJa9y
         jPVmmnjhkYQRDd/9ZIEF+HERgYbSlRW0D4fvQevBicxJT0NYXQ/U4NRvSgyW3RPmEi73
         IwITZaiWLjNdGwxAS9bwSn9ATksPi7ZHbRHkGfFkIFfIAF5bcQGMq3ZRRceZKCf7q4SH
         IBCE+E3zIvOhtEx4ipLg61/7nAMQ7VWqlXxhRAJdzQDG/xXjcdHYA+qKAY1NDDJBI8YC
         gSMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m32si194580iti.4.2017.09.22.22.49.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 22:49:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,429,1500933600"; 
   d="scan'208";a="238462375"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Sep 2017 07:49:31 +0200
Date: Sat, 23 Sep 2017 07:49:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lnet: replace
 list_for_each with list_for_each_entry
In-Reply-To: <20170923022239.GA10771@Haneen>
Message-ID: <alpine.DEB.2.20.1709230749160.2139@hadrien>
References: <20170923022239.GA10771@Haneen>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Sep 2017, Haneen Mohammed wrote:

> Replace use of the combination of list_for_each() and list_entry() with
> list_for_each_entry() to simplify the code and remove variables that are
> used only in list_for_each().
> Issue found and corrected using Coccinelle script:
>
> @r@
> expression head, member, e;
> type T1, T2, T3;
> iterator name list_for_each, list_for_each_entry;
> identifier pos, var;
> @@
>
> -T1 *pos;
> ...when!=pos
>
> -list_for_each(pos, head)
> +list_for_each_entry(var, head, member)
> {
> ...when!=pos
>    when!=T3 *var;
> -var = list_entry(pos, T2, member);
> ...when!=pos
> }
> ...when!=pos
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c | 14 +++-----------
>  1 file changed, 3 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> index fbbd8a5..d0ee58d 100644
> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> @@ -176,12 +176,9 @@ struct ksock_peer *
>  ksocknal_find_peer_locked(struct lnet_ni *ni, struct lnet_process_id id)
>  {
>  	struct list_head *peer_list = ksocknal_nid2peerlist(id.nid);
> -	struct list_head *tmp;
>  	struct ksock_peer *peer;
>
> -	list_for_each(tmp, peer_list) {
> -		peer = list_entry(tmp, struct ksock_peer, ksnp_list);
> -
> +	list_for_each_entry(peer, peer_list, ksnp_list) {
>  		LASSERT(!peer->ksnp_closing);
>
>  		if (peer->ksnp_ni != ni)
> @@ -453,7 +450,6 @@ int
>  ksocknal_add_peer(struct lnet_ni *ni, struct lnet_process_id id, __u32 ipaddr,
>  		  int port)
>  {
> -	struct list_head *tmp;
>  	struct ksock_peer *peer;
>  	struct ksock_peer *peer2;
>  	struct ksock_route *route;
> @@ -491,9 +487,7 @@ ksocknal_add_peer(struct lnet_ni *ni, struct lnet_process_id id, __u32 ipaddr,
>  	}
>
>  	route2 = NULL;
> -	list_for_each(tmp, &peer->ksnp_routes) {
> -		route2 = list_entry(tmp, struct ksock_route, ksnr_list);
> -
> +	list_for_each_entry(route2, &peer->ksnp_routes, ksnr_list) {
>  		if (route2->ksnr_ipaddr == ipaddr)
>  			break;
>
> @@ -1854,12 +1848,10 @@ ksocknal_query(struct lnet_ni *ni, lnet_nid_t nid, unsigned long *when)
>
>  	peer = ksocknal_find_peer_locked(ni, id);
>  	if (peer) {
> -		struct list_head *tmp;
>  		struct ksock_conn *conn;
>  		int bufnob;
>
> -		list_for_each(tmp, &peer->ksnp_conns) {
> -			conn = list_entry(tmp, struct ksock_conn, ksnc_list);
> +		list_for_each_entry(conn, &peer->ksnp_conns, ksnc_list) {
>  			bufnob = conn->ksnc_sock->sk->sk_wmem_queued;
>
>  			if (bufnob < conn->ksnc_tx_bufnob) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170923022239.GA10771%40Haneen.
> For more options, visit https://groups.google.com/d/optout.
>

