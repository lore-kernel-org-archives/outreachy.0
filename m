X-GM-THRID: 6341120519688945664
X-Received: by 10.157.12.41 with SMTP id 38mr4056422otr.89.1476514231733;
        Fri, 14 Oct 2016 23:50:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.37 with SMTP id m37ls3381288iod.33.gmail; Fri, 14 Oct
 2016 23:50:30 -0700 (PDT)
X-Received: by 10.66.74.232 with SMTP id x8mr3524258pav.10.1476514230856;
        Fri, 14 Oct 2016 23:50:30 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i124si112423itf.2.2016.10.14.23.50.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 23:50:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,496,1473112800"; 
   d="scan'208";a="196860784"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2016 08:50:28 +0200
Date: Sat, 15 Oct 2016 08:50:27 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750fb: Add const
 qualifier to struct declaration.
In-Reply-To: <20161015003202.GA15932@lennorien.com>
Message-ID: <alpine.DEB.2.20.1610150850030.9280@hadrien>
References: <20161015003202.GA15932@lennorien.com>
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
>  drivers/staging/sm750fb/sm750.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index b094492..0663ec0 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -1188,7 +1188,7 @@ static int __init lynxfb_setup(char *options)
>  	return 0;
>  }
>
> -static struct pci_device_id smi_pci_table[] = {
> +static const struct pci_device_id smi_pci_table[] = {
>  	{ PCI_DEVICE(0x126f, 0x0750), },
>  	{0,}
>  };
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161015003202.GA15932%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

