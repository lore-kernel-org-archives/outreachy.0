X-GM-THRID: 6251168080852942848
X-Received: by 10.28.45.82 with SMTP id t79mr721370wmt.2.1455472752426;
        Sun, 14 Feb 2016 09:59:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.131.134 with SMTP id f128ls414755wmd.45.canary; Sun, 14 Feb
 2016 09:59:12 -0800 (PST)
X-Received: by 10.194.24.233 with SMTP id x9mr1092634wjf.0.1455472751968;
        Sun, 14 Feb 2016 09:59:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si518245wmy.2.2016.02.14.09.59.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 09:59:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,446,1449529200"; 
   d="scan'208";a="164679391"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 18:59:11 +0100
Date: Sun, 14 Feb 2016 18:59:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Laura Garcia Liebana <nevola@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: netlogic: Fix parenthesis
 alignment
In-Reply-To: <20160214175519.GA1469@sonyv>
Message-ID: <alpine.DEB.2.02.1602141858540.2066@localhost6.localdomain6>
References: <20160214175519.GA1469@sonyv>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 14 Feb 2016, Laura Garcia Liebana wrote:

> Align arguments with the open parenthesis. Checkpatch found this issue.
> 
> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> v2: Fix ambiguous commit message, as Julia suggested.
> 
>  drivers/staging/netlogic/platform_net.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
> index 7806c2b..3217841 100644
> --- a/drivers/staging/netlogic/platform_net.c
> +++ b/drivers/staging/netlogic/platform_net.c
> @@ -121,8 +121,8 @@ static struct platform_device *gmac_controller2_init(void *gmac0_addr)
>  		ndata1.phy_addr[mac] = mac + 4 + 0x10;
>  
>  		xlr_resource_init(&xlr_net1_res[mac * 2],
> -				xlr_gmac_offsets[mac + 4],
> -				xlr_gmac_irqs[mac + 4]);
> +				  xlr_gmac_offsets[mac + 4],
> +				  xlr_gmac_irqs[mac + 4]);
>  	}
>  	xlr_net_dev1.num_resources = 8;
>  
> -- 
> 2.7.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160214175519.GA1469%40sonyv.
> For more options, visit https://groups.google.com/d/optout.
> 

