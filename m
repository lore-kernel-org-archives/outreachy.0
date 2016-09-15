X-GM-THRID: 6330571692278022144
X-Received: by 10.28.207.134 with SMTP id f128mr627027wmg.6.1473951419179;
        Thu, 15 Sep 2016 07:56:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.94.147 with SMTP id s141ls341456wmb.0.gmail; Thu, 15 Sep
 2016 07:56:58 -0700 (PDT)
X-Received: by 10.28.208.134 with SMTP id h128mr622173wmg.1.1473951418578;
        Thu, 15 Sep 2016 07:56:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w79si205472wmw.0.2016.09.15.07.56.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 07:56:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,339,1470693600"; 
   d="scan'208";a="193565090"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 16:56:57 +0200
Date: Thu, 15 Sep 2016 16:56:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    jon.nettleton@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: olpc_dcon: Replace BUG/BUG_ON
 with WARN_ON
In-Reply-To: <20160915145101.GA6064@life-desktop>
Message-ID: <alpine.DEB.2.10.1609151656210.3045@hadrien>
References: <20160915145101.GA6064@life-desktop>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Sep 2016, Anchal Jain wrote:

> This patch fixed the warning detect by checkpatch.pl
>
> Avoid crashing the kernel - try using WARN_ON & recovery code rather than
> BUG() or BUG_ON().

I think that this is not a good idea.  It may be essential to crash the
kernel in these cases.  You would have to know why the kernel is able to
continue.

julia


>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/olpc_dcon/olpc_dcon.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/olpc_dcon/olpc_dcon.c b/drivers/staging/olpc_dcon/olpc_dcon.c
> index f45b2ef..62e70ee 100644
> --- a/drivers/staging/olpc_dcon/olpc_dcon.c
> +++ b/drivers/staging/olpc_dcon/olpc_dcon.c
> @@ -141,7 +141,7 @@ power_up:
>  	}
>  	if (x < 0) {
>  		pr_err("unable to stabilize dcon's smbus, reasserting power and praying.\n");
> -		BUG_ON(olpc_board_at_least(olpc_board(0xc2)));
> +		WAARN_ON(olpc_board_at_least(olpc_board(0xc2)));
>  		pm = 0;
>  		olpc_ec_cmd(EC_DCON_POWER_MODE, &pm, 1, NULL, 0);
>  		msleep(100);
> @@ -369,7 +369,7 @@ static void dcon_source_switch(struct work_struct *work)
>  		break;
>  	}
>  	default:
> -		BUG();
> +		WARN_ON();
>  	}
>
>  	dcon->curr_src = source;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160915145101.GA6064%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.
>

