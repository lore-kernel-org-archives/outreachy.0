X-GM-THRID: 6389636871256801280
X-Received: by 10.223.160.227 with SMTP id n32mr152046wrn.20.1487755637391;
        Wed, 22 Feb 2017 01:27:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.139.82 with SMTP id n79ls121944wmd.19.gmail; Wed, 22 Feb
 2017 01:27:16 -0800 (PST)
X-Received: by 10.28.51.80 with SMTP id z77mr54755wmz.0.1487755636619;
        Wed, 22 Feb 2017 01:27:16 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si119474wmg.3.2017.02.22.01.27.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 01:27:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,193,1484002800"; 
   d="scan'208";a="261604969"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Feb 2017 10:27:16 +0100
Date: Wed, 22 Feb 2017 10:27:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/7] staging: most: Using macro
 DIV_ROUND_UP
In-Reply-To: <20170222091015.GA11058@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1702221025550.3145@hadrien>
References: <20170222091015.GA11058@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> @@ -117,7 +118,7 @@ static int alloc_dbr(u16 size)
>  		return DBR_SIZE; /* out of memory */
>
>  	for (i = 0; i < DBR_MAP_SIZE; i++) {
> -		u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
> +		u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
>  		u32 mask = ~((~(u32)0) << blocks);

Totally unrelated to DIV_ROUND_UP, would this code be a candidate for
GENMASK?

julia

>
>  		do {
> @@ -137,7 +138,7 @@ static int alloc_dbr(u16 size)
>  static void free_dbr(int offs, int size)
>  {
>  	int block_idx = offs / DBR_BLOCK_SIZE;
> -	u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
> +	u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
>  	u32 mask = ~((~(u32)0) << blocks);
>
>  	mask <<= block_idx % 32;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170222091015.GA11058%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

