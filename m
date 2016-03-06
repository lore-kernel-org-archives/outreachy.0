X-GM-THRID: 6254199111711457280
X-Received: by 10.182.29.41 with SMTP id g9mr11517625obh.27.1457223717839;
        Sat, 05 Mar 2016 16:21:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.247.1 with SMTP id ya1ls471542obc.10.gmail; Sat, 05 Mar
 2016 16:21:57 -0800 (PST)
X-Received: by 10.182.29.41 with SMTP id g9mr11517609obh.27.1457223717305;
        Sat, 05 Mar 2016 16:21:57 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ui7si2238471pab.0.2016.03.05.16.21.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 16:21:57 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 63so5549547pfe.0
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 16:21:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SOj/PnK9Em/ENcM8trUfoGk0Zi0KEhj6Z7h241lNMWs=;
        b=T6+jDLy0bn+9v7Sce+V6YvvoAvve/A8uLfySLCdbV0c3qfkw/V71mSqI0zzG8WqHgG
         pFZlAFfCpW3Gc9agKT95ZESYhfstoJuyDDglR4MiL+zfkTgl2vlpsq+OdKhUTMAsmKrr
         LO1UYYZiBpCh3E7upTAFvgs4pMg1aF5ICqmB2tY2dlg1Y3MCRwWF8/FlV+Ke79N0KfOv
         yoRMFvU1o6mubGQZUf0iMzr1ElCqQ2xoXFL4dJAf+x3z5AvB4/URs1gejv7xpWPWyg6/
         s29Wjpa2vUAwnUe2dYH1pjjUgAK4cb1PT2cJDL5UtoDW+ptRWXkEbo8hLlZuvSmaCF/g
         LY9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SOj/PnK9Em/ENcM8trUfoGk0Zi0KEhj6Z7h241lNMWs=;
        b=f1d4YWGoadxpPlBQe7uT1BUhRJiN0uuw1yZaYpSk+otmHtlEDLbFiTyK1WFkhprduW
         yU/JzqyHo+vy/SJvMjv37HY95jWjvNv/UYyYSzxPXxZJhXQHIWgh4AI9UclCdL2IgJ07
         Ah1gl2ANXy7g7RAOf50S9zmDKDP3a0gsWCd0hSE9KsPy1z1FvMDrgenMc/6Z6w2p5XnO
         4AUoHA6aoAleelrvopGaHpe6n6e+/k79n5wek/IM48s7JzFqFldtL1NNMmRhKcnQc/U7
         iqQyl7lDoIvafSl5tqi5No8yQPqdP72hPt5E1FY/ygMo787+H4jTuhJIrlOMiKLk6uLb
         ZFBw==
X-Gm-Message-State: AD7BkJJC6fQNfqjiP987guZ0cd16JJQiSRSEB+nQs9/H8nw2BSofhzzOH/3mI+ddxcgrsA==
X-Received: by 10.98.40.200 with SMTP id o191mr23161048pfo.83.1457223717080;
        Sat, 05 Mar 2016 16:21:57 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.77.50.199])
        by smtp.gmail.com with ESMTPSA id 16sm14734547pfk.28.2016.03.05.16.21.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 16:21:56 -0800 (PST)
Date: Sun, 6 Mar 2016 05:51:52 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: comedi: drivers: gsc_hpdi: Remove use of
 deprecated pci API
Message-ID: <20160306002152.GA21111@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace pci_[alloc|free]_consistent occurences with
dma_[alloc|free]_coherent.

The Coccinelle semantic patch that was used to make some of these
changes is as follows:
@deprecated@
idexpression id;
position p;
@@

(
  pci_dma_supported@p ( id, ...)
|
  pci_alloc_consistent@p ( id, ...)
)

@bad1@
idexpression id;
position deprecated.p;
@@
...when != &id->dev
   when != pci_get_drvdata ( id )
   when != pci_enable_device ( id )
(
  pci_dma_supported@p ( id, ...)
|
  pci_alloc_consistent@p ( id, ...)
)

