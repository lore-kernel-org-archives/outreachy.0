X-GM-THRID: 6252641236847427584
X-Received: by 10.107.184.195 with SMTP id i186mr8730377iof.24.1455806514095;
        Thu, 18 Feb 2016 06:41:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.162 with SMTP id g2ls2111746obe.63.gmail; Thu, 18 Feb
 2016 06:41:53 -0800 (PST)
X-Received: by 10.182.247.68 with SMTP id yc4mr7257323obc.34.1455806513770;
        Thu, 18 Feb 2016 06:41:53 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id 79si1000474pft.0.2016.02.18.06.41.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 06:41:53 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fl4so32010731pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 06:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=KjPXPlUHu+xFE0sfZFXVCU133+i3HY0lamwEcsRgyhQ=;
        b=F5ysQI40Qr3DLtK8t0E7RcLvIoU5/yhIP+bFDOJxZaT7pfXBYAhgOsOaPTI/F4CbVu
         qApMK/ipNPlvZOu8Dg46R2yAhg1aA5e3y7JTmUWPFMzqLrSCfwMp69IYtJLsFYjhQI81
         wthfb2E74/NL5vhqECbj9QZmEI40hF1HAKcBmJZ0hYTRzifOIdIk+thW7pAHJLa0aaOs
         sam2rew27LNdwN0Y4RwuU1q3cN1UQlLmu2D8OiPiiBpSvPJV1MX7pSkHMt5/VKfIcxw/
         /ZIYJFL/gY5VvpB83qYUmertqHPLZMjI0d5exJMP87j8yGBrmYu0hzBiePXi9bv4tjkC
         Q8zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=KjPXPlUHu+xFE0sfZFXVCU133+i3HY0lamwEcsRgyhQ=;
        b=NpQ6dYgBXb46/VYtqYvnHsdSKLHyPP1AhJwn3yRqS4j3IMxD6LTIW86dN/tj8AKgM5
         3AAFOrnA1iDkND0bpjBuClosF9Gqz1AyDezz66U0ZBoHEol/StmFNneX2GAK00tjg2AE
         lvpTbnv4n62C8WNxV+7329FxDNJLmCEkLD2mUWdQzVYsK+1IvU9QDS8wXK1MVLy8Il6i
         cNTSZGGxagg8FJXWmTwQgGRSOhVb0WmP2lIW9kaN+ZoWcbEHW6MRF394dcKiBkrG9Uq/
         3NeVOjkYMsarn/iILmRqCJUff4XYtToeUo7qIoCVIwcigQCfO1pi1Ds0p2Qljcp4zp+n
         v+wA==
X-Gm-Message-State: AG10YOQDdfJgPAD5AS5wsXGWsuicaGzg4G3DvjvLPB9P2MfBqAURWA/HGAHBaxLpVnBMGw==
X-Received: by 10.66.191.202 with SMTP id ha10mr10611987pac.8.1455806513608;
        Thu, 18 Feb 2016 06:41:53 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id b63sm10920286pfj.25.2016.02.18.06.41.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 06:41:53 -0800 (PST)
Date: Thu, 18 Feb 2016 20:11:36 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: most: hdm-dim2: Replace kzalloc with
 devm_kzalloc
Message-ID: <c68d195d73265986ba7c099602d54a37f2f02ab9.1455803765.git.amitoj1606@gmail.com>
References: <cover.1455803765.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455803765.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Devm_ functions allocate memory that is released when a driver detaches. 
Replace kzalloc with devm_kzalloc and remove corresponding
kfrees from probe and remove functions of a platform
device.

Also, an unnecessary label has been removed.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/most/hdm-dim2/dim2_hdm.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_hdm.c b/drivers/staging/most/hdm-dim2/dim2_hdm.c
index 6296aa5..97db334 100644
--- a/drivers/staging/most/hdm-dim2/dim2_hdm.c
+++ b/drivers/staging/most/hdm-dim2/dim2_hdm.c
@@ -736,7 +736,7 @@ static int dim2_probe(struct platform_device *pdev)
 	int ret, i;
 	struct kobject *kobj;
 
-	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
+	dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
 	if (!dev)
 		return -ENOMEM;
 
@@ -750,13 +750,13 @@ static int dim2_probe(struct platform_device *pdev)
 	if (!res) {
 		pr_err("no memory region defined\n");
 		ret = -ENOENT;
-		goto err_free_dev;
+		return ret;
 	}
 
 	if (!request_mem_region(res->start, resource_size(res), pdev->name)) {
 		pr_err("failed to request mem region\n");
 		ret = -EBUSY;
-		goto err_free_dev;
+		return ret;
 	}
 
 	dev->io_base = ioremap(res->start, resource_size(res));
@@ -862,9 +862,7 @@ err_unmap_io:
 	iounmap(dev->io_base);
 err_release_mem:
 	release_mem_region(res->start, resource_size(res));
-err_free_dev:
 #endif
-	kfree(dev);
 
 	return ret;
 }
@@ -897,7 +895,6 @@ static int dim2_remove(struct platform_device *pdev)
 	iounmap(dev->io_base);
 	release_mem_region(res->start, resource_size(res));
 #endif
-	kfree(dev);
 	platform_set_drvdata(pdev, NULL);
 
 	/*
-- 
1.9.1


