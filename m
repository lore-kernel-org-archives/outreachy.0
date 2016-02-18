X-GM-THRID: 6252641236847427584
X-Received: by 10.182.72.137 with SMTP id d9mr7288907obv.31.1455806544750;
        Thu, 18 Feb 2016 06:42:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.98 with SMTP id a2ls2711091obh.80.gmail; Thu, 18 Feb
 2016 06:42:24 -0800 (PST)
X-Received: by 10.182.24.199 with SMTP id w7mr7057402obf.48.1455806544132;
        Thu, 18 Feb 2016 06:42:24 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id yd9si980326pab.1.2016.02.18.06.42.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 06:42:24 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id ho8so32789004pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 06:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Mi8l3i0weNGSjeehjzYl6OjM9JQBncybNjiFxYuEBeQ=;
        b=n7DMQlEoD+hJZmjXirVpgAEfC5uefmjkQk8xfwullKakcxQHT68POHWucTXXbiogtU
         b12y0KAnja41RyInH/LW2VCqdavMesk/uUWmjXiu51QqXJIITkomVE2YZj0ZlxrNURvR
         pmAJjqNJZf5zhjpImGEPMqg6wbe4VbFeEx6qlObfLrreAi/dMe74ldg1XXYIlCGpWz1Y
         StFm5t9Tw2+Il+SNz5bgvHtI4Ut7x8A6bmqRCKI6yFJSm6GvXtuxcDY+9d4kYOd92sDg
         AgNOR9GA6yG0t4jzMZHBl9hhqcSN058XFNqMsKbT69VIQXfxAodEzCzk2P24EpQN8VL0
         /lHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=Mi8l3i0weNGSjeehjzYl6OjM9JQBncybNjiFxYuEBeQ=;
        b=OM/QmuB/IzuYeW8JZmCT9GPBkfh7JFJ2h8lpDFsa7Cf9hYozQlH34+kLBgAAfT2Bkf
         OigZNVBcxo3dy1m0u5mSas0yyuUV4kiu6qeB31ot3Pd3DX4r8VZdHi30y4bZmYKEZ0Vh
         acSxA6Nu1axr4VmpnIaHnh35QqgCEtzWR+/FNQkteJ13E8+xZzAHvmbPGqNbonvvD4NK
         5G6HIZrco8ptvO756RlE4RBXVuwyCmefxECd757YUZD778aJF4en6NlhdI0iwE5ikZLW
         8Qf4gwQ0LswfQJswVgaJY4WsJ/Cc/V8OCtlv28GApDNoXqrJMFBqCBQuel5LBYUlYLaw
         qyug==
X-Gm-Message-State: AG10YORlro8qxTYDfZkez4yL+huNFP8QnwYxRh0XT5+E6ShsbgzjHVfWfxnRWeJSz0K6MQ==
X-Received: by 10.66.248.198 with SMTP id yo6mr10502040pac.54.1455806543928;
        Thu, 18 Feb 2016 06:42:23 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id w89sm10934946pfi.13.2016.02.18.06.42.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 06:42:23 -0800 (PST)
Date: Thu, 18 Feb 2016 20:12:11 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: most: hdm-dim2: Replace pr_err with dev_err
Message-ID: <1dfe9795f9ef5c674c262cc7d05f34da181833be.1455803765.git.amitoj1606@gmail.com>
References: <cover.1455803765.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455803765.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace pr_err with dev_err when a appropriate device structure is
present.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/most/hdm-dim2/dim2_hdm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_hdm.c b/drivers/staging/most/hdm-dim2/dim2_hdm.c
index c9cc9c1..c736310 100644
--- a/drivers/staging/most/hdm-dim2/dim2_hdm.c
+++ b/drivers/staging/most/hdm-dim2/dim2_hdm.c
@@ -753,7 +753,7 @@ static int dim2_probe(struct platform_device *pdev)
 
 	ret = platform_get_irq(pdev, 0);
 	if (ret < 0) {
-		pr_err("failed to get irq\n");
+		dev_err(&pdev->dev, "failed to get irq\n");
 		return -ENODEV;
 	}
 	dev->irq_ahb0 = ret;
@@ -761,8 +761,8 @@ static int dim2_probe(struct platform_device *pdev)
 	ret = devm_request_irq(&pdev->dev, dev->irq_ahb0, dim2_ahb_isr, 0,
 			       "mlb_ahb0", dev);
 	if (ret) {
-		pr_err("failed to request IRQ: %d, err: %d\n",
-		       dev->irq_ahb0, ret);
+		dev_err(&pdev->dev, "failed to request IRQ: %d, err: %d\n",
+			dev->irq_ahb0, ret);
 		return ret;
 	}
 #endif
-- 
1.9.1


