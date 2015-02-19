X-GM-THRID: 746747592704
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35770f706c8015
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.146.65 with SMTP id ta1mr742543lbb.19.1424367653288;
        Thu, 19 Feb 2015 09:40:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.3.200 with SMTP id e8ls173480lae.65.gmail; Thu, 19 Feb
 2015 09:40:52 -0800 (PST)
X-Received: by 10.112.144.130 with SMTP id sm2mr771986lbb.9.1424367652863;
        Thu, 19 Feb 2015 09:40:52 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i7si6458912wif.0.2015.02.19.09.40.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 09:40:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,609,1418079600"; 
   d="scan'208";a="122561886"
Received: from technetium.rsr.lip6.fr ([132.227.76.37])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 18:40:52 +0100
Date: Thu, 19 Feb 2015 18:42:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] Staging: drivers: dma: ste_dma40:
 fixed trailing statements
In-Reply-To: <1424367316-26356-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1502191841560.3284@hadrien>
References: <1424367316-26356-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-40252671-1424367753=:3284"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-40252671-1424367753=:3284
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 19 Feb 2015, Hatice ERTÜRK wrote:

> Used checkpatch.pl on this patch.Trailing statements wrote on next line.

Did you run checkpatch on the result?  Because the breaks are still
trailing.

Please put at least one space after a period, for easier readability.

julia

>
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/dma/ste_dma40.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
> index 08b63f2..796c070 100644
> --- a/drivers/dma/ste_dma40.c
> +++ b/drivers/dma/ste_dma40.c
> @@ -2371,8 +2371,10 @@ static struct dma_chan *d40_xlate(struct of_phandle_args *dma_spec,
>  	flags = dma_spec->args[2];
>
>  	switch (D40_DT_FLAGS_MODE(flags)) {
> -	case 0: cfg.mode = STEDMA40_MODE_LOGICAL; break;
> -	case 1: cfg.mode = STEDMA40_MODE_PHYSICAL; break;
> +	case 0:
> +		cfg.mode = STEDMA40_MODE_LOGICAL; break;
> +	case 1:
> +		cfg.mode = STEDMA40_MODE_PHYSICAL; break;
>  	}
>
>  	switch (D40_DT_FLAGS_DIR(flags)) {
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424367316-26356-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-40252671-1424367753=:3284--

