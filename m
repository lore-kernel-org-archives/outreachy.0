X-GM-THRID: 6252641236847427584
X-Received: by 10.107.12.213 with SMTP id 82mr8749609iom.18.1455806528447;
        Thu, 18 Feb 2016 06:42:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.5 with SMTP id s5ls5007462qgs.19.gmail; Thu, 18 Feb
 2016 06:42:07 -0800 (PST)
X-Received: by 10.129.58.16 with SMTP id h16mr7040319ywa.56.1455806527945;
        Thu, 18 Feb 2016 06:42:07 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id yd9si980326pab.1.2016.02.18.06.42.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 06:42:07 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id ho8so32789004pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 06:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=rCQx0Mi4i6IEF1xvH4y434gfKbOjv/1jZoR2fcahHVc=;
        b=DxDOBz9BDb+byz/eg/ze+T9hBJW0F28HijqxJqmdyf2RQL/uso4Igi4NRBBVjx+WTb
         mFptOKlHt4Cgzix6wx5XObiIlF5Vpp/AOSeQswliju2XLoNmwR+lNycLYGvUD3tIvoCm
         vCxiJUi3k1AnxCD1UWGtnGSqFTnlJ0EhCOcuj3rSu3DUu975nDwg2Vbow8P8iaVMa16V
         k3Xjh02UUnwROAb1awzP7juxTXG/lthKhlQ4n+2un9ZMynoTtg/BYSJN4Ofu3Tvoc6fZ
         C2UQ5N76fQdp9RfBFIxV+P/AM3XPUyU/bU+tLul4YGby7xN9yj5vEyOOeJf1I/Rc0O6d
         BsaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=rCQx0Mi4i6IEF1xvH4y434gfKbOjv/1jZoR2fcahHVc=;
        b=XGnt4HmAXYSJAZH9w6YvxXOIcFIempvOm432LSQzSXfcc4D1bZ2H/GMCTNZdx7gCCw
         I46hnr2pfyYi3b2Hp3W8QABsoigDuGNrG+XnPepwgIEf/Ghw32l3/yulQy9bEirsUR0e
         EkQrGqJmo7goZ+YW4imsC2rHlLlLv5lF2OPxqqVjpTN20Si0tDHFQnXoYeGWp5+bTPy0
         KoY1bwki3L3GJIkgFaa4cneKtaZFqs6+MyXlKp0k18vGnjdaX1tfFiX3dDv7UdGivqn5
         CI8jk6SjJ3+82AOsrq5GScpboVGaC+/Brpgli1myZMjcoXpyEgYQpNEMKVupoXLwEY0/
         ksFg==
X-Gm-Message-State: AG10YOQMSFLqdiJd+fda3SAGhWZMdHel7xXZAfZWfjVSp5Yfzji8GBP7MvXSVEP6uzvMQQ==
X-Received: by 10.66.228.201 with SMTP id sk9mr10525140pac.1.1455806527753;
        Thu, 18 Feb 2016 06:42:07 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id b63sm10921526pfj.25.2016.02.18.06.42.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 06:42:07 -0800 (PST)
Date: Thu, 18 Feb 2016 20:12:00 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: most: hdm-dim2: Replace request_irq with
 devm_request_irq
Message-ID: <7109c0dfc1ccb6326601e9a34205ab50a759379d.1455803765.git.amitoj1606@gmail.com>
References: <cover.1455803765.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455803765.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Devm_ functions allocate memory that is released when a driver
detaches. Replace request_irq with devm_request_irq to get the
interrupt for device which is automatically freed on exit. Remove
corresponding free_irq from probe and remove functions of a platform
device.

Also, remove an unnecessary label.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/most/hdm-dim2/dim2_hdm.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_hdm.c b/drivers/staging/most/hdm-dim2/dim2_hdm.c
index 708b998..c9cc9c1 100644
--- a/drivers/staging/most/hdm-dim2/dim2_hdm.c
+++ b/drivers/staging/most/hdm-dim2/dim2_hdm.c
@@ -758,7 +758,8 @@ static int dim2_probe(struct platform_device *pdev)
 	}
 	dev->irq_ahb0 = ret;
 
-	ret = request_irq(dev->irq_ahb0, dim2_ahb_isr, 0, "mlb_ahb0", dev);
+	ret = devm_request_irq(&pdev->dev, dev->irq_ahb0, dim2_ahb_isr, 0,
+			       "mlb_ahb0", dev);
 	if (ret) {
 		pr_err("failed to request IRQ: %d, err: %d\n",
 		       dev->irq_ahb0, ret);
@@ -769,10 +770,8 @@ static int dim2_probe(struct platform_device *pdev)
 	dev->deliver_netinfo = 0;
 	dev->netinfo_task = kthread_run(&deliver_netinfo_thread, (void *)dev,
 					"dim2_netinfo");
-	if (IS_ERR(dev->netinfo_task)) {
+	if (IS_ERR(dev->netinfo_task))
 		ret = PTR_ERR(dev->netinfo_task);
-		goto err_free_irq;
-	}
 
 	for (i = 0; i < DMA_CHANNELS; i++) {
 		struct most_channel_capability *cap = dev->capabilities + i;
@@ -840,10 +839,6 @@ err_unreg_iface:
 	most_deregister_interface(&dev->most_iface);
 err_stop_thread:
 	kthread_stop(dev->netinfo_task);
-err_free_irq:
-#if !defined(ENABLE_HDM_TEST)
-	free_irq(dev->irq_ahb0, dev);
-#endif
 
 	return ret;
 }
@@ -870,9 +865,6 @@ static int dim2_remove(struct platform_device *pdev)
 	dim2_sysfs_destroy(&dev->bus);
 	most_deregister_interface(&dev->most_iface);
 	kthread_stop(dev->netinfo_task);
-#if !defined(ENABLE_HDM_TEST)
-	free_irq(dev->irq_ahb0, dev);
-#endif
 
 	/*
 	 * break link to local platform_device_id struct
-- 
1.9.1


