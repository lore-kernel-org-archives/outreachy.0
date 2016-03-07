X-GM-THRID: 6258963918666858496
X-Received: by 10.25.153.196 with SMTP id b187mr2276242lfe.3.1457309187868;
        Sun, 06 Mar 2016 16:06:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.199 with SMTP id 68ls234040lfw.27.gmail; Sun, 06 Mar
 2016 16:06:27 -0800 (PST)
X-Received: by 10.112.130.42 with SMTP id ob10mr1154771lbb.2.1457309187204;
        Sun, 06 Mar 2016 16:06:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 71si457516wmp.0.2016.03.06.16.06.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 16:06:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,548,1449529200"; 
   d="scan'208";a="206250700"
Received: from 155.212.120.153.west.global.crust-r.net (HELO hadrien.local) ([153.120.212.155])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 07 Mar 2016 01:06:25 +0100
Date: Mon, 7 Mar 2016 09:06:21 +0900 (JST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192e: Use list_first_entry
 instead of list_entry
In-Reply-To: <1457278585-16295-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1603070906040.2561@hadrien>
References: <1457278585-16295-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 6 Mar 2016, Bhumika Goyal wrote:

> This patch replaces list_entry with list_first_entry as it makes the
> code more clear.
> Done using coccinelle:
>
> @@
> expression e;
> @@
> (
> - list_entry(e->next,
> + list_first_entry(e,
>   ...)
> |
> - list_entry(e->prev,
> + list_last_entry(e,
>   ...)
> )
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl819x_TSProc.c | 2 +-
>  drivers/staging/rtl8192e/rtllib_rx.c      | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> index 2c8a526..22ee936 100644
> --- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> @@ -371,7 +371,7 @@ bool GetTs(struct rtllib_device *ieee, struct ts_common_info **ppTS,
>  				((TxRxSelect == TX_DIR) ? DIR_UP : DIR_DOWN);
>
>  	if (!list_empty(pUnusedList)) {
> -		(*ppTS) = list_entry(pUnusedList->next,
> +		(*ppTS) = list_first_entry(pUnusedList,
>  			  struct ts_common_info, List);
>  		list_del_init(&(*ppTS)->List);
>  		if (TxRxSelect == TX_DIR) {
> diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
> index af64bd3..5893005 100644
> --- a/drivers/staging/rtl8192e/rtllib_rx.c
> +++ b/drivers/staging/rtl8192e/rtllib_rx.c
> @@ -461,11 +461,11 @@ static bool AddReorderEntry(struct rx_ts_record *pTS,
>
>  	while (pList->next != &pTS->RxPendingPktList) {

Is this a list_for_each in disguise?

julia

>  		if (SN_LESS(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)
> -		    list_entry(pList->next, struct rx_reorder_entry,
> +		    list_first_entry(pList, struct rx_reorder_entry,
>  		    List))->SeqNum))
>  			pList = pList->next;
>  		else if (SN_EQUAL(pReorderEntry->SeqNum,
> -			((struct rx_reorder_entry *)list_entry(pList->next,
> +			((struct rx_reorder_entry *)list_first_entry(pList,
>  			struct rx_reorder_entry, List))->SeqNum))
>  				return false;
>  		else
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1457278585-16295-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

