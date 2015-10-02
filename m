X-GM-THRID: 6201126582392717312
X-Received: by 10.67.3.137 with SMTP id bw9mr14502361pad.4.1443812293264;
        Fri, 02 Oct 2015 11:58:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.32.195 with SMTP id g186ls1065291iog.70.gmail; Fri, 02 Oct
 2015 11:58:12 -0700 (PDT)
X-Received: by 10.67.14.6 with SMTP id fc6mr14628367pad.14.1443812292827;
        Fri, 02 Oct 2015 11:58:12 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id pe1si1738472pac.2.2015.10.02.11.58.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 11:58:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pablk4 with SMTP id lk4so112965380pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 11:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=0l8C9Y+TnPvKFxjNiEH5CbF02fFAAkqv5r+W/1RxKbI=;
        b=smd3mc3SULbbsf1QTFJdOqebj3yK19ys5Z4VNs3B9uXCmNaClYylSN3W7epLG65s1B
         iWiKMrfxbUK9aI+CtO6iNn45LMhQ9TdgOTIzr4wc4u4xLq11LpsIU6YH7XyHROg+Jmaq
         srNTxU6DylCKQx1vXBz4MEQ5OPqgYmo3fV+/ZRv9OARbm9b80w0cZ4X9+0Ob7PqSdgvS
         HG1fWNDa2Ca5RPUOKlVq9ooFnKt0Zlu/+Zhn126RAvTxHzkdm2rRfp1Bfn4A9R4o9szW
         /wNo66QRwH8IAilwX2aF5dnbi1fn14MjyFgWC+1HXr1zbEx2bAImXPVA0A/Yydwk3beM
         ETww==
X-Received: by 10.68.249.66 with SMTP id ys2mr22214099pbc.82.1443812292696;
        Fri, 02 Oct 2015 11:58:12 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ql5sm13324792pac.46.2015.10.02.11.58.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 11:58:12 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: clocking-wizard: Use devm_kasprintf
Date: Sat,  3 Oct 2015 00:28:03 +0530
Message-Id: <1443812283-21310-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150205.560ED3C3.001C,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Use devm_kasprintf instead of kasprintf and remove various
gotos by direct returns. Also, drop labels err_rm_int_clks,
err_rm_int_clk and err_disable_clk as they are not used anymore.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 .../clocking-wizard/clk-xlnx-clock-wizard.c        | 32 ++++++++--------------
 1 file changed, 11 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
index b8e2f61..8c2205a 100644
--- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
+++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
@@ -189,8 +189,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	if (rate > WZRD_ACLK_MAX_FREQ) {
 		dev_err(&pdev->dev, "s_axi_aclk frequency (%lu) too high\n",
 			rate);
-		ret = -EINVAL;
-		goto err_disable_clk;
+		return -EINVAL;
 	}
 
 	/* we don't support fractional div/mul yet */
@@ -204,10 +203,10 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	/* register multiplier */
 	reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
 		     WZRD_CLKFBOUT_MULT_MASK) >> WZRD_CLKFBOUT_MULT_SHIFT;
-	clk_name = kasprintf(GFP_KERNEL, "%s_mul", dev_name(&pdev->dev));
+	clk_name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s_mul",
+				  dev_name(&pdev->dev));
 	if (!clk_name) {
-		ret = -ENOMEM;
-		goto err_disable_clk;
+		return -ENOMEM;
 	}
 	clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor(
 			&pdev->dev, clk_name,
@@ -217,16 +216,16 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul])) {
 		dev_err(&pdev->dev, "unable to register fixed-factor clock\n");
 		ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul]);
-		goto err_disable_clk;
+		return ret;
 	}
 
 	/* register div */
 	reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
 			WZRD_DIVCLK_DIVIDE_MASK) >> WZRD_DIVCLK_DIVIDE_SHIFT;
-	clk_name = kasprintf(GFP_KERNEL, "%s_mul_div", dev_name(&pdev->dev));
+	clk_name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s_mul_div",
+				  dev_name(&pdev->dev));
 	if (!clk_name) {
-		ret = -ENOMEM;
-		goto err_rm_int_clk;
+		return -ENOMEM;
 	}
 
 	clk_wzrd->clks_internal[wzrd_clk_mul_div] = clk_register_fixed_factor(
@@ -236,7 +235,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div])) {
 		dev_err(&pdev->dev, "unable to register divider clock\n");
 		ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div]);
-		goto err_rm_int_clk;
+		return ret;
 	}
 
 	/* register div per output */
@@ -247,8 +246,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 						  &clkout_name)) {
 			dev_err(&pdev->dev,
 				"clock output name not specified\n");
-			ret = -EINVAL;
-			goto err_rm_int_clks;
+			return -EINVAL;
 		}
 		reg = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(2) + i * 12);
 		reg &= WZRD_CLKOUT_DIVIDE_MASK;
@@ -263,7 +261,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 			dev_err(&pdev->dev,
 				"unable to register divider clock\n");
 			ret = PTR_ERR(clk_wzrd->clkout[i]);
-			goto err_rm_int_clks;
+			return ret;
 		}
 	}
 
@@ -290,14 +288,6 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 
 	return 0;
 
-err_rm_int_clks:
-	clk_unregister(clk_wzrd->clks_internal[1]);
-err_rm_int_clk:
-	kfree(clk_name);
-	clk_unregister(clk_wzrd->clks_internal[0]);
-err_disable_clk:
-	clk_disable_unprepare(clk_wzrd->axi_clk);
-
 	return ret;
 }
 
-- 
2.1.4


