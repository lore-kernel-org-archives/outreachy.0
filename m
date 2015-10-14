X-GM-THRID: 6205292199606747136
X-Received: by 10.194.109.233 with SMTP id hv9mr281422wjb.1.1444801899907;
        Tue, 13 Oct 2015 22:51:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.81.148 with SMTP id f142ls650853lfb.68.gmail; Tue, 13 Oct
 2015 22:51:39 -0700 (PDT)
X-Received: by 10.112.142.195 with SMTP id ry3mr292048lbb.22.1444801899339;
        Tue, 13 Oct 2015 22:51:39 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c7si846405wiy.3.2015.10.13.22.51.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 22:51:39 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,681,1437429600"; 
   d="scan'208";a="182677531"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Oct 2015 07:51:38 +0200
Date: Wed, 14 Oct 2015 07:51:38 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: rtw_mlme_ext:
 Remove extra test expression
In-Reply-To: <20151014002245.GA21441@ubuntu>
Message-ID: <alpine.DEB.2.02.1510140749160.2038@localhost6.localdomain6>
References: <20151014002245.GA21441@ubuntu>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:

> Logical and-ing of a struct and its member should be replaced by the
> member only.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_mlme_ext.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
> index fca22ba..d28f29a 100644
> --- a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
> @@ -1715,7 +1715,7 @@ OnAssocReq23a(struct rtw_adapter *padapter, struct recv_frame *precv_frame)
>  	spin_unlock_bh(&pstapriv->asoc_list_lock);
>  
>  	/*  now the station is qualified to join our BSS... */
> -	if (pstat && pstat->state & WIFI_FW_ASSOC_SUCCESS &&
> +	if (pstat->state & WIFI_FW_ASSOC_SUCCESS &&

I don't understand the reasoning here.  Are you sure that pstat is not 
NULL?  If you are the transformation is OK, but the commit message should 
be completely different.  If you are not sure that it is not NULL, then 
the code has to be in the original way.

Furthermore, note that pstat is not being &&d with pstat->state.  It is 
being &&d with pstat->state & WIFI_FW_ASSOC_SUCCESS.

julia

>  	    status == WLAN_STATUS_SUCCESS) {
>  		/* 1 bss_cap_update & sta_info_update23a */
>  		bss_cap_update_on_sta_join23a(padapter, pstat);
> -- 
> 2.1.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014002245.GA21441%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
> 