@depends on !bad1@
idexpression id;
expression direction;
position deprecated.p;
@@

(
- pci_dma_supported@p ( id,
+ dma_supported ( &id->dev,
...
+ , GFP_KERNEL
  )
|
- pci_alloc_consistent@p ( id,
+ dma_alloc_coherent ( &id->dev,
...
+ , GFP_KERNEL
  )
)

gsc_hpdi_auto_attach does not affect interrupt status but contains a 
call to comedi_alloc_devpriv() which calls kzalloc with GFP_KERNEL flag.  
Thus, there seems to be no danger that dma_alloc_coherent can be called 
with interrupts turned off, and GFP_KERNEL can be used.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Use GFP_KERNEL instead of GFP_ATOMIC

 drivers/staging/comedi/drivers/gsc_hpdi.c | 32 ++++++++++++++++---------------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/comedi/drivers/gsc_hpdi.c b/drivers/staging/comedi/drivers/gsc_hpdi.c
index 46ca5d9..63b5cbc 100644
--- a/drivers/staging/comedi/drivers/gsc_hpdi.c
+++ b/drivers/staging/comedi/drivers/gsc_hpdi.c
@@ -499,18 +499,18 @@ static void gsc_hpdi_free_dma(struct comedi_device *dev)
 	/* free pci dma buffers */
 	for (i = 0; i < NUM_DMA_BUFFERS; i++) {
 		if (devpriv->dio_buffer[i])
-			pci_free_consistent(pcidev,
-					    DMA_BUFFER_SIZE,
-					    devpriv->dio_buffer[i],
-					    devpriv->dio_buffer_phys_addr[i]);
+			dma_free_coherent(&pcidev->dev,
+					  DMA_BUFFER_SIZE,
+					  devpriv->dio_buffer[i],
+					  devpriv->dio_buffer_phys_addr[i]);
 	}
 	/* free dma descriptors */
 	if (devpriv->dma_desc)
-		pci_free_consistent(pcidev,
-				    sizeof(struct plx_dma_desc) *
-				    NUM_DMA_DESCRIPTORS,
-				    devpriv->dma_desc,
-				    devpriv->dma_desc_phys_addr);
+		dma_free_coherent(&pcidev->dev,
+				  sizeof(struct plx_dma_desc) *
+				  NUM_DMA_DESCRIPTORS,
+				  devpriv->dma_desc,
+				  devpriv->dma_desc_phys_addr);
 }
 
 static int gsc_hpdi_init(struct comedi_device *dev)
@@ -630,14 +630,16 @@ static int gsc_hpdi_auto_attach(struct comedi_device *dev,
 	/* allocate pci dma buffers */
 	for (i = 0; i < NUM_DMA_BUFFERS; i++) {
 		devpriv->dio_buffer[i] =
-		    pci_alloc_consistent(pcidev, DMA_BUFFER_SIZE,
-					 &devpriv->dio_buffer_phys_addr[i]);
+		    dma_alloc_coherent(&pcidev->dev, DMA_BUFFER_SIZE,
+				       &devpriv->dio_buffer_phys_addr[i],
+				       GFP_KERNEL);
 	}
 	/* allocate dma descriptors */
-	devpriv->dma_desc = pci_alloc_consistent(pcidev,
-						 sizeof(struct plx_dma_desc) *
-						 NUM_DMA_DESCRIPTORS,
-						 &devpriv->dma_desc_phys_addr);
+	devpriv->dma_desc = dma_alloc_coherent(&pcidev->dev,
+					       sizeof(struct plx_dma_desc) *
+					       NUM_DMA_DESCRIPTORS,
+					       &devpriv->dma_desc_phys_addr,
+					       GFP_KERNEL);
 	if (devpriv->dma_desc_phys_addr & 0xf) {
 		dev_warn(dev->class_dev,
 			 " dma descriptors not quad-word aligned (bug)\n");
-- 
1.9.1


