X-GM-THRID: 6264920846730526720
X-Received: by 10.157.44.8 with SMTP id f8mr4429277otb.45.1458665566447;
        Tue, 22 Mar 2016 09:52:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.225.105 with SMTP id rj9ls1396205igc.31.canary; Tue, 22 Mar
 2016 09:52:46 -0700 (PDT)
X-Received: by 10.107.18.68 with SMTP id a65mr28304814ioj.16.1458665566113;
        Tue, 22 Mar 2016 09:52:46 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y20si5094850pfa.2.2016.03.22.09.52.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 09:52:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id u190so37161204pfb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 09:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dLVMfgd+S8wf0wKSIdMjz2seWMTMN/LCeLAYEckvmDo=;
        b=udHDJlfSZ5fwoQ/+J4e5whCUC/ne2Qd8xO+s5Haw8aFaEsa4LSVjVLsqug59YUGscH
         qINeg0YOaQf5b3TXbHHKU3WloMhbvnW/mycnVxj/Sp8r/6BAR4LLYb9u+UefBd7MdFmY
         SA3KW/0DKXUBWc/0osL5LLEM4B7BfGjEqjE8wBNisTO6/wnOzjmZ9/NTHb/d5QhSRue9
         KfZYJaIrUB2SX84KNHruv9s+6ImXHnsOQZN2ATqaoX5aG2haRQprIhIxajd/I3CILP4D
         fkL6q+MWeQ+peR+9z8TTwOY724KmHCsMsbLUBEPqT3amkOyW3P2n1NOJMyCLO/UvZ34P
         mFlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dLVMfgd+S8wf0wKSIdMjz2seWMTMN/LCeLAYEckvmDo=;
        b=f0XG+MX0Rg9u7iCVeS0apVcitblSe7s++LsbVX5qL0YIhlU3kXBeN9xhFn9eIhixnQ
         LHhEgdO5VoLBXpK4AR+N5StqfoakzP4Hmif1DNFT9NJ17See3a9Gitr4mBeNhyO70RVL
         xh5T/OYVCyOim/aAfuvA+hYX6F9UMXsfZZcKxzgyEjJnheRHfJoDKU6lmwJ431cti8xr
         oPuJ/K8WGxUBF25Wq0+nYDwtaDNWx2SgYGbIjeYIFple0Q5YBZqsh4O7szW0MITs49Os
         ScsUvAodcuCduK+//ttf3hUdzGPF8WYrpCdMWOXRDR1o6k8SiPHGz3ENcQ+ralmcXTiH
         xhQA==
X-Gm-Message-State: AD7BkJLRRGkq0wC6WvZLwEKiCW7NNy6jnQQTHVQPaq0+h3FxyG9xikBnHXWVP0ndMaM3AA==
X-Received: by 10.66.254.168 with SMTP id aj8mr55860447pad.18.1458665565916;
        Tue, 22 Mar 2016 09:52:45 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.172.252])
        by smtp.gmail.com with ESMTPSA id to9sm49606574pab.27.2016.03.22.09.52.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 09:52:45 -0700 (PDT)
Date: Tue, 22 Mar 2016 22:22:41 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: media: omap1: Replace clk_get with devm_clk_get
Message-ID: <cf80085a4ddbc13cf84a92f29435dbdc5a220f68.1458663865.git.amitoj1606@gmail.com>
References: <cover.1458663865.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458663865.git.amitoj1606@gmail.com>
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
 drivers/staging/media/omap1/omap1_camera.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/omap1/omap1_camera.c b/drivers/staging/media/omap1/omap1_camera.c
index bd721e3..bd00180 100644
--- a/drivers/staging/media/omap1/omap1_camera.c
+++ b/drivers/staging/media/omap1/omap1_camera.c
@@ -1576,17 +1576,14 @@ static int omap1_cam_probe(struct platform_device *pdev)
 		goto exit;
 	}
 
-	clk = clk_get(&pdev->dev, "armper_ck");
-	if (IS_ERR(clk)) {
-		err = PTR_ERR(clk);
-		goto exit;
-	}
+	clk = devm_clk_get(&pdev->dev, "armper_ck");
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
 
 	pcdev = kzalloc(sizeof(*pcdev) + resource_size(res), GFP_KERNEL);
 	if (!pcdev) {
 		dev_err(&pdev->dev, "Could not allocate pcdev\n");
-		err = -ENOMEM;
-		goto exit_put_clk;
+		return -ENOMEM;
 	}
 
 	pcdev->res = res;
@@ -1685,8 +1682,6 @@ exit_release:
 	release_mem_region(res->start, resource_size(res));
 exit_kfree:
 	kfree(pcdev);
-exit_put_clk:
-	clk_put(clk);
 exit:
 	return err;
 }
@@ -1709,8 +1704,6 @@ static int omap1_cam_remove(struct platform_device *pdev)
 	res = pcdev->res;
 	release_mem_region(res->start, resource_size(res));
 
-	clk_put(pcdev->clk);
-
 	kfree(pcdev);
 
 	dev_info(&pdev->dev, "OMAP1 Camera Interface driver unloaded\n");
-- 
1.9.1


