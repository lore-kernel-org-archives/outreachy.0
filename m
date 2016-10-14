X-GM-THRID: 6341139895139958784
X-Received: by 10.13.192.7 with SMTP id b7mr2344519ywd.136.1476420508630;
        Thu, 13 Oct 2016 21:48:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.213 with SMTP id r21ls7173244otr.17.gmail; Thu, 13 Oct
 2016 21:48:28 -0700 (PDT)
X-Received: by 10.129.50.211 with SMTP id y202mr2593511ywy.95.1476420507954;
        Thu, 13 Oct 2016 21:48:27 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x14si2270523vkd.3.2016.10.13.21.48.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 21:48:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,491,1473112800"; 
   d="scan'208";a="196729484"
Received: from ppp-seco11pareq2-46-193-142-73.wb.wifirst.net (HELO hadrien) ([46.193.142.73])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Oct 2016 06:48:25 +0200
Date: Fri, 14 Oct 2016 06:48:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: lidza.louina@gmail.com, markh@compro.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: Add const qualifier
 to struct declaration.
In-Reply-To: <20161014022116.GA5477@lennorien.com>
Message-ID: <alpine.DEB.2.10.1610140647410.2959@hadrien>
References: <20161014022116.GA5477@lennorien.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 13 Oct 2016, Elise Lennion wrote:

> Const qualifier added to struct declaration to make the code more
> efficient.

It's not an efficiency issue.  The goal is to protect the data from being
overwritten at runtime.

julia

>
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161014022116.GA5477%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

