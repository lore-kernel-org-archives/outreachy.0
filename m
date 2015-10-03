X-GM-THRID: 6201126582392717312
X-Received: by 10.182.65.134 with SMTP id x6mr16715625obs.14.1443861368770;
        Sat, 03 Oct 2015 01:36:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.41.8 with SMTP id b8ls767855igl.9.canary; Sat, 03 Oct 2015
 01:36:08 -0700 (PDT)
X-Received: by 10.107.150.66 with SMTP id y63mr17296609iod.11.1443861368432;
        Sat, 03 Oct 2015 01:36:08 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id el2si2277148pbb.0.2015.10.03.01.36.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 01:36:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hy16so127772096pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 01:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=8+XBqheZvG21fhezDuqPpavybO8Rx6sDkCWDqGyjKDQ=;
        b=HpsRqr6GNdB613544q7vZfm5uPDlzT9Tnpbg1suzx+L5qBrQ+oAJPsvmxMkMCCu03E
         /sy4yqj//3Hfdulkibyk/mwKkiy3g9nM5zgGSFhAuDNW/qFTdNzcKwiQTCDs7A+vVKXI
         feoW/yBObJWi/pBtjU/qF0mQKGiIIuZ6Jp7NrZSLMNVkM042Y57nmgK94kQmsPaelxaA
         flz3tTieM2v1cb8IEsJTAX8+iIkOzk9KvyZuzpoZXnhXESE7vVpI8Wh4u9UaLEH6KKQk
         eRPjrJ9L3tArkvEOUKk6EohyL/teZ5dA9iGmGOjiQ1I04cz4hNZ7+TWEewhj6vAp11iV
         2Z8Q==
X-Received: by 10.68.190.170 with SMTP id gr10mr25279333pbc.91.1443861368267;
        Sat, 03 Oct 2015 01:36:08 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id rb8sm16066486pbb.63.2015.10.03.01.35.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Oct 2015 01:36:07 -0700 (PDT)
Date: Sat, 3 Oct 2015 14:05:55 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Julia Lawall <julia.lawall@lip6.fr>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: clocking-wizard: Use
 devm_kasprintf
In-Reply-To: <alpine.DEB.2.02.1510022345320.2163@localhost6.localdomain6>
Message-ID: <alpine.DEB.2.11.1510031401280.21988@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443812283-21310-1-git-send-email-shraddha.6596@gmail.com> <alpine.DEB.2.02.1510022345320.2163@localhost6.localdomain6>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150208.560F9376.00BC,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Fri, 2 Oct 2015, Julia Lawall wrote:

