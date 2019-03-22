X-GM-THRID: 6671194147463888896
X-Received: by 2002:a17:906:4c82:: with SMTP id q2mr5625929eju.215.1553261099274;
        Fri, 22 Mar 2019 06:24:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:3d62:: with SMTP id r2ls1656230ejf.2.gmail; Fri, 22
 Mar 2019 06:24:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzrxc28+dKbu1iYzxJkxINWMEk7/pj09t29QVajDpzwbfdglqwrVyyXA6spGN4i6J4VbrXU
X-Received: by 2002:a17:906:e5a:: with SMTP id q26mr2318949eji.50.1553261098306;
        Fri, 22 Mar 2019 06:24:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553261098; cv=none;
        d=google.com; s=arc-20160816;
        b=ipWLvszcgKO5yvyVD3RDGhfUp5oeJ7jnyH7lN1HO2ak8gim7r+LZkgcH8SSy6dR321
         4iiLf6wkSWyWNIPXNtkUMpfosr4JMjwtAOfRrJmGGjfshvhGXZSll2B/knfoYQ+KNI0H
         KtbrlAQyf/+HXsH7dpxedhIY6tUExBqYuWO8pyfFDuKpH9Higq5Mtu8x1a0qszxr7hCS
         zId3FblNVwkh2t1Pzb6IZyggc50cN6l4EZ5xwmFQ73CuPZ25WvrDyRE9k2O3b7hSNkdA
         ejDLJ+m9vDorXUYg+WDbcTpY69e3qoosvr2GNMo+9mbIR+KG3Jj03qgth8ZZU1sox6n+
         inmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8mFZjb7pV+cKvsTrNC9EaR4c9mbsMxbDp7sZ7RSajXA=;
        b=ex4AREUgWndQM1fETRLs9fzZdRduoomYYjUFHIapq4xneQ2vOiS69O+DXuXHMeEGlo
         SibUfcM4AT7xgq8nW+2dX2ZuVMpC2Z0Lad41UcaXW7GdSNQa0M3VT3vNkilVGygscL6o
         Qx/7I3UA4WXrWUrl96Dme+rZPA2IZjvjj4p98qDb3ch7Kw9iZmj5HI/L1cTo1mkHM1M5
         5n7ceCQDjPtfpbv4m/rR1YnI5retcC1z6MyGmDy3d/4ATPNNYRKBPz3KLlkiGnkIPygN
         qNTVfFZsf5ffssJCwTVVSMyxk1U72030S1b46XMLw7VzseV3niRPxHBi34A7wb1uTFcJ
         kQRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p25si439385eju.1.2019.03.22.06.24.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 06:24:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="375302414"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2019 14:24:57 +0100
Date: Fri, 22 Mar 2019 14:24:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: gdm724x: Remove unnecessary
 print statements
In-Reply-To: <20190322124010.7192-1-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.20.1903221424040.27473@hadrien>
References: <20190322124010.7192-1-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Mar 2019, Bhanusree Pola wrote:

> Remove print statements that provide information about error messages
> when memory allocation is failed.
> Issue found using coccinelle
> The following semantic patch is used to solve this:
>
> <smpl>
> @@
> expression x;
> constant char[] C;
> identifier f;
> @@
>
> x = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
> usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));
>
> if(x==NULL)
> {
> ...
> (
> -f(C,...);
> |
> -f(...,C);

You can also try just f(...,C,...).  If you use that, the others are not
needed, because ... can match nothing.

> )
> ...
> }
> </smpl>
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/gdm724x/gdm_lte.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
> index 3c2aab7a921e..db11498f6fc7 100644
> --- a/drivers/staging/gdm724x/gdm_lte.c
> +++ b/drivers/staging/gdm724x/gdm_lte.c
> @@ -871,7 +871,6 @@ int register_lte_device(struct phy_dev *phy_dev,
>  		net = alloc_netdev(sizeof(struct nic), pdn_dev_name,
>  				   NET_NAME_UNKNOWN, ether_setup);
>  		if (!net) {
> -			pr_err("alloc_netdev failed\n");
>  			ret = -ENOMEM;
>  			goto err;
>  		}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190322124010.7192-1-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

