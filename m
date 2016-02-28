X-GM-THRID: 6256431526237437952
X-Received: by 10.112.168.201 with SMTP id zy9mr1190966lbb.23.1456689145209;
        Sun, 28 Feb 2016 11:52:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.135.11 with SMTP id j11ls330404lfd.74.gmail; Sun, 28 Feb
 2016 11:52:24 -0800 (PST)
X-Received: by 10.25.90.85 with SMTP id o82mr328110lfb.10.1456689144693;
        Sun, 28 Feb 2016 11:52:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c140si204996wmh.1.2016.02.28.11.52.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:52:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,516,1449529200"; 
   d="scan'208";a="166251515"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2016 20:52:23 +0100
Date: Sun, 28 Feb 2016 20:52:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: slicoss: Use
 ether_addr_equal_64bits() insted of ether_addr_equal().
In-Reply-To: <20160228114943.GA4709@sandhya>
Message-ID: <alpine.DEB.2.02.1602282052050.2075@localhost6.localdomain6>
References: <20160228114943.GA4709@sandhya>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 28 Feb 2016, Sandhya Bankar wrote:

> Use ether_addr_equal_64bits() insted of ether_addr_equal().

Explain why this is correct and a good idea.

julia

> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/slicoss/slicoss.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
> index ed1c067..b2a162a 100644
> --- a/drivers/staging/slicoss/slicoss.c
> +++ b/drivers/staging/slicoss/slicoss.c
> @@ -773,8 +773,8 @@ static bool slic_mac_filter(struct adapter *adapter,
>  			struct mcast_address *mcaddr = adapter->mcastaddrs;
>  
>  			while (mcaddr) {
> -				if (ether_addr_equal(mcaddr->address,
> -						     ether_frame->ether_dhost)) {
> +				if (ether_addr_equal_64bits(mcaddr->address,
> +						ether_frame->ether_dhost)) {
>  					adapter->rcv_multicasts++;
>  					netdev->stats.multicast++;
>  					return true;
> -- 
> 1.8.3.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160228114943.GA4709%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
> 

