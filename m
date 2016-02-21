X-GM-THRID: 6253704501095563264
X-Received: by 10.112.235.137 with SMTP id um9mr2673604lbc.8.1456058293495;
        Sun, 21 Feb 2016 04:38:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.54.30 with SMTP id d30ls231714wma.10.canary; Sun, 21 Feb
 2016 04:38:12 -0800 (PST)
X-Received: by 10.28.47.211 with SMTP id v202mr563926wmv.3.1456058292944;
        Sun, 21 Feb 2016 04:38:12 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w128si738861wmd.0.2016.02.21.04.38.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 04:38:12 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,480,1449529200"; 
   d="scan'208";a="203976650"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2016 13:38:11 +0100
Date: Sun, 21 Feb 2016 07:38:09 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Prefer
 kmalloc_array over kmalloc
In-Reply-To: <20160221112752.GA28003@Karyakshetra>
Message-ID: <alpine.DEB.2.10.1602210737510.2782@hadrien>
References: <20160221112752.GA28003@Karyakshetra>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 21 Feb 2016, Bhaktipriya Shridhar wrote:

> Use kmalloc_array instead of kmalloc for arrays to prevent integer
> overflows.
> This was done using Coccinelle:
> @@
> expression e1, e2;
> constant C;
> type t;
> @@
> (
> - kmalloc(sizeof(e1)*e2, C)
> + kmalloc_array(e2, sizeof(e1), C)
> |
> - kmalloc(e2*sizeof(e1), C)
> + kmalloc_array(e2, sizeof(e1), C)
> |
> - kmalloc(e2*sizeof(t), C)
> + kmalloc_array(e2, sizeof(t), C)
> |
> - kmalloc(sizeof(t)*e2, C)
> + kmalloc_array(e2, sizeof(t), C)
> )
>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 9dfde07..b45c12f 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -601,8 +601,9 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  	bool			bMatchWinStart = false, bPktInBuf = false;
>  	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is %d,pTS->RxIndicateSeq is %d, WinSize is %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);
>
> -	prxbIndicateArray = kmalloc(sizeof(struct ieee80211_rxb *) *
> -			REORDER_WIN_SIZE, GFP_KERNEL);
> +	prxbIndicateArray = kmalloc_array(REORDER_WIN_SIZE,
> +					  sizeof(struct ieee80211_rxb *),
> +					  GFP_KERNEL);

This is again a small value.

julia

>  	if (!prxbIndicateArray)
>  		return;
>
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160221112752.GA28003%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
>

