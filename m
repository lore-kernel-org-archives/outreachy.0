X-GM-THRID: 6252303578088603648
X-Received: by 10.25.23.105 with SMTP id n102mr431904lfi.9.1455728220461;
        Wed, 17 Feb 2016 08:57:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.24.30 with SMTP id o30ls887214lfi.94.gmail; Wed, 17 Feb
 2016 08:56:59 -0800 (PST)
X-Received: by 10.112.125.99 with SMTP id mp3mr426491lbb.3.1455728219709;
        Wed, 17 Feb 2016 08:56:59 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v197si913334wmv.1.2016.02.17.08.56.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 08:56:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,461,1449529200"; 
   d="scan'208";a="203532193"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2016 17:56:58 +0100
Date: Wed, 17 Feb 2016 11:56:56 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: wilc1000: Fix line over 80 characters
In-Reply-To: <8293bc46ee3242fc3437bce346736d1febe9c40a.1455727711.git.anchalj109@gmail.com>
Message-ID: <alpine.DEB.2.10.1602171153341.4547@hadrien>
References: <cover.1455727711.git.anchalj109@gmail.com> <8293bc46ee3242fc3437bce346736d1febe9c40a.1455727711.git.anchalj109@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 17 Feb 2016, Anchal Jain wrote:

> Add local variables so that they do not exceed 80

What does "they" refer to?

> characters. Problem found using checkpatch.
>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wlan.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> index a611cba..a272199 100644
> --- a/drivers/staging/wilc1000/wilc_wlan.c
> +++ b/drivers/staging/wilc1000/wilc_wlan.c
> @@ -285,6 +285,7 @@ static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
>  	struct wilc *wilc;
>  	u32 i = 0;
>  	u32 dropped = 0;
> +	u32 session = pending_acks_info[MAX_PENDING_ACKS].session_index;

This is not correct.  You need the value of the session_index field on
each iteration.  You can't initialize the variable here.

>  	vif = netdev_priv(dev);
>  	wilc = vif->wilc;
> @@ -294,7 +295,8 @@ static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
>  		if (i >= MAX_PENDING_ACKS ||
>  		    pending_acks_info[i].session_index >= 2 * MAX_TCP_SESSION)
>  			break;
> -		if (pending_acks_info[i].ack_num < ack_session_info[pending_acks_info[i].session_index].bigger_ack_num) {
> +		if (pending_acks_info[i].ack_num <
> +			Ack_session_info[session].bigger_ack_num) {

The name of the array is ack_session_info, not Ack_session_info.  The
compiler should have given an error here.

>  			struct txq_entry_t *tqe;
>
>  			tqe = pending_acks_info[i].txqe;
> @@ -608,6 +610,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
>  	u32 vmm_table[WILC_VMM_TBL_SIZE];
>  	struct wilc_vif *vif;
>  	struct wilc *wilc;
> +	struct txq_entry_t index = tqe->tcp_pending_ack_idx;

The changes are complicated enough that this should be in a separate
patch.

julia

>  	vif = netdev_priv(dev);
>  	wilc = vif->wilc;
> @@ -789,9 +792,9 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
>  				if (tqe->tx_complete_func)
>  					tqe->tx_complete_func(tqe->priv,
>  							      tqe->status);
> -				if (tqe->tcp_pending_ack_idx != NOT_TCP_ACK &&
> -				    tqe->tcp_pending_ack_idx < MAX_PENDING_ACKS)
> -					pending_acks_info[tqe->tcp_pending_ack_idx].txqe = NULL;
> +				if (index != NOT_TCP_ACK &&
> +				    index < MAX_PENDING_ACKS)
> +					pending_acks_info[index].txqe = NULL;
>  				kfree(tqe);
>  			} else {
>  				break;
> --
> 1.9.1
>
>

