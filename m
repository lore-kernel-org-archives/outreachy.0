X-GM-THRID: 6333834735065759744
X-Received: by 10.46.5.196 with SMTP id 187mr30126ljf.13.1474721674474;
        Sat, 24 Sep 2016 05:54:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.193 with SMTP id s184ls1737132lja.43.gmail; Sat, 24 Sep
 2016 05:54:33 -0700 (PDT)
X-Received: by 10.25.75.21 with SMTP id y21mr619307lfa.11.1474721673909;
        Sat, 24 Sep 2016 05:54:33 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 185si56718wmr.2.2016.09.24.05.54.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 05:54:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,387,1470693600"; 
   d="scan'208";a="238114006"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Sep 2016 14:54:33 +0200
Date: Sat, 24 Sep 2016 14:54:32 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: Jarod Wilson <jarod@wilsonet.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Amitoj Kaur Chawla <amitoj1606@gmail.com>, 
    Tapasweni Pathak <tapaswenipathak@gmail.com>, 
    Wolfram Sang <wsa-dev@sang-engineering.com>, 
    Maciek Borzecki <maciek.borzecki@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
    Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 3/6] staging: media: lirc: Replace
 data type with pointer of same type
In-Reply-To: <328a70961fc82df3d3444f551bdf1e7ab3fc0985.1474708456.git.namrataashettar@gmail.com>
Message-ID: <alpine.DEB.2.10.1609241453220.3447@hadrien>
References: <cover.1474708455.git.namrataashettar@gmail.com> <328a70961fc82df3d3444f551bdf1e7ab3fc0985.1474708456.git.namrataashettar@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 24 Sep 2016, Namrata A Shettar wrote:

> Replace data type with pointer of same type in sizeof()  to resolve checkpatch issue as both are of same size.

There is an unnecessary double space after sizeof() in the commit message,
and the message exceeds 80 characters.  It is better to stop around 70 as
the message will end up indented a bit in the git history.

julia

>
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/media/lirc/lirc_imon.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
> index b1c28e5..198a805 100644
> --- a/drivers/staging/media/lirc/lirc_imon.c
> +++ b/drivers/staging/media/lirc/lirc_imon.c
> @@ -702,7 +702,7 @@ static int imon_probe(struct usb_interface *interface,
>  	/* prevent races probing devices w/multiple interfaces */
>  	mutex_lock(&driver_lock);
>
> -	context = kzalloc(sizeof(struct imon_context), GFP_KERNEL);
> +	context = kzalloc(sizeof(*context), GFP_KERNEL);
>  	if (!context)
>  		goto driver_unlock;
>
> @@ -782,11 +782,11 @@ static int imon_probe(struct usb_interface *interface,
>  			__func__, vfd_proto_6p);
>  	}
>
> -	driver = kzalloc(sizeof(struct lirc_driver), GFP_KERNEL);
> +	driver = kzalloc(sizeof(*driver), GFP_KERNEL);
>  	if (!driver)
>  		goto free_context;
>
> -	rbuf = kmalloc(sizeof(struct lirc_buffer), GFP_KERNEL);
> +	rbuf = kmalloc(sizeof(*rbuf), GFP_KERNEL);
>  	if (!rbuf)
>  		goto free_driver;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/328a70961fc82df3d3444f551bdf1e7ab3fc0985.1474708456.git.namrataashettar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

