X-GM-THRID: 6261514369469775872
X-Received: by 10.112.45.139 with SMTP id n11mr2241097lbm.17.1457873071733;
        Sun, 13 Mar 2016 05:44:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.4.202 with SMTP id 193ls615225lfe.5.gmail; Sun, 13 Mar 2016
 05:44:31 -0700 (PDT)
X-Received: by 10.25.165.148 with SMTP id o142mr2278235lfe.8.1457873071093;
        Sun, 13 Mar 2016 05:44:31 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g81si417227wmi.3.2016.03.13.05.44.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 05:44:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,331,1454972400"; 
   d="scan'208";a="168417521"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2016 13:44:30 +0100
Date: Sun, 13 Mar 2016 13:44:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: dgnc: replaced udelay
 with usleep_range
In-Reply-To: <20160313123337.GA10274@spock>
Message-ID: <alpine.DEB.2.02.1603131344110.2069@localhost6.localdomain6>
References: <20160313123337.GA10274@spock>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 13 Mar 2016, Juliana Rodrigues wrote:

> This patch replaces udelay with usleep_range fixing
> a checkpatch.pl issue:
> 
> CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.txt
> +       udelay(10);
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
> Changes in v2:
>    - Fixed range timing
>  
>  drivers/staging/dgnc/dgnc_cls.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index 51db98b..7e3cc48 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -956,7 +956,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
>  	 * Presumably, this is a bug in this UART.
>  	 */
>  
> -	usleep_range(10000, 11000);
> +	usleep_range(10, 20);

It still doesn't say why you chose this value.

julia

>  }
>  
>  static void cls_copy_data_from_queue_to_uart(struct channel_t *ch)
> -- 
> 2.7.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160313123337.GA10274%40spock.
> For more options, visit https://groups.google.com/d/optout.
> 

