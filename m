X-GM-THRID: 6252990979298557952
X-Received: by 10.28.47.211 with SMTP id v202mr28008wmv.3.1455939962040;
        Fri, 19 Feb 2016 19:46:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.10.10 with SMTP id 10ls135531lfk.43.gmail; Fri, 19 Feb 2016
 19:46:01 -0800 (PST)
X-Received: by 10.112.170.7 with SMTP id ai7mr2204441lbc.1.1455939961289;
        Fri, 19 Feb 2016 19:46:01 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s141si644017wmd.1.2016.02.19.19.46.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 19:46:01 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,473,1449529200"; 
   d="scan'208";a="165347905"
Received: from unknown (HELO hadrien.lan) ([162.212.89.130])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2016 04:46:00 +0100
Date: Fri, 19 Feb 2016 22:45:57 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Remove unnecessary
 else after return
In-Reply-To: <1455887905-7002-1-git-send-email-dilekuzulmez@gmail.com>
Message-ID: <alpine.DEB.2.10.1602192245160.2806@hadrien>
References: <1455887905-7002-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 19 Feb 2016, Dilek Uzulmez wrote:

> This patch fixes checkpatch.pl warning in files of wilc1000
> WARNING: else is not generally useful after a break or return
>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
> index 544c12d..b0cefe1 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.c
> +++ b/drivers/staging/wilc1000/coreconfigurator.c
> @@ -939,9 +939,9 @@ s32 SendConfigPkt(u8 u8Mode, tstrWID *pstrWIDs,
>  	    gpstrWlanOps->wlan_cfg_get == NULL)	{
>  		PRINT_D(CORECONFIG_DBG, "Set and Get is still not initialized\n");
>  		return 1;
> -	} else {
> -		PRINT_D(CORECONFIG_DBG, "SET is initialized\n");
>  	}
> +		PRINT_D(CORECONFIG_DBG, "SET is initialized\n");
> +

If you drop the else, the PRINT_D should be less indented.  Also there is
probably no need for a blank line.

julia


>  	if (u8Mode == GET_CFG) {
>  		for (counter = 0; counter < u32WIDsCount; counter++) {
>  			PRINT_INFO(CORECONFIG_DBG, "Sending CFG packet [%d][%d]\n", !counter,
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455887905-7002-1-git-send-email-dilekuzulmez%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

