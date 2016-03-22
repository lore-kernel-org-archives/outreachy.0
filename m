X-GM-THRID: 6264881295944318976
X-Received: by 10.66.221.100 with SMTP id qd4mr27322440pac.0.1458656344693;
        Tue, 22 Mar 2016 07:19:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.12 with SMTP id su12ls1524236obc.18.gmail; Tue, 22 Mar
 2016 07:19:04 -0700 (PDT)
X-Received: by 10.182.72.137 with SMTP id d9mr27479289obv.31.1458656344108;
        Tue, 22 Mar 2016 07:19:04 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y20si4926961pfa.2.2016.03.22.07.19.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 07:19:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n5so36409091pfn.1
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 07:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hXm+cJRjlx4Acno4S6Mif5gv77LP44jAqcVOU3KBW5c=;
        b=CM1AtfoI5jXe+ZTsEwhNT7T0zd3jbexgfOELY3xEgw1PmGtqPjkW6V37eql8CrlDMS
         0yIRSsYFK/6kAO0oeFscexQaVuVl6dK4DGOdT00MiAh1VFE1a2BlK49fyPcweDSasFVI
         6J4BsB0WFNQEvIU3BVfbiEiLt5Uel+DlMwBypOEd8IssrVJbQ8jVOAeaWs2h3lE0eLhK
         W8njxlLAYzsywBaGtXFlqT4wO8d3tTuzNP73UIhu4qzXxIDPM6S4JyD/ve70dStlbhOn
         SCLRT4nJem/dc3Pm+utnU1c7KRY0vvwXHkDwFfbQfRxqkrDckQYt3MBJng1Miw+hECC/
         ibDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hXm+cJRjlx4Acno4S6Mif5gv77LP44jAqcVOU3KBW5c=;
        b=id8jDz28TkF9i/nxzU42zqDcGtLEjgchGPRxhO/ctlW6u+ZxGTNZpQHrFWTHeIWPdj
         RquhVoM2mXKGWM8gq9ekG3t7/vc2g7bqXONde0Gf/7mEjm0X4M4SG5d/2MazQEv4YotV
         AeH7Jp6ADevH7n15nsU4l2RCsBKHZqMfWESevNSMPJ2pqj7xLBCSoKzhMCw2ZEy/iSZi
         A352A1yvS1bqrHpcHbXUEj84p9gJE5ZEeiFBgwY+ieSlbuL95d8bhVDoh2i+7PuOGYn4
         q3oh8kvKdIiMqZlhTwuckzDhIj0urO2J4/QOtXSA7xaVsK5ewdtTJxxtvQbGm1D6Bitp
         SvSw==
X-Gm-Message-State: AD7BkJJvtqJiJtcn1F2Bdc1ivHaVcVQlqeGYbHe+zwCGI2JQ4uSpGQjJI+PSghGl7pYjag==
X-Received: by 10.66.228.1 with SMTP id se1mr54493459pac.43.1458656343841;
        Tue, 22 Mar 2016 07:19:03 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.12.39])
        by smtp.gmail.com with ESMTPSA id y23sm658558pfi.22.2016.03.22.07.19.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 07:19:03 -0700 (PDT)
Date: Tue, 22 Mar 2016 19:48:59 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: omap1: Replace clk_get with devm_clk_get
Message-ID: <20160322141859.GA14592@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

devm_clk_get allocated resources get released when a driver detaches.
Replace clk_get with devm_clk_get and remove corresponding data
releasing function clk_put from probe and remove functions of a
platform device. Also remove an unnecessary label.

This change was made with the help of the following Coccinelle
semantic patch:
@platform@
identifier p, probefn, removefn;
@@
struct platform_driver p = {
  .probe = probefn,
  .remove = removefn,
};

@prb@
identifier platform.probefn, pdev;
expression e;
@@
probefn(struct platform_device *pdev, ...) {
  ...
  e =
- clk_get
+ devm_clk_get
  (...);
   ...
?- clk_put(...);
  ...
}
@remove depends on prb@
identifier platform.removefn;
@@
removefn(...) {
...
?- clk_put(...);
...
}

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/media/omap1/omap1_camera.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/omap1/omap1_camera.c b/drivers/staging/media/omap1/omap1_camera.c
index bd721e3..b03c8f2 100644
--- a/drivers/staging/media/omap1/omap1_camera.c
+++ b/drivers/staging/media/omap1/omap1_camera.c
@@ -1576,7 +1576,7 @@ static int omap1_cam_probe(struct platform_device *pdev)
 		goto exit;
 	}
 
-	clk = clk_get(&pdev->dev, "armper_ck");
+	clk = devm_clk_get(&pdev->dev, "armper_ck");
 	if (IS_ERR(clk)) {
 		err = PTR_ERR(clk);
 		goto exit;
@@ -1586,7 +1586,7 @@ static int omap1_cam_probe(struct platform_device *pdev)
 	if (!pcdev) {
 		dev_err(&pdev->dev, "Could not allocate pcdev\n");
 		err = -ENOMEM;
-		goto exit_put_clk;
+		goto exit;
 	}
 
 	pcdev->res = res;
@@ -1685,8 +1685,6 @@ exit_release:
 	release_mem_region(res->start, resource_size(res));
 exit_kfree:
 	kfree(pcdev);
-exit_put_clk:
-	clk_put(clk);
 exit:
 	return err;
 }
@@ -1709,8 +1707,6 @@ static int omap1_cam_remove(struct platform_device *pdev)
 	res = pcdev->res;
 	release_mem_region(res->start, resource_size(res));
 
-	clk_put(pcdev->clk);
-
 	kfree(pcdev);
 
 	dev_info(&pdev->dev, "OMAP1 Camera Interface driver unloaded\n");
-- 
1.9.1


