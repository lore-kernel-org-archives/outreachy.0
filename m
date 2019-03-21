X-GM-THRID: 6670726051308503040
X-Received: by 2002:a05:600c:2110:: with SMTP id u16mr130787wml.11.1553149962329;
        Wed, 20 Mar 2019 23:32:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ebcd:: with SMTP id v13ls990754wrn.14.gmail; Wed, 20 Mar
 2019 23:32:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyeM1Rd+kQGlbgrv2ydWx1THvjcJXfJWbBhjvGzAAerAVv7gT6Sn6J5BdhRXUrwewzZ5Cdi
X-Received: by 2002:adf:9f42:: with SMTP id f2mr82592wrg.25.1553149961656;
        Wed, 20 Mar 2019 23:32:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553149961; cv=none;
        d=google.com; s=arc-20160816;
        b=CXm4akhQBoUoD1n9RXJZzZJ7+q3hbdr+6lmUn/LPA7XAormmPpOHXgtpAQuWGTCTCx
         /jZa4lZ2e1HvYdOR+68m3+hI+xPS5Xcc+5AFvbTtcZrt1SMM9FG4SGXgmVui1DxFPMY8
         ew8eP79F8DbZ7anF9vhNLY08fOdUgdpNXQs6C+nh32p3ZPtITL6uvcuxoIoLTc3Qjg8z
         35q64P5AAgLfJh3c88QP1KD4IuvMnZX90G+Rlj5n/EULZ/mGR/Ym33dnygYixPWF8Vwq
         P06NnaE5XLiFjVLZXI4Z7SJNHYK6173e+tl/baeCNyfIZL4ZIrmO6z4oLZaWxGwE04Zo
         XDWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=cvoufpugARLADa/tVlVOZzbJ3/KTE61uGDfQsU2rB4E=;
        b=dhzWQ4rkmfgybR4akgvecb+obM4czeFYsr1cIdKEFO7Iup2v1OXK3a8usb1NwoZ041
         Q6WEjOZs50HB3kadJIn7RptgrlqOBfv55pPHINV0sh8/sCvfoS73DcwLOhgZjsgP0TpH
         eMLLytjNil42aSeRIJhjrN4z11pqXiH7ICMhte5d2QnCVR9I4ZcNRESf386HwM7xAmD8
         jR1HOQIV2TD+A9ceLCcnth/n2QjbsTIOaL8/f74BCAieWmEo1At8I8sst+Eur+A7TaAS
         +qsvx3uhdIVIjZjmDAFyRSqOTKjCUT6ZHM8D38zBWBkWNHXP58yZ0Zyh1xf+GFoh0pEb
         fQXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m1si172190wrj.4.2019.03.20.23.32.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 23:32:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,251,1549926000"; 
   d="scan'208";a="300187628"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2019 07:32:41 +0100
Date: Thu, 21 Mar 2019 07:32:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: vt6655: spaces around
 operators
In-Reply-To: <1553149424-7694-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903210732200.2622@hadrien>
References: <1553149424-7694-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 21 Mar 2019, Payal Kshirsagar wrote:

> Prefer spaces around operators

Prefer -> Add

Add would say what you actually did.

julia


>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/vt6655/device_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index b370985..866d794 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -592,7 +592,7 @@ static int device_init_rd1_ring(struct vnt_private *priv)
>  			goto err_free_rd;
>  		}
>
> -		desc->next = &priv->aRD1Ring[(i+1) % priv->opts.rx_descs1];
> +		desc->next = &priv->aRD1Ring[(i + 1) % priv->opts.rx_descs1];
>  		desc->next_desc = cpu_to_le32(curr + sizeof(struct vnt_rx_desc));
>  	}
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1553149424-7694-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

