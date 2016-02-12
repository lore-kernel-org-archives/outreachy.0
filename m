X-GM-THRID: 6249672760626249728
X-Received: by 10.129.156.66 with SMTP id t63mr46385341ywg.38.1455248356971;
        Thu, 11 Feb 2016 19:39:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.31.4 with SMTP id f4ls718035iof.72.gmail; Thu, 11 Feb 2016
 19:39:16 -0800 (PST)
X-Received: by 10.107.128.102 with SMTP id b99mr400795iod.1.1455248356672;
        Thu, 11 Feb 2016 19:39:16 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ff2si1230738pad.2.2016.02.11.19.39.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 19:39:16 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 636B1F01;
	Fri, 12 Feb 2016 03:39:16 +0000 (UTC)
Date: Thu, 11 Feb 2016 19:39:15 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: octeon: Use preferred kernel
 type
Message-ID: <20160212033915.GA31823@kroah.com>
References: <1455115320-3148-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455115320-3148-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 10, 2016 at 04:42:00PM +0200, Dilek Uzulmez wrote:
> This patch "int*_t" type instead of "s*" type was used.
> checkpatch.pl issue in octeon driver.
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/octeon/ethernet-tx.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
> index 9e2116f..a9cfa93 100644
> --- a/drivers/staging/octeon/ethernet-tx.c
> +++ b/drivers/staging/octeon/ethernet-tx.c
> @@ -58,9 +58,9 @@ static DECLARE_TASKLET(cvm_oct_tx_cleanup_tasklet, cvm_oct_tx_do_cleanup, 0);
>  /* Maximum number of SKBs to try to free per xmit packet. */
>  #define MAX_SKB_TO_FREE (MAX_OUT_QUEUE_DEPTH * 2)
>  
> -static inline int32_t cvm_oct_adjust_skb_to_free(int32_t skb_to_free, int fau)
> +static inline s32 cvm_oct_adjust_skb_to_free(s32 skb_to_free, int fau)

This should just be 'int', right?

>  {
> -	int32_t undo;
> +	s32 undo;

Same here.

>  
>  	undo = skb_to_free > 0 ? MAX_SKB_TO_FREE : skb_to_free +
>  						   MAX_SKB_TO_FREE;
> @@ -83,7 +83,7 @@ static void cvm_oct_kick_tx_poll_watchdog(void)
>  
>  static void cvm_oct_free_tx_skbs(struct net_device *dev)
>  {
> -	int32_t skb_to_free;
> +	s32 skb_to_free;
>  	int qos, queues_per_port;
>  	int total_freed = 0;
>  	int total_remaining = 0;
> @@ -150,8 +150,8 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
>  	enum {QUEUE_CORE, QUEUE_HW, QUEUE_DROP} queue_type;
>  	struct octeon_ethernet *priv = netdev_priv(dev);
>  	struct sk_buff *to_free_list;
> -	int32_t skb_to_free;
> -	int32_t buffers_to_free;
> +	s32 skb_to_free;
> +	s32 buffers_to_free;

I think these as well, but please check to be sure.

thanks,

greg k-h