> On Sat, 3 Oct 2015, Shraddha Barke wrote:
>
>> Use devm_kasprintf instead of kasprintf and remove various
>> gotos by direct returns. Also, drop labels err_rm_int_clks,
>> err_rm_int_clk and err_disable_clk as they are not used anymore.
>>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>> ---
>>  .../clocking-wizard/clk-xlnx-clock-wizard.c        | 32 ++++++++--------------
>>  1 file changed, 11 insertions(+), 21 deletions(-)
>>
>> diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
>> index b8e2f61..8c2205a 100644
>> --- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
>> +++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
>> @@ -189,8 +189,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>>  	if (rate > WZRD_ACLK_MAX_FREQ) {
>>  		dev_err(&pdev->dev, "s_axi_aclk frequency (%lu) too high\n",
>>  			rate);
>> -		ret = -EINVAL;
>> -		goto err_disable_clk;
>> +		return -EINVAL;
>
> Why do you make this change?  On failing, once you have called
> clk_prepare_enable, you need to call clk_disable_unprepare.
>
>>  	}
>>
>>  	/* we don't support fractional div/mul yet */
>> @@ -204,10 +203,10 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>>  	/* register multiplier */
>>  	reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
>>  		     WZRD_CLKFBOUT_MULT_MASK) >> WZRD_CLKFBOUT_MULT_SHIFT;
>> -	clk_name = kasprintf(GFP_KERNEL, "%s_mul", dev_name(&pdev->dev));
>> +	clk_name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s_mul",
>> +				  dev_name(&pdev->dev));
>>  	if (!clk_name) {
>> -		ret = -ENOMEM;
>> -		goto err_disable_clk;
>> +		return -ENOMEM;
>
> Likewise here.  Changing kasprintf to devm_kasprintf doesn't have any
> impact on what needs to be done on failure of devm_kasprintf itself.  It
> is only the subsequent failure paths that should be simplified, because
> they don't need to free the result of devm_kasprintf.
>
> However, looking at the complete code, I see that the first call to
> kasprintf is followed by the following:
>
>       clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor(
>                        &pdev->dev, clk_name,
>                        __clk_get_name(clk_wzrd->clk_in1),
>                        0, reg, 1);
>        kfree(clk_name);
>
> So in the original code, clk_name was free pretty much immediately, and in
> any case always in the probe function.  By using the devm function, you
> have caused it to be only freed in the probe function if the probe
> function fails, and to otherwise be freed when the remove function
> succeeds.  So you have probably greatly extended the lifetime of this
> data.  It seems that it would be better to leave this part of the code as
> it is.
>
>>  	}
>>  	clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor(
>>  			&pdev->dev, clk_name,
>> @@ -217,16 +216,16 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>>  	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul])) {
>>  		dev_err(&pdev->dev, "unable to register fixed-factor clock\n");
>>  		ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul]);
>> -		goto err_disable_clk;
>> +		return ret;
>>  	}
>>
>>  	/* register div */
>>  	reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
>>  			WZRD_DIVCLK_DIVIDE_MASK) >> WZRD_DIVCLK_DIVIDE_SHIFT;
>> -	clk_name = kasprintf(GFP_KERNEL, "%s_mul_div", dev_name(&pdev->dev));
>> +	clk_name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s_mul_div",
>> +				  dev_name(&pdev->dev));
>>  	if (!clk_name) {
>> -		ret = -ENOMEM;
>> -		goto err_rm_int_clk;
>> +		return -ENOMEM;
>>  	}
>
> Actually, if one looks closely, there is also a kfree for this clk_name in
> the probe function.  So this one shouldn't be changed either.


Yes, I got it. I only just started learning about devm functions.

Shraddha
>
>>  	clk_wzrd->clks_internal[wzrd_clk_mul_div] = clk_register_fixed_factor(
>> @@ -236,7 +235,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>>  	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div])) {
>>  		dev_err(&pdev->dev, "unable to register divider clock\n");
>>  		ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div]);
>> -		goto err_rm_int_clk;
>> +		return ret;
>>  	}
>>
>>  	/* register div per output */
>> @@ -247,8 +246,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>>  						  &clkout_name)) {
>>  			dev_err(&pdev->dev,
>>  				"clock output name not specified\n");
>> -			ret = -EINVAL;
>> -			goto err_rm_int_clks;
>> +			return -EINVAL;
>>  		}
>>  		reg = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(2) + i * 12);
>>  		reg &= WZRD_CLKOUT_DIVIDE_MASK;
>> @@ -263,7 +261,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>>  			dev_err(&pdev->dev,
>>  				"unable to register divider clock\n");
>>  			ret = PTR_ERR(clk_wzrd->clkout[i]);
>> -			goto err_rm_int_clks;
>> +			return ret;
>>  		}
>>  	}
>>
>> @@ -290,14 +288,6 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>>
>>  	return 0;
>>
>> -err_rm_int_clks:
>> -	clk_unregister(clk_wzrd->clks_internal[1]);
>> -err_rm_int_clk:
>> -	kfree(clk_name);
>> -	clk_unregister(clk_wzrd->clks_internal[0]);
>> -err_disable_clk:
>> -	clk_disable_unprepare(clk_wzrd->axi_clk);
>> -
>
> Even if you could use devm_asprintf, you couldn't remove all of this.
> The devm_kasprintf only affects the management of clk_name.
>
> julia
>
>>  	return ret;
>>  }
>>
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443812283-21310-1-git-send-email-shraddha.6596%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>
>

