X-GM-THRID: 1021192437760
X-Received: by 10.152.6.232 with SMTP id e8mr884501laa.2.1424384605438;
        Thu, 19 Feb 2015 14:23:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.5.33 with SMTP id cj1ls233612lad.53.gmail; Thu, 19 Feb
 2015 14:23:25 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr909476lbw.4.1424384604958;
        Thu, 19 Feb 2015 14:23:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si6498194wic.1.2015.02.19.14.23.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 14:23:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,611,1418079600"; 
   d="scan'208";a="100669503"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 23:23:24 +0100
Date: Thu, 19 Feb 2015 23:23:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: lustre: lnet: klnds:
 o2iblnd: Remove intialization of static to 0
In-Reply-To: <1424383611-27755-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.02.1502192322480.2192@localhost6.localdomain6>
References: <1424383611-27755-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 20 Feb 2015, Melike Yurtoglu wrote:

> ERROR: do not initialise statics to 0 or NULL
> checkpatch.pl error in o2iblnd_modparams.c

It would be better to say what you do, and why.  Why is it unnecessary to 
initialize a static variable to 0?

julia


> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  .../lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c        | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c
> index 8b4a8e9..8036d8b 100644
> --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c
> +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c
> @@ -44,7 +44,7 @@ static int service = 987;
>  module_param(service, int, 0444);
>  MODULE_PARM_DESC(service, "service number (within RDMA_PS_TCP)");
>  
> -static int cksum = 0;
> +static int cksum;
>  module_param(cksum, int, 0644);
>  MODULE_PARM_DESC(cksum, "set non-zero to enable message (not RDMA) checksums");
>  
> @@ -72,11 +72,11 @@ static int peer_credits = 8;
>  module_param(peer_credits, int, 0444);
>  MODULE_PARM_DESC(peer_credits, "# concurrent sends to 1 peer");
>  
> -static int peer_credits_hiw = 0;
> +static int peer_credits_hiw;
>  module_param(peer_credits_hiw, int, 0444);
>  MODULE_PARM_DESC(peer_credits_hiw, "when eagerly to return credits");
>  
> -static int peer_buffer_credits = 0;
> +static int peer_buffer_credits;
>  module_param(peer_buffer_credits, int, 0444);
>  MODULE_PARM_DESC(peer_buffer_credits, "# per-peer router buffer credits");
>  
> @@ -100,15 +100,15 @@ static int keepalive = 100;
>  module_param(keepalive, int, 0644);
>  MODULE_PARM_DESC(keepalive, "Idle time in seconds before sending a keepalive");
>  
> -static int ib_mtu = 0;
> +static int ib_mtu;
>  module_param(ib_mtu, int, 0444);
>  MODULE_PARM_DESC(ib_mtu, "IB MTU 256/512/1024/2048/4096");
>  
> -static int concurrent_sends = 0;
> +static int concurrent_sends;
>  module_param(concurrent_sends, int, 0444);
>  MODULE_PARM_DESC(concurrent_sends, "send work-queue sizing");
>  
> -static int map_on_demand = 0;
> +static int map_on_demand;
>  module_param(map_on_demand, int, 0444);
>  MODULE_PARM_DESC(map_on_demand, "map on demand");
>  
> @@ -136,12 +136,12 @@ MODULE_PARM_DESC(pmr_pool_size, "size of MR cache pmr pool on each CPT");
>   * 1: enable failover if necessary
>   * 2: force to failover (for debug)
>   */
> -static int dev_failover = 0;
> +static int dev_failover;
>  module_param(dev_failover, int, 0444);
>  MODULE_PARM_DESC(dev_failover, "HCA failover for bonding (0 off, 1 on, other values reserved)");
>  
>  
> -static int require_privileged_port = 0;
> +static int require_privileged_port;
>  module_param(require_privileged_port, int, 0644);
>  MODULE_PARM_DESC(require_privileged_port, "require privileged port when accepting connection");
>  
> -- 
> 1.8.3.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424383611-27755-1-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

