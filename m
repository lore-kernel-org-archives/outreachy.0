X-GM-THRID: 6264920846730526720
X-Received: by 10.66.142.230 with SMTP id rz6mr27658228pab.31.1458665572973;
        Tue, 22 Mar 2016 09:52:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.3 with SMTP id a3ls2203091ioe.104.gmail; Tue, 22 Mar
 2016 09:52:52 -0700 (PDT)
X-Received: by 10.66.193.225 with SMTP id hr1mr27407538pac.34.1458665572697;
        Tue, 22 Mar 2016 09:52:52 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 138si861956pfa.1.2016.03.22.09.52.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 09:52:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q129so37684821pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 09:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PwVTvvZdA/rr1eNuvhN9pUtuM/z3lMjbCN23uKIz2Fk=;
        b=JQkwJjO8SN+XEBlVDClWly3jcXWm8AO/3uPodlG2D8FGjbxh7zVw6yXjDMawwlCRsr
         fsCv9I56VyyLn+0hjnbkgFSgI0RaLH+2y/KhgZJSwxxuuYaazJrrdmFIVVCWrTw2xuEL
         RILTvoYlYVAr7+t9wC0HtW3nQDwdsgLHMR0pQlggOhOAEULvwYsdY5xmw1gcK5p7Vpxu
         tNKtlOhkCWI/CjhX9wnpw4qis21hry6xqSDhgf/zIVQCiLkOYJP/EJ1SpI6escQ4K3Mq
         MIKLN2Vpd18RO0VHz9Tv/yVB7c+ZA27NrefW9ELU1bygdm4VqTG33tEW6lpJ935dr/Pe
         bkYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PwVTvvZdA/rr1eNuvhN9pUtuM/z3lMjbCN23uKIz2Fk=;
        b=h3kEahsemqVtMc20vdR5vO2QCJdptwPz2nZR1rlpJPaENeBK8ADhxRRk/i3hyxh1ae
         BP16Kr0YQUVH7OKPmR/z71/9pMfmUZhcXtyiRbkiHzbfVGWjf0Va0vSx0aMN+SVK4U5e
         6yrCEvBrIDyjSb0dMte53Ck3ker6w6PDMdZCis9zkXd+hoVrKfV855tMczQ7MXYi0+oC
         DSp/MRGwPcAUazt9c5kOd6qd5KBd240maNhH5PO4GFz/2wb8YGgx4PtA5ZeSflng57eF
         ZJk9AawwKSVO+PQO0ZLdFeuSg2wFO7X6vzVzD2RzMPKvWCBfNUIV6T53mmwKSA98HFjN
         shTg==
X-Gm-Message-State: AD7BkJJ+uv1Z9osgUHG8ZXc3C6Fr2waXpnKFls4hP9Jt+iiU5MZBbn3pxRfgyPKgnYxlFw==
X-Received: by 10.98.11.205 with SMTP id 74mr55387563pfl.98.1458665572501;
        Tue, 22 Mar 2016 09:52:52 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.172.252])
        by smtp.gmail.com with ESMTPSA id uh1sm49609476pab.26.2016.03.22.09.52.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 09:52:51 -0700 (PDT)
Date: Tue, 22 Mar 2016 22:22:48 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: media: omap1: Replace kzalloc with devm_kzalloc
Message-ID: <1dd29e1d4a23ce5b2bac4cb17c28dd4e446c32cf.1458663865.git.amitoj1606@gmail.com>
References: <cover.1458663865.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458663865.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace kzalloc with devm_kzalloc and consequently remove kfrees in
probe and remove functions of a platform device.

As a result of this change, remove unnecessary out of memory message
and an unnecessary label.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/media/omap1/omap1_camera.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/omap1/omap1_camera.c b/drivers/staging/media/omap1/omap1_camera.c
index bd00180..8cc4a0a 100644
--- a/drivers/staging/media/omap1/omap1_camera.c
+++ b/drivers/staging/media/omap1/omap1_camera.c
@@ -1580,11 +1580,10 @@ static int omap1_cam_probe(struct platform_device *pdev)
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
-	pcdev = kzalloc(sizeof(*pcdev) + resource_size(res), GFP_KERNEL);
-	if (!pcdev) {
-		dev_err(&pdev->dev, "Could not allocate pcdev\n");
+	pcdev = devm_kzalloc(&pdev->dev, sizeof(*pcdev) + resource_size(res),
+			     GFP_KERNEL);
+	if (!pcdev)
 		return -ENOMEM;
-	}
 
 	pcdev->res = res;
 	pcdev->clk = clk;
@@ -1620,10 +1619,8 @@ static int omap1_cam_probe(struct platform_device *pdev)
 	/*
 	 * Request the region.
 	 */
-	if (!request_mem_region(res->start, resource_size(res), DRIVER_NAME)) {
-		err = -EBUSY;
-		goto exit_kfree;
-	}
+	if (!request_mem_region(res->start, resource_size(res), DRIVER_NAME))
+		return -EBUSY;
 
 	base = ioremap(res->start, resource_size(res));
 	if (!base) {
@@ -1680,8 +1677,6 @@ exit_iounmap:
 	iounmap(base);
 exit_release:
 	release_mem_region(res->start, resource_size(res));
-exit_kfree:
-	kfree(pcdev);
 exit:
 	return err;
 }
@@ -1704,8 +1699,6 @@ static int omap1_cam_remove(struct platform_device *pdev)
 	res = pcdev->res;
 	release_mem_region(res->start, resource_size(res));
 
-	kfree(pcdev);
-
 	dev_info(&pdev->dev, "OMAP1 Camera Interface driver unloaded\n");
 
 	return 0;
-- 
1.9.1


