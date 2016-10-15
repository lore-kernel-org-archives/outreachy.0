X-GM-THRID: 6341139895139958784
X-Received: by 10.28.154.209 with SMTP id c200mr64649wme.10.1476513830666;
        Fri, 14 Oct 2016 23:43:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.203.201 with SMTP id b192ls1591284lfg.23.gmail; Fri, 14 Oct
 2016 23:43:49 -0700 (PDT)
X-Received: by 10.25.74.138 with SMTP id x132mr448972lfa.29.1476513829809;
        Fri, 14 Oct 2016 23:43:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r131si83313wma.1.2016.10.14.23.43.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 23:43:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,496,1473112800"; 
   d="scan'208";a="240876865"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2016 08:43:49 +0200
Date: Sat, 15 Oct 2016 08:43:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: lidza.louina@gmail.com, markh@compro.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: dgnc: Add const qualifier
 to struct declaration.
In-Reply-To: <20161015003513.GA16186@lennorien.com>
Message-ID: <alpine.DEB.2.20.1610150843280.9280@hadrien>
References: <20161015003513.GA16186@lennorien.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 14 Oct 2016, Elise Lennion wrote:

> Const qualifier added to struct declaration to avoid data overwrite
> during runtime and improve security.
>
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>
>  v2: Rewrite log message.
>
>  drivers/staging/dgnc/dgnc_driver.c | 2 +-
>  drivers/staging/dgnc/dgnc_tty.c    | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_driver.c b/drivers/staging/dgnc/dgnc_driver.c
> index fd372d3..6576674 100644
> --- a/drivers/staging/dgnc/dgnc_driver.c
> +++ b/drivers/staging/dgnc/dgnc_driver.c
> @@ -93,7 +93,7 @@ struct board_id {
>  	unsigned int is_pci_express;
>  };
>
> -static struct board_id dgnc_ids[] = {
> +static const struct board_id dgnc_ids[] = {
>  	{	PCI_DEVICE_CLASSIC_4_PCI_NAME,		4,	0	},
>  	{	PCI_DEVICE_CLASSIC_4_422_PCI_NAME,	4,	0	},
>  	{	PCI_DEVICE_CLASSIC_8_PCI_NAME,		8,	0	},
> diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
> index ef9a45b..cf8aefd 100644
> --- a/drivers/staging/dgnc/dgnc_tty.c
> +++ b/drivers/staging/dgnc/dgnc_tty.c
> @@ -50,7 +50,7 @@ static unsigned char		*dgnc_TmpWriteBuf;
>  /*
>   * Default transparent print information.
>   */
> -static struct digi_t dgnc_digi_init = {
> +static const struct digi_t dgnc_digi_init = {
>  	.digi_flags =	DIGI_COOK,	/* Flags			*/
>  	.digi_maxcps =	100,		/* Max CPS			*/
>  	.digi_maxchar =	50,		/* Max chars in print queue	*/
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161015003513.GA16186%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

