X-GM-THRID: 6329774591118934016
X-Received: by 10.46.0.14 with SMTP id 14mr3513730lja.8.1473765709763;
        Tue, 13 Sep 2016 04:21:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.196.4 with SMTP id u4ls251884wmf.2.gmail; Tue, 13 Sep 2016
 04:21:49 -0700 (PDT)
X-Received: by 10.28.43.129 with SMTP id r123mr61961wmr.6.1473765709243;
        Tue, 13 Sep 2016 04:21:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si1369594wmd.1.2016.09.13.04.21.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 04:21:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,328,1470693600"; 
   d="scan'208";a="236261266"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 13:21:48 +0200
Date: Tue, 13 Sep 2016 13:21:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    mchehab@kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 5/6] staging: media: lirc: lirc_imon:
 Add space around the operators
In-Reply-To: <20160913111752.GA10774@life-desktop>
Message-ID: <alpine.DEB.2.10.1609131321240.3355@hadrien>
References: <20160913111752.GA10774@life-desktop>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Sep 2016, Anchal Jain wrote:

> CHECK: Add space around the operators { "<<", "*"}.
>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>

This looks better.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> 	changes in v2:
> 	-add cc
>  drivers/staging/media/lirc/lirc_imon.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
> index e44f841..ee12da2 100644
> --- a/drivers/staging/media/lirc/lirc_imon.c
> +++ b/drivers/staging/media/lirc/lirc_imon.c
> @@ -561,7 +561,7 @@ static void submit_data(struct imon_context *context)
>  		value |= PULSE_BIT;
>
>  	for (i = 0; i < 4; ++i)
> -		buf[i] = value>>(i*8);
> +		buf[i] = value >> (i * 8);
>
>  	lirc_buffer_write(context->driver->rbuf, buf);
>  	wake_up(&context->driver->rbuf->wait_poll);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160913111752.GA10774%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.
>

