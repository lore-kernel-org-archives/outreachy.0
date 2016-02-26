X-GM-THRID: 6255612600759877632
X-Received: by 10.98.68.194 with SMTP id m63mr2035964pfi.7.1456508584484;
        Fri, 26 Feb 2016 09:43:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.137 with SMTP id h9ls1309425qgh.22.gmail; Fri, 26 Feb
 2016 09:43:03 -0800 (PST)
X-Received: by 10.140.221.146 with SMTP id r140mr2056056qhb.20.1456508583656;
        Fri, 26 Feb 2016 09:43:03 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id iq8si258558igb.0.2016.02.26.09.43.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 09:43:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,498,1449529200"; 
   d="scan'208";a="166118529"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Feb 2016 18:43:01 +0100
Date: Fri, 26 Feb 2016 18:42:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Replace for
 statement with list_for_each
In-Reply-To: <1456498279-13486-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1602261842280.2517@hadrien>
References: <1456498279-13486-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 26 Feb 2016, Bhumika Goyal wrote:

> The macro list_for_each is used to iterate over a linked list
> and here the for statement is doing the same. Therefore replace the for
> statement with list_for_each macro.
> Done using coccinelle:
>
> @@
> struct list_head *pos;
> struct list_head *head;
> statement S;
> iterator name list_for_each;
> iterator name list_for_each_prev;
>
> @@
> (
> - for (pos = (head)->prev; pos != (head); pos = pos->prev)S
> + list_for_each_prev(pos,head)S
> |
> - for (pos = (head)->next; pos != (head); pos = pos->next)S
> + list_for_each(pos,head)S
> )
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> index a645a62..ab0002a 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> @@ -361,9 +361,8 @@ struct	wlan_network	*rtw_get_oldest_wlan_network(struct __queue *scanned_queue)
>
>  	phead = get_list_head(scanned_queue);
>
> -	for (plist = phead->next; plist != phead; plist = plist->next) {
> +	list_for_each(plist, phead) {
>  		pwlan = container_of(plist, struct wlan_network, list);

I think that this should be list_entry rather than container_of.

julia

> -
>  		if (!pwlan->fixed) {
>  			if (oldest == NULL || time_after(oldest->last_scanned, pwlan->last_scanned))
>  				oldest = pwlan;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456498279-13486-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

