X-GM-THRID: 6333026531051307008
X-Received: by 10.194.96.237 with SMTP id dv13mr11516wjb.6.1474522904769;
        Wed, 21 Sep 2016 22:41:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.166.2 with SMTP id p2ls108363wme.4.canary; Wed, 21 Sep 2016
 22:41:44 -0700 (PDT)
X-Received: by 10.194.119.196 with SMTP id kw4mr10146wjb.1.1474522904255;
        Wed, 21 Sep 2016 22:41:44 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c13si2474803wme.3.2016.09.21.22.41.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 22:41:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,377,1470693600"; 
   d="scan'208";a="194243152"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Sep 2016 07:41:43 +0200
Date: Thu, 22 Sep 2016 07:41:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: fixed block comment
 trailing
In-Reply-To: <20160922053719.GA27381@spock>
Message-ID: <alpine.DEB.2.10.1609220741160.3472@hadrien>
References: <20160922053719.GA27381@spock>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 22 Sep 2016, Juliana Rodrigues wrote:

> Moved trailing */ to a new line and added * to subsequent
> lines on a block comment.

This one looks more natural, width-wise, but there is still more space
available.

julia

>
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
> index 87ceebe..4e6ea76 100644
> --- a/drivers/staging/wlan-ng/hfa384x.h
> +++ b/drivers/staging/wlan-ng/hfa384x.h
> @@ -1297,7 +1297,8 @@ typedef struct hfa384x {
>  	int dbmadjust;
>
>  	/* Group Addresses - right now, there are up to a total
> -	   of MAX_GRP_ADDR group addresses */
> +	 * of MAX_GRP_ADDR group addresses
> +	 */
>  	u8 dot11_grp_addr[MAX_GRP_ADDR][ETH_ALEN];
>  	unsigned int dot11_grpcnt;
>
> --
> 2.10.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160922053719.GA27381%40spock.
> For more options, visit https://groups.google.com/d/optout.
>

