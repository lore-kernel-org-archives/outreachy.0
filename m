X-GM-THRID: 6254188564975714304
X-Received: by 10.182.246.73 with SMTP id xu9mr8759418obc.4.1457728589377;
        Fri, 11 Mar 2016 12:36:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.186.10 with SMTP id k10ls1328234iof.46.gmail; Fri, 11 Mar
 2016 12:36:28 -0800 (PST)
X-Received: by 10.107.148.84 with SMTP id w81mr8440058iod.20.1457728588891;
        Fri, 11 Mar 2016 12:36:28 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id tu5si1271939pab.2.2016.03.11.12.36.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 12:36:28 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id q6so9313173pav.0
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 12:36:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=YwBjkRQCz+iGpsIbpUk1GuGhvcOcdXJxoLX2tnZjmPs=;
        b=TyInR7F9XrzhM4UMgE5gtD4xvf3uc1jz7x29JIvxV/+d0NARrSmr6OfrEXeiCLMkwq
         HOkIvgPscfFwNJCUuvhVtR0GSw799L+gX7wosISWIp2ldutMNKqCXQoOPPTy2nL3h6Po
         J5cMClQw+PQVD1IV5RyG/vDOMm4ev7eYzfSeWOuTuFNOB4GspQkm0Nn4ObO0JnWR7MRa
         iDCuNV/Ya3fRPJuvxE8oy6F0funzgbw+bpW6dEWstzIpZ+FtX0wfSU5NO2tS8GPwGk1p
         YrQURbxllg/ikOKc2l0rrpky8jRxZ0nMpqERxquKFHPm3ZPJOg7+1kmkBBZGvNdYL6Yg
         Hdow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=YwBjkRQCz+iGpsIbpUk1GuGhvcOcdXJxoLX2tnZjmPs=;
        b=kX1xxHt1YL9kL6EZ9emvd/oXNRtZxEI6k5KCgpPYfOukgbWshBZ7Yr3KrFvU4jiNA2
         E9ZPFW6FEgRSdngZ9srIgUA4AiWF9k0e2/+7z7u4IiBBF0q9yg+x9CKKgIHjO5Fp7Zr0
         uvNGm1BHCSJCwqVAMuYx9GHMg35Byiqi7nMP6nsNBp3Fdyw2y0nxvUne29UFzyx6yWfS
         AI+RpegR7ErFMTIZqbbZwZ4fnqGdxSgL4rscX8sPKfV/ohrpecyYciXBG6nUF+oRPeAQ
         PYi5nbluhuJ3jLRDHAzVWAIpcajBXGeFNti5tlzN2zcBPv8pYKDjovndN6dgSDtqqW5M
         8AIA==
X-Gm-Message-State: AD7BkJK+CzSbysB8ZzZhZH8en6XiNFt5BfgOPL/UJvjwkZRqmyF0F4OkhzRC8QyhQnNzvw==
X-Received: by 10.66.124.226 with SMTP id ml2mr18787858pab.90.1457728588655;
        Fri, 11 Mar 2016 12:36:28 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.50.160.208])
        by smtp.gmail.com with ESMTPSA id p5sm14883172pfi.94.2016.03.11.12.36.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 12:36:27 -0800 (PST)
Date: Sat, 12 Mar 2016 02:06:24 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: rts5208: Replace pci_enable_device with
 pcim_enable_device
Message-ID: <20160311203624.GA27072@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Devm_ functions allocate memory that is automatically freed when
a driver detaches.

Replace pci_enable_device with pcim_enable_device. Remove unnecessary
pci_disable_device and pci_release_regions from probe and remove
functions in rts5208 driver since pcim_enable_device contains a call
to pcim_release which contains calls to both pci_disable_device and 
pci_release_regions.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v3:
        -Removed unnecessary modifications in shutdown and resume
         functions for pcim_enable_device
        -Modified commit message
Changes in v2:
        -Removal of pci_set_drvdata sent in a later patch series.

 drivers/staging/rts5208/rtsx.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index 5ebaf8c..25d095a 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -656,9 +656,6 @@ static void rtsx_release_resources(struct rtsx_dev *dev)
 	if (dev->remap_addr)
 		iounmap(dev->remap_addr);
 
-	pci_disable_device(dev->pci);
-	pci_release_regions(dev->pci);
-
 	rtsx_release_chip(dev->chip);
 	kfree(dev->chip);
 }
@@ -850,7 +847,7 @@ static int rtsx_probe(struct pci_dev *pci,
 
 	dev_dbg(&pci->dev, "Realtek PCI-E card reader detected\n");
 
-	err = pci_enable_device(pci);
+	err = pcim_enable_device(pci);
 	if (err < 0) {
 		dev_err(&pci->dev, "PCI enable device failed!\n");
 		return err;
@@ -860,7 +857,6 @@ static int rtsx_probe(struct pci_dev *pci,
 	if (err < 0) {
 		dev_err(&pci->dev, "PCI request regions for %s failed!\n",
 			CR_DRIVER_NAME);
-		pci_disable_device(pci);
 		return err;
 	}
 
@@ -871,8 +867,6 @@ static int rtsx_probe(struct pci_dev *pci,
 	host = scsi_host_alloc(&rtsx_host_template, sizeof(*dev));
 	if (!host) {
 		dev_err(&pci->dev, "Unable to allocate the scsi host\n");
-		pci_release_regions(pci);
-		pci_disable_device(pci);
 		return -ENOMEM;
 	}
 
-- 
1.9.1


