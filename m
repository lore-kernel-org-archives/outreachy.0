X-GM-THRID: 6331784353650049024
X-Received: by 10.98.197.194 with SMTP id j185mr3600886pfg.25.1474263886004;
        Sun, 18 Sep 2016 22:44:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.162 with SMTP id 31ls734981otj.21.gmail; Sun, 18 Sep
 2016 22:44:45 -0700 (PDT)
X-Received: by 10.157.43.10 with SMTP id o10mr4073882otb.141.1474263885581;
        Sun, 18 Sep 2016 22:44:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id z4si4371886pam.0.2016.09.18.22.44.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 22:44:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id vz6so6454843pab.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 22:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZPDL5s/CtLi5sXF7dyjx/uexT0YAuntrESWSRVkYxEQ=;
        b=GguRsIryds/CjMutQpWy3cYwFM4NJVtyaY37VkWuNyENAqltSdlqVFN1MTtTF1ynlM
         dtzd8iJ3yaYSOCX0FNZ2pNrktiUcYdGwjGHNv9xBN4fdaFCyv4OvtMV84OxY8E7qYjo3
         zTVdsakf/zhur69FCbkyRYn5S3kd28WDoFirfjHBVYxfeghuTqxmSoInlpIKjrfiEfyb
         zIjtOi+x4bBDVvQTOMzjcbD/7qv+3BK/mUJBNZ07EX0b4J9C7qtDeibM9TmLtqQSV0dW
         zS2fVJwZkwxK/W2n4W52ZTVDf7EMOUUuvLJeSbeLfNh0cFVFrBJ4u8Hzkt4Yt546kW53
         FOcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZPDL5s/CtLi5sXF7dyjx/uexT0YAuntrESWSRVkYxEQ=;
        b=Ty/pD+3fUq0sA6O1IByspAbxhdDfflEsSOyxA44KK30u29k/k4ZSw0TcRUo25Slh0M
         2XRoSiiK3co9FLE3JPbwlQKMpdG6yUDeob90JFyRbitYUGimAZKOYS2XkiZxvKkv900U
         4ug2XilOsFAey08ffnVvlMbJcelv6Qe6oeKkV3h0lxWUnqTslmAGe/dxilwcI7YHlw0f
         XpbYM92LY28QZVYMy2JRkCrUEyyVqI9TORjToiBm0ATpn4hmP3tVaiXqCO/KylAKWdy+
         z4HhLv5z/IrBjydNNdF/RG4WkWGah1jTHHU2Bdm/3ZZYS1FColQwoBLRaaE4AMPBpFVA
         9oCg==
X-Gm-Message-State: AE9vXwOXVBOfWL/Z/xUWInIGPv5bQ7ZVhUougtUlk8+wTQEw+FL8Q1ZoeBIIxHuUbsgqQA==
X-Received: by 10.66.190.38 with SMTP id gn6mr27185433pac.8.1474263885348;
        Sun, 18 Sep 2016 22:44:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id ae7sm27892386pac.19.2016.09.18.22.44.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 22:44:45 -0700 (PDT)
Date: Sun, 18 Sep 2016 22:44:43 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org, knaack.h@gmx.de,
	lars@metafoo.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: trigger: Use devm
 functions
Message-ID: <20160919054442.GB2699@d830.WORKGROUP>
References: <1474233410-6932-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1474233410-6932-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Sep 19, 2016 at 02:46:50AM +0530, Bhumika Goyal wrote:
> Use managed resource functions devm_iio_trigger_alloc and
> devm_request_irq instead of iio_trigger_alloc and request_irq.
> Remove corresponding calls to free_irq in the probe and remove
> functions. Drop the now unnecessary goto labels and replace various
> gotos with direct returns.
> request_irq replacement done using coccinelle.

Hi Bhumika, 
Thanks for the patch.  This seems like it's worthy of 2 separate
patches. 

Also, I'm a bit confused with why I don't see an iio_trigger_free
that is going away, when you switch to the devm_iio_trigger_alloc
functions, but I realize there isn't one there to remove. hmm???

alisons



> 
> @platform@
> identifier p, probefn, removefn;
> @@
> struct platform_driver p = {
>   .probe = probefn,
>   .remove = removefn,
> };
> 
> @prb@
> identifier platform.probefn, pdev;
> expression list E;
> expression e;
> 
> @@
> probefn(struct platform_device *pdev, ...) {
>   <+...
> - e = request_irq(E);
> + e = devm_request_irq(&pdev->dev,E);
>   ...
> ?-free_irq(...);
>   ...+>
> }
> 
> @rem depends on prb@
> identifier platform.removefn;
> expression e;
> @@
> removefn(...) {
>   <...
> - free_irq(...);
>   ...>
> }
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
> index 38dca69..ea4845c 100644
> --- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
> +++ b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
> @@ -200,7 +200,8 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
>  	st->timer_num = ret;
>  	st->t = &iio_bfin_timer_code[st->timer_num];
>  
> -	st->trig = iio_trigger_alloc("bfintmr%d", st->timer_num);
> +	st->trig = devm_iio_trigger_alloc(&pdev->dev, "bfintmr%d",
> +                                          st->timer_num);
>  	if (!st->trig)
>  		return -ENOMEM;
>  
> @@ -211,8 +212,8 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto out;
>  
> -	ret = request_irq(st->irq, iio_bfin_tmr_trigger_isr,
> -			  0, st->trig->name, st);
> +	ret = devm_request_irq(&pdev->dev, st->irq, iio_bfin_tmr_trigger_isr,
> +			       0, st->trig->name, st);
>  	if (ret) {
>  		dev_err(&pdev->dev,
>  			"request IRQ-%d failed", st->irq);
> @@ -229,7 +230,7 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
>  
>  		ret = peripheral_request(st->t->pin, st->trig->name);
>  		if (ret)
> -			goto out_free_irq;
> +			return ret;
>  
>  		val = (unsigned long long)get_sclk() * pdata->duty_ns;
>  		do_div(val, NSEC_PER_SEC);
> @@ -255,8 +256,7 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
>  	platform_set_drvdata(pdev, st);
>  
>  	return 0;
> -out_free_irq:
> -	free_irq(st->irq, st);
> +
>  out1:
>  	iio_trigger_unregister(st->trig);
>  out:
> @@ -271,7 +271,6 @@ static int iio_bfin_tmr_trigger_remove(struct platform_device *pdev)
>  	disable_gptimers(st->t->bit);
>  	if (st->output_enable)
>  		peripheral_free(st->t->pin);
> -	free_irq(st->irq, st);
>  	iio_trigger_unregister(st->trig);
>  	iio_trigger_put(st->trig);
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474233410-6932-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

