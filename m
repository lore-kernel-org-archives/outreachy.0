X-GM-THRID: 6330639307056873472
X-Received: by 10.194.119.196 with SMTP id kw4mr1791528wjb.1.1473967215090;
        Thu, 15 Sep 2016 12:20:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.35.86 with SMTP id j83ls294500wmj.17.gmail; Thu, 15 Sep
 2016 12:20:14 -0700 (PDT)
X-Received: by 10.28.29.83 with SMTP id d80mr800560wmd.2.1473967214276;
        Thu, 15 Sep 2016 12:20:14 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v132si271838wmf.1.2016.09.15.12.20.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:20:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,340,1470693600"; 
   d="scan'208";a="193588473"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 21:20:13 +0200
Date: Thu, 15 Sep 2016 21:20:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rehas Sachdeva <aquannie@gmail.com>
cc: outreachy-kernel@googlegroups.com, Lior Dotan <liodot@gmail.com>, 
    Christopher Harrer <charrer@alacritech.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: slicoss: Fix alignment
 with open parentheses
In-Reply-To: <a0e1623587ce0b842607142663aa65d7871245cc.1473966683.git.aquannie@gmail.com>
Message-ID: <alpine.DEB.2.10.1609152118560.3364@hadrien>
References: <cover.1473966683.git.aquannie@gmail.com> <a0e1623587ce0b842607142663aa65d7871245cc.1473966683.git.aquannie@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 16 Sep 2016, Rehas Sachdeva wrote:

> Align statements following a line with open parentheses to start after the '('.
> Issue detected by checkpatch.pl.
>
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/slicoss/slicoss.c | 28 ++++++++++++++--------------
>  1 file changed, 14 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
> index 21280a3..6bfb7a8 100644
> --- a/drivers/staging/slicoss/slicoss.c
> +++ b/drivers/staging/slicoss/slicoss.c
> @@ -191,7 +191,7 @@ static void slic_timer_ping(ulong dev)
>   *
>   */
>  static void slic_link_config(struct adapter *adapter,
> -		      u32 linkspeed, u32 linkduplex)
> +			     u32 linkspeed, u32 linkduplex)
>  {
>  	u32 speed;
>  	u32 duplex;
> @@ -707,7 +707,7 @@ static void slic_config_clear(struct adapter *adapter)
>  }
>
>  static bool slic_mac_filter(struct adapter *adapter,
> -			struct ether_header *ether_frame)
> +			    struct ether_header *ether_frame)
>  {
>  	struct net_device *netdev = adapter->netdev;
>  	u32 opts = adapter->macopts;
> @@ -830,10 +830,10 @@ static void slic_timer_load_check(ulong cardaddr)
>  }
>
>  static int slic_upr_queue_request(struct adapter *adapter,
> -			   u32 upr_request,
> -			   u32 upr_data,
> -			   u32 upr_data_h,
> -			   u32 upr_buffer, u32 upr_buffer_h)
> +				  u32 upr_request,
> +				  u32 upr_data,
> +				  u32 upr_data_h,
> +				  u32 upr_buffer, u32 upr_buffer_h)

Maybe you could put a few more arguments on the same line.  For example,
since upr_buffer and upr_buffer_h are already on the same line, maybe you
could do the same with upr_data and upr_data_h.

>  {
>  	struct slic_upr *upr;
>  	struct slic_upr *uprqueue;
> @@ -899,19 +899,19 @@ static void slic_upr_start(struct adapter *adapter)
>  }
>
>  static int slic_upr_request(struct adapter *adapter,
> -		     u32 upr_request,
> -		     u32 upr_data,
> -		     u32 upr_data_h,
> -		     u32 upr_buffer, u32 upr_buffer_h)
> +			    u32 upr_request,
> +			    u32 upr_data,
> +			    u32 upr_data_h,
> +			    u32 upr_buffer, u32 upr_buffer_h)

Likewise here.

julia


>  {
>  	unsigned long flags;
>  	int rc;
>
>  	spin_lock_irqsave(&adapter->upr_lock, flags);
>  	rc = slic_upr_queue_request(adapter,
> -					upr_request,
> -					upr_data,
> -					upr_data_h, upr_buffer, upr_buffer_h);
> +				    upr_request,
> +				    upr_data,
> +				    upr_data_h, upr_buffer, upr_buffer_h);
>  	if (rc)
>  		goto err_unlock_irq;
>
> @@ -1421,7 +1421,7 @@ retry:
>  }
>
>  static void slic_cmdq_putdone_irq(struct adapter *adapter,
> -				struct slic_hostcmd *cmd)
> +				  struct slic_hostcmd *cmd)
>  {
>  	struct slic_cmdqueue *cmdq = &adapter->cmdq_done;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a0e1623587ce0b842607142663aa65d7871245cc.1473966683.git.aquannie%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

