X-GM-THRID: 6332173316844945408
X-Received: by 10.66.148.202 with SMTP id tu10mr16176300pab.8.1474381803509;
        Tue, 20 Sep 2016 07:30:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.140 with SMTP id n12ls4024242ioo.14.gmail; Tue, 20 Sep
 2016 07:30:01 -0700 (PDT)
X-Received: by 10.66.233.5 with SMTP id ts5mr5049447pac.16.1474381801432;
        Tue, 20 Sep 2016 07:30:01 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x241.google.com (mail-yw0-x241.google.com. [2607:f8b0:4002:c05::241])
        by gmr-mx.google.com with ESMTPS id u139si1185036ywe.5.2016.09.20.07.30.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 07:30:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) client-ip=2607:f8b0:4002:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x241.google.com with SMTP id v2so781843ywg.3
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 07:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=PJ+NuS4w6YlQAfn+rjOSydH3h6RU1ixmel3mtKxFHaA=;
        b=xgEH7S3PVuXkeIRsYWsoUYccIJwdsLL023wafYPsITQgc99L0UwYtfNmEonaItYqAu
         2YMznBiMCcDspDDGLKTcq1P+f9FLVSYlQ8iBqhgPKOm04mh5VI9qIAls4IHPWHpTEFtF
         /+ezeTXXl8THEEVrzm6dv+x/jKOV2QURXLcfcJfZhCNqw1zojJRNlY1FnDpPgdt+0syC
         266rb0ZPwtAhz26DildCMTR8pb/7YkH3fY1peC6OU38kw/YJiKdxpbzWs1BEpqEuWSHV
         8to4a10+R6x4nREOM49BZ4LGLntrxaJZhpH3kZDTb8mdAkK3jTKjehFnMGeXw1mZqZh5
         S6Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=PJ+NuS4w6YlQAfn+rjOSydH3h6RU1ixmel3mtKxFHaA=;
        b=ANmcLTPAphOX1M8bPcWEqvJWAoYInX8G9TIwWf4FADcy2/Y+JS3X7dIIuo4g23H7hw
         jO4mz+tOWDKwF9Wr8Fyt5/IGeKNU8q0DjU/pMwC9vjAtw9PmHAYkdE67PXiZBh0BZO1a
         whZPNx08kFA+Hox8lBjcIVx3qFP/PTYUZ+66KHopGYyvW3nEBuMkir3Jzfn4Uz58plhg
         bV0kgQRegoQRwoXm3zgLLsHrmwMhcgn51MYc7cRg3pC7eY/rdFTWY2ovBAbw7rdD15hz
         VIZO8dtS2VsHQAYG+NODOLN8k4EWa78IyUVujhOLxgt2jmSD5UtYz3edYq4tI6Nz07VL
         AmmA==
X-Gm-Message-State: AE9vXwOoS5QhTrjWMJEod7tZ1F3+L+5WU/eelJoqFk2X7uR89gzyUAI8aTpm/B+vafSWJKaTRTKJkGUm/nne2w==
X-Received: by 10.129.163.207 with SMTP id a198mr29281079ywh.174.1474381801146;
 Tue, 20 Sep 2016 07:30:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.41.132 with HTTP; Tue, 20 Sep 2016 07:29:20 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609200757120.3346@hadrien>
References: <20160919222610.GA12702@sayli-HP-15-Notebook-PC> <alpine.DEB.2.10.1609200757120.3346@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Tue, 20 Sep 2016 19:59:20 +0530
Message-ID: <CAKG5xWjkmBsSN6hR-J0O8Cbx8egzfbYoX2zwajTf5XPNs-otYQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: clocking-wizard: Remove use
 of the kfree function on values allocated using devm_ functions
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 20, 2016 at 11:41 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 20 Sep 2016, sayli karnik wrote:
>
>> Values allocated using the devm_functions are freed when the device is detached
>> and thus the use of the standard freeing function would cause a double free.
>> Hence the patch eliminates kfree function on clk_name.
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c | 5 +----
>>  1 file changed, 1 insertion(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
>> index 7b8be52..5e389e4 100644
>> --- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
>> +++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
>> @@ -214,7 +214,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>>                       &pdev->dev, clk_name,
>>                       __clk_get_name(clk_wzrd->clk_in1),
>>                       0, reg, 1);
>> -     kfree(clk_name);
>> +
>
> I'm confused.  Looking a few lines up from this assignment, I see:
>
> clk_name = kasprintf(GFP_KERNEL, "%s_mul", dev_name(&pdev->dev))
>
Oh right, sorry. Mistook kasprintf() for devm_kasprintf().

thanks
sayli

> There are devm functions for some other things, but not clk_name.
>
> julia
>
>>       if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul])) {
>>               dev_err(&pdev->dev, "unable to register fixed-factor clock\n");
>>               ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul]);
>> @@ -268,8 +268,6 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>>               }
>>       }
>>
>> -     kfree(clk_name);
>> -
>>       clk_wzrd->clk_data.clks = clk_wzrd->clkout;
>>       clk_wzrd->clk_data.clk_num = ARRAY_SIZE(clk_wzrd->clkout);
>>       of_clk_add_provider(np, of_clk_src_onecell_get, &clk_wzrd->clk_data);
>> @@ -294,7 +292,6 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>>  err_rm_int_clks:
>>       clk_unregister(clk_wzrd->clks_internal[1]);
>>  err_rm_int_clk:
>> -     kfree(clk_name);
>>       clk_unregister(clk_wzrd->clks_internal[0]);
>>  err_disable_clk:
>>       clk_disable_unprepare(clk_wzrd->axi_clk);
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160919222610.GA12702%40sayli-HP-15-Notebook-PC.
>> For more options, visit https://groups.google.com/d/optout.
>>

