X-GM-THRID: 6264920846730526720
X-Received: by 10.50.143.10 with SMTP id sa10mr15690495igb.1.1458665588424;
        Tue, 22 Mar 2016 09:53:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.34 with SMTP id f31ls4412138qge.76.gmail; Tue, 22 Mar
 2016 09:53:06 -0700 (PDT)
X-Received: by 10.140.89.10 with SMTP id u10mr27774974qgd.24.1458665586290;
        Tue, 22 Mar 2016 09:53:06 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 138si861956pfa.1.2016.03.22.09.53.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 09:53:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q129so37684821pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 09:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Nqw1T8/RypZMENiG5Qid2cbQCI55MAFpI/w2Ft8DyUg=;
        b=R+G3K1HtPgFs5DLVjOI/D+XivM2ORCS1/bi3QPUVMrJEexyZCKG3aHq1hFIBKvy0TY
         c2umz3dvwvl7yPsYjUxn+DH4PhMdbPlY1ptWuVI9wk8qvA+xIvxAUg7Gq0IY5a2qK3F7
         kFDV/JVEVdfLC3ijyNt1I/TuSTZJFDBd8RR7NQqdXRJvj/IRiqFOCEgQ5SHAM+ofqT3P
         oTPpVbIcByS6liAobf1sqytoGWB5y3lIx2630CEL8SQUWnMekRzZm8VyWRbIm5LiAWIh
         Xc7QXFXsyoks+7Xz8cmuTqNDoMAvBW/1q6Z2nf6sbbMgby72VaoQOL8uaMZSKodtK0Ug
         WkxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Nqw1T8/RypZMENiG5Qid2cbQCI55MAFpI/w2Ft8DyUg=;
        b=UOqvrZaiODHrMb0BkLhru2KxExOHiL36lxvTXXE/gf5CXsP3TzFmuzFNg+Xsm/9cTr
         7sjiN9SWpHlg4jog5WJ7ptPk4xn3xde7ATHUkKeiUV76DQ1QswLF3Ed5g6COkjHLPEO2
         uzr5WcNEqTGw8wXvozEz2oesdbQXSCbk1923goivM/AQf2Pw59KkvV8GqGKcDmfenuLI
         scvnEv8uv5fQkb/knMCxvgLSMc6yujxTL1kSt3aCBhWBKV5ZJcgN1Y3IzAuVkkaoRIRl
         whO8aSPODYIPzNuiqWNsz5R0hrJpOjRXu7aWZhSFg4oTSQjFARgU5kJXONqDVJ0EgV6n
         NSYg==
X-Gm-Message-State: AD7BkJL/bZHjVE+TxVMd0chmkVWJW5nZz3PzNa3aaXLgaUA4Mu9LLsSTR/YKkSKDMYW9rg==
X-Received: by 10.66.144.4 with SMTP id si4mr55727381pab.0.1458665586041;
        Tue, 22 Mar 2016 09:53:06 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.172.252])
        by smtp.gmail.com with ESMTPSA id wh9sm49613105pab.8.2016.03.22.09.53.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 09:53:05 -0700 (PDT)
Date: Tue, 22 Mar 2016 22:23:02 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: media: omap1: Replace request_irq with
 devm_request_irq
Message-ID: <011425925e54f36a7f9e97fcb56bc78b101322f2.1458663865.git.amitoj1606@gmail.com>
References: <cover.1458663865.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458663865.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace request_irq with devm_request_irq to get the interrupt 
for device which is automatically freed on exit. Remove
corresponding free_irq from probe and remove functions of a 
platform device.

Also, remove an unnecessary label.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/media/omap1/omap1_camera.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/omap1/omap1_camera.c b/drivers/staging/media/omap1/omap1_camera.c
index c4450b4..54b8dd2 100644
--- a/drivers/staging/media/omap1/omap1_camera.c
+++ b/drivers/staging/media/omap1/omap1_camera.c
@@ -1640,7 +1640,8 @@ static int omap1_cam_probe(struct platform_device *pdev)
 	/* setup DMA autoinitialization */
 	omap_dma_link_lch(pcdev->dma_ch, pcdev->dma_ch);
 
-	err = request_irq(pcdev->irq, cam_isr, 0, DRIVER_NAME, pcdev);
+	err = devm_request_irq(&pdev->dev, pcdev->irq, cam_isr, 0, DRIVER_NAME,
+			       pcdev);
 	if (err) {
 		dev_err(&pdev->dev, "Camera interrupt register failed\n");
 		goto exit_free_dma;
@@ -1654,14 +1655,12 @@ static int omap1_cam_probe(struct platform_device *pdev)
 
 	err = soc_camera_host_register(&pcdev->soc_host);
 	if (err)
-		goto exit_free_irq;
+		return err;
 
 	dev_info(&pdev->dev, "OMAP1 Camera Interface driver loaded\n");
 
 	return 0;
 
-exit_free_irq:
-	free_irq(pcdev->irq, pcdev);
 exit_free_dma:
 	omap_free_dma(pcdev->dma_ch);
 exit:
@@ -1674,8 +1673,6 @@ static int omap1_cam_remove(struct platform_device *pdev)
 	struct omap1_cam_dev *pcdev = container_of(soc_host,
 					struct omap1_cam_dev, soc_host);
 
-	free_irq(pcdev->irq, pcdev);
-
 	omap_free_dma(pcdev->dma_ch);
 
 	soc_camera_host_unregister(soc_host);
-- 
1.9.1


