X-GM-THRID: 6201126582392717312
X-Received: by 10.112.190.65 with SMTP id go1mr3111849lbc.9.1443823053679;
        Fri, 02 Oct 2015 14:57:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.27.19 with SMTP id b19ls253546lfb.75.gmail; Fri, 02 Oct
 2015 14:57:33 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr3032174lbc.23.1443823053060;
        Fri, 02 Oct 2015 14:57:33 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ch7si32556wib.2.2015.10.02.14.57.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 14:57:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,624,1437429600"; 
   d="scan'208";a="180767358"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Oct 2015 23:57:32 +0200
Date: Fri, 2 Oct 2015 23:57:32 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: clocking-wizard: Use
 devm_kasprintf
In-Reply-To: <1443812283-21310-1-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.02.1510022345320.2163@localhost6.localdomain6>
References: <1443812283-21310-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 3 Oct 2015, Shraddha Barke wrote:

> Use devm_kasprintf instead of kasprintf and remove various
> gotos by direct returns. Also, drop labels err_rm_int_clks,
> err_rm_int_clk and err_disable_clk as they are not used anymore.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  .../clocking-wizard/clk-xlnx-clock-wizard.c        | 32 ++++++++--------------
>  1 file changed, 11 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> index b8e2f61..8c2205a 100644
> --- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> +++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> @@ -189,8 +189,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>  	if (rate > WZRD_ACLK_MAX_FREQ) {
>  		dev_err(&pdev->dev, "s_axi_aclk frequency (%lu) too high\n",
>  			rate);
> -		ret = -EINVAL;
> -		goto err_disable_clk;
> +		return -EINVAL;

Why do you make this change?  On failing, once you have called 
clk_prepare_enable, you need to call clk_disable_unprepare.

>  	}
>  
>  	/* we don't support fractional div/mul yet */
> @@ -204,10 +203,10 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>  	/* register multiplier */
>  	reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
>  		     WZRD_CLKFBOUT_MULT_MASK) >> WZRD_CLKFBOUT_MULT_SHIFT;
> -	clk_name = kasprintf(GFP_KERNEL, "%s_mul", dev_name(&pdev->dev));
> +	clk_name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s_mul",
> +				  dev_name(&pdev->dev));
>  	if (!clk_name) {
> -		ret = -ENOMEM;
> -		goto err_disable_clk;
> +		return -ENOMEM;

Likewise here.  Changing kasprintf to devm_kasprintf doesn't have any 
impact on what needs to be done on failure of devm_kasprintf itself.  It 
is only the subsequent failure paths that should be simplified, because 
they don't need to free the result of devm_kasprintf.

However, looking at the complete code, I see that the first call to 
kasprintf is followed by the following:

       clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor(
                        &pdev->dev, clk_name,
                        __clk_get_name(clk_wzrd->clk_in1),
                        0, reg, 1);
        kfree(clk_name);

So in the original code, clk_name was free pretty much immediately, and in 
any case always in the probe function.  By using the devm function, you 
have caused it to be only freed in the probe function if the probe 
function fails, and to otherwise be freed when the remove function 
succeeds.  So you have probably greatly extended the lifetime of this 
data.  It seems that it would be better to leave this part of the code as 
it is.

>  	}
>  	clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor(
>  			&pdev->dev, clk_name,
> @@ -217,16 +216,16 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>  	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul])) {
>  		dev_err(&pdev->dev, "unable to register fixed-factor clock\n");
>  		ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul]);
> -		goto err_disable_clk;
> +		return ret;
>  	}
>  
>  	/* register div */
>  	reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
>  			WZRD_DIVCLK_DIVIDE_MASK) >> WZRD_DIVCLK_DIVIDE_SHIFT;
> -	clk_name = kasprintf(GFP_KERNEL, "%s_mul_div", dev_name(&pdev->dev));
> +	clk_name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s_mul_div",
> +				  dev_name(&pdev->dev));
>  	if (!clk_name) {
> -		ret = -ENOMEM;
> -		goto err_rm_int_clk;
> +		return -ENOMEM;
>  	}

Actually, if one looks closely, there is also a kfree for this clk_name in 
the probe function.  So this one shouldn't be changed either.

>  	clk_wzrd->clks_internal[wzrd_clk_mul_div] = clk_register_fixed_factor(
> @@ -236,7 +235,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>  	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div])) {
>  		dev_err(&pdev->dev, "unable to register divider clock\n");
>  		ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div]);
> -		goto err_rm_int_clk;
> +		return ret;
>  	}
>  
>  	/* register div per output */
> @@ -247,8 +246,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>  						  &clkout_name)) {
>  			dev_err(&pdev->dev,
>  				"clock output name not specified\n");
> -			ret = -EINVAL;
> -			goto err_rm_int_clks;
> +			return -EINVAL;
>  		}
>  		reg = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(2) + i * 12);
>  		reg &= WZRD_CLKOUT_DIVIDE_MASK;
> @@ -263,7 +261,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>  			dev_err(&pdev->dev,
>  				"unable to register divider clock\n");
>  			ret = PTR_ERR(clk_wzrd->clkout[i]);
> -			goto err_rm_int_clks;
> +			return ret;
>  		}
>  	}
>  
> @@ -290,14 +288,6 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>  
>  	return 0;
>  
> -err_rm_int_clks:
> -	clk_unregister(clk_wzrd->clks_internal[1]);
> -err_rm_int_clk:
> -	kfree(clk_name);
> -	clk_unregister(clk_wzrd->clks_internal[0]);
> -err_disable_clk:
> -	clk_disable_unprepare(clk_wzrd->axi_clk);
> -

Even if you could use devm_asprintf, you couldn't remove all of this.  
The devm_kasprintf only affects the management of clk_name.

julia

>  	return ret;
>  }
>  
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443812283-21310-1-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

