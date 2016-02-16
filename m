X-GM-THRID: 6251940862989697024
X-Received: by 10.28.47.211 with SMTP id v202mr2166982wmv.3.1455643998964;
        Tue, 16 Feb 2016 09:33:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.27 with SMTP id m27ls814038lfi.60.gmail; Tue, 16 Feb
 2016 09:33:18 -0800 (PST)
X-Received: by 10.112.135.234 with SMTP id pv10mr2722851lbb.24.1455643998316;
        Tue, 16 Feb 2016 09:33:18 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c143si660989wmd.1.2016.02.16.09.33.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 09:33:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,456,1449529200"; 
   d="scan'208";a="203384465"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Feb 2016 18:33:17 +0100
Date: Tue, 16 Feb 2016 18:33:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: wilc1000: Use kmalloc_array
 instead of kmalloc
In-Reply-To: <351c2cb45bd6c3f0ac54246c66b693e204c172a8.1455661012.git.janani.rvchndrn@gmail.com>
Message-ID: <alpine.DEB.2.10.1602161832540.2685@hadrien>
References: <cover.1455661012.git.janani.rvchndrn@gmail.com> <351c2cb45bd6c3f0ac54246c66b693e204c172a8.1455661012.git.janani.rvchndrn@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 16 Feb 2016, Janani Ravichandran wrote:

> Use kmalloc_array instead of kmalloc for arrays to prevent integer
> overflows.

I think it should have been v2, to indicat to Greg that the original patch
was not useful.

julia

>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 81a2ee9..7554cd4 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -664,7 +664,7 @@ static int scan(struct wiphy *wiphy, struct cfg80211_scan_request *request)
>  		PRINT_D(CFG80211_DBG, "Number of SSIDs %d\n", request->n_ssids);
>
>  		if (request->n_ssids >= 1) {
> -			strHiddenNetwork.net_info = kmalloc(request->n_ssids * sizeof(struct hidden_network), GFP_KERNEL);
> +			strHiddenNetwork.net_info = kmalloc_array(request->n_ssids, sizeof(struct hidden_network), GFP_KERNEL);
>  			strHiddenNetwork.n_ssids = request->n_ssids;
>
>
> --
> 2.5.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/351c2cb45bd6c3f0ac54246c66b693e204c172a8.1455661012.git.janani.rvchndrn%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

