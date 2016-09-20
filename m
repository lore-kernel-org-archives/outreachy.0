X-GM-THRID: 6332173316844945408
X-Received: by 10.28.197.65 with SMTP id v62mr88615wmf.6.1474351916437;
        Mon, 19 Sep 2016 23:11:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.1.16 with SMTP id 16ls959097wmb.7.canary; Mon, 19 Sep 2016
 23:11:56 -0700 (PDT)
X-Received: by 10.194.106.72 with SMTP id gs8mr885377wjb.14.1474351915955;
        Mon, 19 Sep 2016 23:11:55 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y6si1588564wmg.0.2016.09.19.23.11.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 23:11:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,366,1470693600"; 
   d="scan'208";a="193985905"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Sep 2016 08:11:55 +0200
Date: Tue, 20 Sep 2016 08:11:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: clocking-wizard: Remove use
 of the kfree function on values allocated using devm_ functions
In-Reply-To: <20160919222610.GA12702@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609200757120.3346@hadrien>
References: <20160919222610.GA12702@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 20 Sep 2016, sayli karnik wrote:

> Values allocated using the devm_functions are freed when the device is detached
> and thus the use of the standard freeing function would cause a double free.
> Hence the patch eliminates kfree function on clk_name.
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> index 7b8be52..5e389e4 100644
> --- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> +++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> @@ -214,7 +214,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>  			&pdev->dev, clk_name,
>  			__clk_get_name(clk_wzrd->clk_in1),
>  			0, reg, 1);
> -	kfree(clk_name);
> +

I'm confused.  Looking a few lines up from this assignment, I see:

clk_name = kasprintf(GFP_KERNEL, "%s_mul", dev_name(&pdev->dev))

There are devm functions for some other things, but not clk_name.

julia

>  	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul])) {
>  		dev_err(&pdev->dev, "unable to register fixed-factor clock\n");
>  		ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul]);
> @@ -268,8 +268,6 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>  		}
>  	}
>
> -	kfree(clk_name);
> -
>  	clk_wzrd->clk_data.clks = clk_wzrd->clkout;
>  	clk_wzrd->clk_data.clk_num = ARRAY_SIZE(clk_wzrd->clkout);
>  	of_clk_add_provider(np, of_clk_src_onecell_get, &clk_wzrd->clk_data);
> @@ -294,7 +292,6 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>  err_rm_int_clks:
>  	clk_unregister(clk_wzrd->clks_internal[1]);
>  err_rm_int_clk:
> -	kfree(clk_name);
>  	clk_unregister(clk_wzrd->clks_internal[0]);
>  err_disable_clk:
>  	clk_disable_unprepare(clk_wzrd->axi_clk);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160919222610.GA12702%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

