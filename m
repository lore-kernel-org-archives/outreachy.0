X-GM-THRID: 6528705081880084480
X-Received: by 10.223.165.8 with SMTP id i8mr865589wrb.5.1520086007482;
        Sat, 03 Mar 2018 06:06:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.31.200 with SMTP id f191ls214927wmf.1.gmail; Sat, 03 Mar
 2018 06:06:45 -0800 (PST)
X-Google-Smtp-Source: AG47ELuVFRz/+jHm4WaXU1tRQUVAEveKGH14byYRol3T6MHXN03h/RYcSZEMXlJMbrRTu2sniFY/
X-Received: by 10.28.105.80 with SMTP id e77mr482479wmc.26.1520086005188;
        Sat, 03 Mar 2018 06:06:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520086005; cv=none;
        d=google.com; s=arc-20160816;
        b=uNM5S/NdZV0t/xp/jfu7Is8yuA9tVMU3AoF0njJS9DsKEEIihTttOMAiIFCXF8TvnY
         x0i8AhJwiNoAEum4JTY94TAHI6MRuNlaif8X83UaQOfTiUji6fZxdf+azgmC/bTTBgpq
         zXjl7Rp+o+XGJ7SDvtICtVET3zAIhfhEVJSVZf0c6jpJDwjg2eAUKAwAeftnsL3wHPxv
         Vj2XLZVlwZRcmyG1QNxorTvioDwsjxfI2TQ7Pw8GpdxfvxSYGK8iM+jViMTxucz13q82
         0sF3o58ZvTfBmVUEVCz1OE2YOEyUhxSC1OKe5SgVCbaHBvLT0xfUAtippb+girFUNczm
         9LJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=jf9PoqmnrMjf3WPhUOKHYPIpP6z25xc8xIB3dLSJQBk=;
        b=J62md3XaM/dIYMdR+8IoNZOSY63jARXKlVyxualw1mEQ/OekEzuVahcc3HrQNrLTGL
         Boiq7VfFMiR799v+Lajl7lEQGIe7pyWVAyXhCZjnE4kQx1ucZKuZJMDcJX28wDWdb+6H
         PEdaalCw0y96+4nioR7ADjl9Uf61AogrPTmbKl0YIe0n6g93AWj89fH7j3fAOwOJsebr
         BPfV/IpM/6psCsevkddDWBxijkzUTVC1kw16tb8usHn6mCOp85jXaFtIbKdVJA4eQTv8
         OxJinB9Y+To0njFkBIJJcdAqLgbVW/4ldbtU5v1fdqAMAAUd1UZaiGP1pKHJ/OQ/CLxS
         YrUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r10si119762wmg.2.2018.03.03.06.06.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 06:06:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,418,1515452400"; 
   d="scan'208";a="256828672"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 15:06:44 +0100
Date: Sat, 3 Mar 2018 15:06:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: jdmason@kudzu.us, Jakub Kicinski <jakub.kicinski@netronome.com>, 
    netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
    oss-drivers@netronome.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] net: ethernet: Drop unnecessary
 continue
In-Reply-To: <20180303130933.GA8337@seema-Inspiron-15-3567>
Message-ID: <alpine.DEB.2.20.1803031506060.2302@hadrien>
References: <20180303130933.GA8337@seema-Inspiron-15-3567>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 3 Mar 2018, Arushi Singhal wrote:

> Continue at the bottom of a loop are removed.
> Issue found using drop_continue.cocci Coccinelle script.

In each case you leave an if with a single statement in the branch.  In
that case the { } should be dropped too.

julia

>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/net/ethernet/amd/ni65.c                   | 1 -
>  drivers/net/ethernet/neterion/s2io.c              | 1 -
>  drivers/net/ethernet/netronome/nfp/nfp_net_main.c | 1 -
>  3 files changed, 3 deletions(-)
>
> diff --git a/drivers/net/ethernet/amd/ni65.c b/drivers/net/ethernet/amd/ni65.c
> index e248d1a..5975f29 100644
> --- a/drivers/net/ethernet/amd/ni65.c
> +++ b/drivers/net/ethernet/amd/ni65.c
> @@ -437,7 +437,6 @@ static int __init ni65_probe1(struct net_device *dev,int ioaddr)
>  			for(j=0;j<3;j++)
>  				if(inb(ioaddr+cards[i].addr_offset+j) != cards[i].vendor_id[j]) {
>  					release_region(ioaddr, cards[i].total_size);
> -					continue;
>  			  }
>  		}
>  		break;
> diff --git a/drivers/net/ethernet/neterion/s2io.c b/drivers/net/ethernet/neterion/s2io.c
> index b8983e7..5123abd 100644
> --- a/drivers/net/ethernet/neterion/s2io.c
> +++ b/drivers/net/ethernet/neterion/s2io.c
> @@ -3682,7 +3682,6 @@ static void restore_xmsi_data(struct s2io_nic *nic)
>  		if (wait_for_msix_trans(nic, msix_index)) {
>  			DBG_PRINT(ERR_DBG, "%s: index: %d failed\n",
>  				  __func__, msix_index);
> -			continue;
>  		}
>  	}
>  }
> diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_main.c b/drivers/net/ethernet/netronome/nfp/nfp_net_main.c
> index 15fa47f..77916ed 100644
> --- a/drivers/net/ethernet/netronome/nfp/nfp_net_main.c
> +++ b/drivers/net/ethernet/netronome/nfp/nfp_net_main.c
> @@ -260,7 +260,6 @@ nfp_net_pf_alloc_vnics(struct nfp_pf *pf, void __iomem *ctrl_bar,
>  		/* Kill the vNIC if app init marked it as invalid */
>  		if (nn->port && nn->port->type == NFP_PORT_INVALID) {
>  			nfp_net_pf_free_vnic(pf, nn);
> -			continue;
>  		}
>  	}
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180303130933.GA8337%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.
>

