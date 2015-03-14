X-GM-THRID: 8287160369152
X-Received: by 10.66.197.170 with SMTP id iv10mr27702708pac.25.1426348640497;
        Sat, 14 Mar 2015 08:57:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.21 with SMTP id i21ls1327797ioo.65.gmail; Sat, 14 Mar
 2015 08:57:20 -0700 (PDT)
X-Received: by 10.70.34.47 with SMTP id w15mr17902627pdi.9.1426348640231;
        Sat, 14 Mar 2015 08:57:20 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e11si182316igq.0.2015.03.14.08.57.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 08:57:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,400,1422918000"; 
   d="scan'208";a="103342228"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Mar 2015 16:57:17 +0100
Date: Sat, 14 Mar 2015 16:57:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Replace memcpy with
 ether_addr_copy
In-Reply-To: <20150314111518.GA12847@akanksha>
Message-ID: <alpine.DEB.2.10.1503141656090.2461@hadrien>
References: <20150314111518.GA12847@akanksha>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 14 Mar 2015, Vatika Harlalka wrote:

> Replace
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> Use ether_addr_copy instead of memcpy(a, b, ETH_ALEN)

Something went wrong with the commit message.

Also eth_addr_copy requires alignment (Please note: dst & src must both
be aligned to u16).  You need to justify why this property holds.

julia

>
> ---
>  drivers/staging/rtl8712/os_intfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
> index ebfb29e..e1b54fb 100644
> --- a/drivers/staging/rtl8712/os_intfs.c
> +++ b/drivers/staging/rtl8712/os_intfs.c
> @@ -181,7 +181,7 @@ static int r871x_net_set_mac_address(struct net_device *pnetdev, void *p)
>  	struct sockaddr *addr = p;
>
>  	if (padapter->bup == false)
> -		memcpy(pnetdev->dev_addr, addr->sa_data, ETH_ALEN);
> +		ether_addr_copy(pnetdev->dev_addr, addr->sa_data);
>  	return 0;
>  }
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150314111518.GA12847%40akanksha.
> For more options, visit https://groups.google.com/d/optout.
>

