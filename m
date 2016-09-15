X-GM-THRID: 6330498915146661888
X-Received: by 10.28.206.131 with SMTP id e125mr400033wmg.5.1473934535768;
        Thu, 15 Sep 2016 03:15:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.181.209 with SMTP id e200ls235504wmf.19.canary; Thu, 15 Sep
 2016 03:15:23 -0700 (PDT)
X-Received: by 10.194.104.230 with SMTP id gh6mr1365077wjb.7.1473934523264;
        Thu, 15 Sep 2016 03:15:23 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 185si159546wmr.2.2016.09.15.03.15.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 03:15:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,338,1470693600"; 
   d="scan'208";a="236938669"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 12:15:22 +0200
Date: Thu, 15 Sep 2016 12:15:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com, 
    ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Use sizeof type
 *pointer instead of sizeof type
In-Reply-To: <20160915100834.GA5703@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609151214370.3045@hadrien>
References: <20160915100834.GA5703@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Sep 2016, sayli karnik wrote:

> This patch replaces sizeof type with sizeof type pointer as suggested by
> checkpatch.pl.

When you do this, the commit message should make apparent that you have
checked that the sizes are the same.

julia

>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 78f524f..d0cb568 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -3329,7 +3329,7 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
>
>  	init_completion(&hif_wait_response);
>
> -	hif_drv  = kzalloc(sizeof(struct host_if_drv), GFP_KERNEL);
> +	hif_drv  = kzalloc(sizeof(*hif_drv), GFP_KERNEL);
>  	if (!hif_drv) {
>  		result = -ENOMEM;
>  		goto _fail_;
> @@ -3878,7 +3878,7 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
>  	pu8IEs = ptstrNetworkInfo->ies;
>  	u16IEsLen = ptstrNetworkInfo->ies_len;
>
> -	pNewJoinBssParam = kzalloc(sizeof(struct join_bss_param), GFP_KERNEL);
> +	pNewJoinBssParam = kzalloc(sizeof(*pNewJoinBssParam), GFP_KERNEL);
>  	if (pNewJoinBssParam) {
>  		pNewJoinBssParam->dtim_period = ptstrNetworkInfo->dtim_period;
>  		pNewJoinBssParam->beacon_period = ptstrNetworkInfo->beacon_period;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160915100834.GA5703%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

