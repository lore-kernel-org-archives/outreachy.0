X-GM-THRID: 6610529510960922624
X-Received: by 2002:ac2:4351:: with SMTP id o17-v6mr863811lfl.2.1539152965911;
        Tue, 09 Oct 2018 23:29:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:3b93:: with SMTP id d19-v6ls190973lfl.10.gmail; Tue, 09
 Oct 2018 23:29:25 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62LNRDW9cw2So1S0bJAigBsHsU++jwznp4k8dMXBXSe+MYThWeLa7bYv7TkW7vLTokRQfwr
X-Received: by 2002:a19:d807:: with SMTP id p7-v6mr836861lfg.5.1539152963789;
        Tue, 09 Oct 2018 23:29:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539152963; cv=none;
        d=google.com; s=arc-20160816;
        b=IYpHiQbefzWDEm1s7vV+J87Jao9QnI6i8jLPV+xa1175/Mr+FnnVWKD5ehDwP4z776
         UZumUWWbljmU6XgA0oBlIISAgQKeee4RSIoNAp8rohrBg6Hz8gLjY0bq978vigMIOr7T
         ra0ayybe9XuOASA//pY7zng5VGln3vgFydqQpXWCgM/veIapTUznsCVcdpEfrfo/urSn
         92SIU91/k69+/HqTEMNqSSk87/vakcsSwNBXhzO2e6B4wdbAfjVZ4lED0zIq627WFPms
         Td+GrcOXHL/HKUt+5yUtNFcQbm8Z8qy3jLsdaKs9fx/EwJUKV6/SbxAbhfFiBSO/At72
         z4ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Kl1M6JMPcd/k2pVZxVscQlSoRwLolZV5NfWgNRQ9/Wk=;
        b=D3bJ4IvhIiIp0gOmo60rpVjRw23R/wkhH0LOuT9xYpiBwq/VN9NNfvHIzRyYXZc2b2
         jfiellpaJt146g6K9CMWSMUoJ78Hn1mJ3pI870d/Xu4/Z7QBW+FZhyIyN7A93TDWRXld
         NExk57BxK0LKXIEO375RvV6hy0gbv17wMHfi7PVvDlw/PWi4+GABP6bMtonVbf1msVOC
         WP7akYEeuhnBQhU3rZC9RSDP7xdpgSk49HtZwIw6b08Ug7H53VOEFyeifxzK1TPLVy9S
         gm65T9Zn2jkzfbbo+hz+kTMnv59u3DGszZNriVqznHnQ8HPDmZ2wCj6GSkBY0AjVNfhl
         I/RQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h20-v6si156790ljj.5.2018.10.09.23.29.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Oct 2018 23:29:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,363,1534802400"; 
   d="scan'208";a="350453893"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Oct 2018 08:29:22 +0200
Date: Wed, 10 Oct 2018 08:29:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, greg@kroah.com
Subject: Re: [Outreachy kernel] [Outreachy Kernel][Patch v4] staging:
 mt7621-dma: Delete unused define
In-Reply-To: <20181010011035.GA13421@veda-VGN-CS3AGH-R>
Message-ID: <alpine.DEB.2.21.1810100828460.2477@hadrien>
References: <20181010011035.GA13421@veda-VGN-CS3AGH-R>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 10 Oct 2018, Bhanusree Pola wrote:

> delete unused '#define GDMA_REG_CTRL1_CONTINOUS BIT(14)'
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
> Change log:
>
> v4:
> -added change log
>
> v3:
> -modified subject line
> -modified commit message
> -delete unused #defne
>
> v2:
> -Fixed Comitt message in place
>
>  drivers/staging/mt7621-dma/ralink-gdma.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/mt7621-dma/ralink-gdma.c b/drivers/staging/mt7621-dma/ralink-gdma.c
> index 6d9fe175ea52..73dbc7fe38a2 100644
> --- a/drivers/staging/mt7621-dma/ralink-gdma.c
> +++ b/drivers/staging/mt7621-dma/ralink-gdma.c
> @@ -47,7 +47,6 @@
>  #define GDMA_REG_CTRL1_REQ_MASK		0x3f
>  #define GDMA_REG_CTRL1_SRC_REQ_SHIFT	16
>  #define GDMA_REG_CTRL1_DST_REQ_SHIFT	8
> -#define GDMA_REG_CTRL1_CONTINOUS	BIT(14)
>  #define GDMA_REG_CTRL1_NEXT_MASK	0x1f
>  #define GDMA_REG_CTRL1_NEXT_SHIFT	3
>  #define GDMA_REG_CTRL1_COHERENT		BIT(2)

There is a small thing that can be cleaned up here, which is that the
#define values are not nicely lined up.

julia

> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181010011035.GA13421%40veda-VGN-CS3AGH-R.
> For more options, visit https://groups.google.com/d/optout.
>

