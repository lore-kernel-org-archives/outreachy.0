X-GM-THRID: 6255207810462646272
X-Received: by 10.112.173.6 with SMTP id bg6mr2915565lbc.0.1456404465653;
        Thu, 25 Feb 2016 04:47:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.86.135 with SMTP id k129ls130706wmb.26.canary; Thu, 25 Feb
 2016 04:47:45 -0800 (PST)
X-Received: by 10.194.62.69 with SMTP id w5mr5547785wjr.5.1456404465185;
        Thu, 25 Feb 2016 04:47:45 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c143si113206wmd.1.2016.02.25.04.47.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 04:47:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,498,1449529200"; 
   d="scan'208";a="165955112"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2016 13:47:43 +0100
Date: Thu, 25 Feb 2016 13:47:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core: Remove
 casts of pointer to same type
In-Reply-To: <20160225124135.GA7636@Karyakshetra>
Message-ID: <alpine.DEB.2.10.1602251347320.2708@hadrien>
References: <20160225124135.GA7636@Karyakshetra>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 25 Feb 2016, Bhaktipriya Shridhar wrote:

> Casting a pointer to a pointer of the same type is unnecessary, so remove
> these unnecessary casts.
>
> This was done with Coccinelle:
>
> @@
> type T;
> T *ptr;
> @@
> - (T *)ptr
> + ptr

Good idea :)

julia

>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_recv.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
> index 40b7a30..d3c9ded 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> @@ -141,7 +141,7 @@ struct recv_frame *_rtw_alloc_recvframe(struct __queue *pfree_recv_queue)
>  		}
>  	}
>
> -	return (struct recv_frame *)hdr;
> +	return hdr;
>  }
>
>  struct recv_frame *rtw_alloc_recvframe(struct __queue *pfree_recv_queue)
> @@ -240,7 +240,7 @@ void rtw_free_recvframe_queue(struct __queue *pframequeue,  struct __queue *pfre
>
>  		plist = plist->next;
>
> -		rtw_free_recvframe((struct recv_frame *)hdr, pfree_recv_queue);
> +		rtw_free_recvframe(hdr, pfree_recv_queue);
>  	}
>
>  	spin_unlock(&pframequeue->lock);
> @@ -1417,7 +1417,7 @@ static struct recv_frame *recvframe_defrag(struct adapter *adapter,
>  	phead = get_list_head(defrag_q);
>  	plist = phead->next;
>  	pfhdr = container_of(plist, struct recv_frame, list);
> -	prframe = (struct recv_frame *)pfhdr;
> +	prframe = pfhdr;
>  	list_del_init(&(prframe->list));
>
>  	if (curfragnum != pfhdr->attrib.frag_num) {
> @@ -1437,7 +1437,7 @@ static struct recv_frame *recvframe_defrag(struct adapter *adapter,
>
>  	while (phead != plist) {
>  		pnfhdr = container_of(plist, struct recv_frame, list);
> -		pnextrframe = (struct recv_frame *)pnfhdr;
> +		pnextrframe = pnfhdr;
>
>  		/* check the fragment sequence  (2nd ~n fragment frame) */
>
> @@ -1780,7 +1780,7 @@ static int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reor
>  	/*  Check if there is any packet need indicate. */
>  	while (!list_empty(phead)) {
>  		prhdr = container_of(plist, struct recv_frame, list);
> -		prframe = (struct recv_frame *)prhdr;
> +		prframe = prhdr;
>  		pattrib = &prframe->attrib;
>
>  		if (!SN_LESS(preorder_ctrl->indicate_seq, pattrib->seq_num)) {
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160225124135.GA7636%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
>

