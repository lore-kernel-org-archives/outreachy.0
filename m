X-GM-THRID: 6332173316844945408
X-Received: by 10.107.181.148 with SMTP id e142mr15181468iof.26.1474323989908;
        Mon, 19 Sep 2016 15:26:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.158.193 with SMTP id h184ls3558797ioe.33.gmail; Mon, 19
 Sep 2016 15:26:28 -0700 (PDT)
X-Received: by 10.98.16.86 with SMTP id y83mr4579688pfi.12.1474323988621;
        Mon, 19 Sep 2016 15:26:28 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z4si5345519pam.0.2016.09.19.15.26.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 15:26:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 21so6370413pfy.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 15:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lMFp2aO42rfkJNk0P4DUj5dx9ZNzE2RB5jPqheurStc=;
        b=C5AIq4IbYUPxNz/FHO5Y5OBMilTiz4fjmy2m/BUsvgf7nbaAtK8JmsdbfGm/IdBj+Z
         tsHt2zxPSaLIgJlYPEloqAGMEyyNpxTUNUpZ/PquopInCBKqF+h7DFhTUv/Jjg1TMI3j
         675oVeGNeQrFclvKrck3RGUQ2OGGsgU3kjw/6Ai8HLtTmdwwDbzOBA4icTnSzZpSskfE
         gNef8x63kFi6VkC2lxIu3Z7l2IxRD3CcUcrMa4cqhCGBu+4L2vBacpCOUswWqYmD9f/p
         q1VJMQwuT9f22shUNIAYnQo7zJyfUcW+35MOgeMZRgdSeIa3y8ZlxAaXLsD0VsQR1T0q
         714g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lMFp2aO42rfkJNk0P4DUj5dx9ZNzE2RB5jPqheurStc=;
        b=csjIGsenLXg//BN435YpPRW+KOBD3ufDlnh+EsfOsTFyOGKyniM1U4nLLJw88KRAMC
         GyCvIE94urU7HdgHlc77wofeaoDAGbLJK2XBaV+QVF7mj9aXtP0kziQeBkn0K5TONFbi
         BDevjcNSITLmT0dYIqFLKhHl/+1+TR9/3o93HKwn0i9cqG/83UcGY3FTC4zMsBlhpJ6N
         Kg0kZbW4ebk038Z2DW+yJg0dnLUB/l6vC7QkX+j6fEk7ozlnF+57OcYVvcrnhbtZGaUi
         Nz3bPwE0fdGYcmShUcplZ9XW9OzS0ShyxudjH87uH1qyjDbCCsDCg3daYpSY5gWipI5D
         kObw==
X-Gm-Message-State: AE9vXwPH2NpxKP+ANENIsMQK2O06mI7dGclxfd6y1L6fWZsXAMJ7hdKqajrgLOwCQ37OXA==
X-Received: by 10.98.0.69 with SMTP id 66mr50088354pfa.140.1474323988428;
        Mon, 19 Sep 2016 15:26:28 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.174.13])
        by smtp.gmail.com with ESMTPSA id co6sm27873975pad.23.2016.09.19.15.26.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 15:26:27 -0700 (PDT)
Date: Tue, 20 Sep 2016 03:56:10 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: clocking-wizard: Remove use of the kfree function
 on values allocated using devm_ functions
Message-ID: <20160919222610.GA12702@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Values allocated using the devm_functions are freed when the device is detached
and thus the use of the standard freeing function would cause a double free.
Hence the patch eliminates kfree function on clk_name.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
index 7b8be52..5e389e4 100644
--- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
+++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
@@ -214,7 +214,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 			&pdev->dev, clk_name,
 			__clk_get_name(clk_wzrd->clk_in1),
 			0, reg, 1);
-	kfree(clk_name);
+
 	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul])) {
 		dev_err(&pdev->dev, "unable to register fixed-factor clock\n");
 		ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul]);
@@ -268,8 +268,6 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		}
 	}
 
-	kfree(clk_name);
-
 	clk_wzrd->clk_data.clks = clk_wzrd->clkout;
 	clk_wzrd->clk_data.clk_num = ARRAY_SIZE(clk_wzrd->clkout);
 	of_clk_add_provider(np, of_clk_src_onecell_get, &clk_wzrd->clk_data);
@@ -294,7 +292,6 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 err_rm_int_clks:
 	clk_unregister(clk_wzrd->clks_internal[1]);
 err_rm_int_clk:
-	kfree(clk_name);
 	clk_unregister(clk_wzrd->clks_internal[0]);
 err_disable_clk:
 	clk_disable_unprepare(clk_wzrd->axi_clk);
-- 
2.7.4


