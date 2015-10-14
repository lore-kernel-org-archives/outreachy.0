X-GM-THRID: 6205438272605257728
X-Received: by 10.112.145.3 with SMTP id sq3mr553145lbb.7.1444816714995;
        Wed, 14 Oct 2015 02:58:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.103 with SMTP id jv7ls96363wid.16.gmail; Wed, 14 Oct
 2015 02:58:34 -0700 (PDT)
X-Received: by 10.180.9.104 with SMTP id y8mr5303790wia.7.1444816714475;
        Wed, 14 Oct 2015 02:58:34 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c1si277433wiv.3.2015.10.14.02.58.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 02:58:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,681,1437429600"; 
   d="scan'208";a="182729207"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Oct 2015 11:58:34 +0200
Date: Wed, 14 Oct 2015 11:58:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723au: rtw_mlme_ext:
 Remove irrelevant test expression
In-Reply-To: <20151014094929.GA3545@ubuntu>
Message-ID: <alpine.DEB.2.10.1510141157410.2421@hadrien>
References: <20151014094929.GA3545@ubuntu>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:

> Logical and-ing of a struct and its member should be replaced by the
> member only as the struct has already been tested before for true value.

I think it woud be better to say "non-null".  Even though it is true that
&& is a boolean operator, that should take true and false as arguments,
that's not really what is being tested for here.

julia

> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
> Changes in v2:
> 	-Fix mistakes in commit message.
>
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014094929.GA3545%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

