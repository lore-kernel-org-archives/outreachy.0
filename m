X-GM-THRID: 6254196416995917824
X-Received: by 10.140.29.183 with SMTP id b52mr6048761qgb.8.1456262753090;
        Tue, 23 Feb 2016 13:25:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.139 with SMTP id e11ls2967390qgf.48.gmail; Tue, 23 Feb
 2016 13:25:52 -0800 (PST)
X-Received: by 10.129.87.73 with SMTP id l70mr33149199ywb.13.1456262752588;
        Tue, 23 Feb 2016 13:25:52 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id ui7si4205456pab.0.2016.02.23.13.25.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 13:25:52 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id x65so118680375pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 13:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=DeX1DO2jUnxr+4XXqwYX6gj990gd9dUqO8d9G0obyAM=;
        b=f03B6CqtPfd9l/wp/UKqZxw3+F/l3gz1CkVzFSaFyE9xcjGg5MO3eNYvdKZFYPVrQQ
         LgNDqwcU13WSu2zcxmmMYCpkwqBInZNLCNlumtk1550v43khiRXsz9BZYhdESXPG9tlP
         mAzLkJVU+GhbEL08uBJCY98ilffXvKzIvCFtGrW1VFKf0nZ4DsDOBlPAgQ9EnKTeuZ8M
         bA/tA08ItjoEaf8vjnQOF9W5d3DvZPuPoaKvqKrIIqP40evPKF2Tzitf3C/R7KXZRgaJ
         8fX9DKUz85SNFTKyy6bhVQWSE/brtn3Gl0I9WoVYIMByQPxNPIS4okqesJA1PZc9wPLf
         KxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=DeX1DO2jUnxr+4XXqwYX6gj990gd9dUqO8d9G0obyAM=;
        b=JGrUkrrPhUDFDD2sWcTGZjI/b7O7DBSpoTJ3I7N9ZqCZ2hw0yiXtU13OKLVxerSVs+
         +1JtxfOGAcUsDkn3soK05PsCo6MMV8g+lsSb9U0NNIXyq4J0tLmJR8wcCkUT1Jw+rBa3
         nMtNa+5ixBZwnNuGUIiD+g+GwBzTN/ha2DGkpxZOkPFtbpODYn5hmzoPQNUuglqVmNw9
         g/WvSNjc74QsLOFKbv1BL+d2n2O6pfuYe1I/CG4veyQ2PGqV/CEnb57gisAV4gSqKmgo
         MY4EPqTFkYpjvk7IaaIw1KQQNewZ2+jSxmVVmD8h7EevBT9yv61SWhnpIvE1O/HvqiyP
         LI7A==
X-Gm-Message-State: AG10YOSiy0/5iaBNL0UmgYiRI06zLlrWdNmGy9pXaGxsrSzouSy4/D2f76OZthB5YULGLg==
X-Received: by 10.98.65.14 with SMTP id o14mr49033201pfa.151.1456262752329;
        Tue, 23 Feb 2016 13:25:52 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id 3sm46173445pfn.59.2016.02.23.13.25.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 13:25:51 -0800 (PST)
Date: Wed, 24 Feb 2016 02:55:24 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: comedi: drivers: Remove use of deprecated pci API
Message-ID: <20160223212524.GA29290@amitoj-Inspiron-3542>
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
+ , GFP_ATOMIC
  )
|
- pci_alloc_consistent@p ( id,
+ dma_alloc_coherent ( &id->dev,
...
+ , GFP_ATOMIC
  )
)

alloc_and_init_dma_members does not affect the interrupt status and is
only called by auto_attach, which also does not affect the interrupt
status. auto_attach() also contains a call to comedi_alloc_devpriv()
which calls kzalloc with GFP_KERNEL flag.  Thus, there seems to be no
danger that dma_alloc_coherent can be called with interrupts turned off, 
and GFP_KERNEL can be used.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Used GFP_KERNEL instead of GFP_ATOMIC

 drivers/staging/comedi/drivers/cb_pcidas64.c | 64 +++++++++++++++-------------
 1 file changed, 34 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
index e918d42..c773b8c 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas64.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
@@ -1480,35 +1480,39 @@ static int alloc_and_init_dma_members(struct comedi_device *dev)
 	/*  allocate pci dma buffers */
 	for (i = 0; i < ai_dma_ring_count(board); i++) {
 		devpriv->ai_buffer[i] =
-			pci_alloc_consistent(pcidev, DMA_BUFFER_SIZE,
-					     &devpriv->ai_buffer_bus_addr[i]);
+			dma_alloc_coherent(&pcidev->dev, DMA_BUFFER_SIZE,
+					   &devpriv->ai_buffer_bus_addr[i],
+					   GFP_KERNEL);
 		if (!devpriv->ai_buffer[i])
 			return -ENOMEM;
 	}
 	for (i = 0; i < AO_DMA_RING_COUNT; i++) {
 		if (ao_cmd_is_supported(board)) {
 			devpriv->ao_buffer[i] =
-				pci_alloc_consistent(pcidev, DMA_BUFFER_SIZE,
-						     &devpriv->
-						      ao_buffer_bus_addr[i]);
+				dma_alloc_coherent(&pcidev->dev,
+						   DMA_BUFFER_SIZE,
+						   &devpriv->
+						   ao_buffer_bus_addr[i],
+						   GFP_KERNEL);
 			if (!devpriv->ao_buffer[i])
 				return -ENOMEM;
 		}
 	}
 	/*  allocate dma descriptors */
 	devpriv->ai_dma_desc =
-		pci_alloc_consistent(pcidev, sizeof(struct plx_dma_desc) *
-				     ai_dma_ring_count(board),
-				     &devpriv->ai_dma_desc_bus_addr);
+		dma_alloc_coherent(&pcidev->dev, sizeof(struct plx_dma_desc) *
+				   ai_dma_ring_count(board),
+				   &devpriv->ai_dma_desc_bus_addr, GFP_KERNEL);
 	if (!devpriv->ai_dma_desc)
 		return -ENOMEM;
 
 	if (ao_cmd_is_supported(board)) {
 		devpriv->ao_dma_desc =
-			pci_alloc_consistent(pcidev,
-					     sizeof(struct plx_dma_desc) *
-					     AO_DMA_RING_COUNT,
-					     &devpriv->ao_dma_desc_bus_addr);
+			dma_alloc_coherent(&pcidev->dev,
+					   sizeof(struct plx_dma_desc) *
+					   AO_DMA_RING_COUNT,
+					   &devpriv->ao_dma_desc_bus_addr,
+					   GFP_KERNEL);
 		if (!devpriv->ao_dma_desc)
 			return -ENOMEM;
 	}
@@ -1564,31 +1568,31 @@ static void cb_pcidas64_free_dma(struct comedi_device *dev)
 	/* free pci dma buffers */
 	for (i = 0; i < ai_dma_ring_count(board); i++) {
 		if (devpriv->ai_buffer[i])
-			pci_free_consistent(pcidev,
-					    DMA_BUFFER_SIZE,
-					    devpriv->ai_buffer[i],
-					    devpriv->ai_buffer_bus_addr[i]);
+			dma_free_coherent(&pcidev->dev,
+					  DMA_BUFFER_SIZE,
+					  devpriv->ai_buffer[i],
+					  devpriv->ai_buffer_bus_addr[i]);
 	}
 	for (i = 0; i < AO_DMA_RING_COUNT; i++) {
 		if (devpriv->ao_buffer[i])
-			pci_free_consistent(pcidev,
-					    DMA_BUFFER_SIZE,
-					    devpriv->ao_buffer[i],
-					    devpriv->ao_buffer_bus_addr[i]);
+			dma_free_coherent(&pcidev->dev,
+					  DMA_BUFFER_SIZE,
+					  devpriv->ao_buffer[i],
+					  devpriv->ao_buffer_bus_addr[i]);
 	}
 	/* free dma descriptors */
 	if (devpriv->ai_dma_desc)
-		pci_free_consistent(pcidev,
-				    sizeof(struct plx_dma_desc) *
-				    ai_dma_ring_count(board),
-				    devpriv->ai_dma_desc,
-				    devpriv->ai_dma_desc_bus_addr);
+		dma_free_coherent(&pcidev->dev,
+				  sizeof(struct plx_dma_desc) *
+				  ai_dma_ring_count(board),
+				  devpriv->ai_dma_desc,
+				  devpriv->ai_dma_desc_bus_addr);
 	if (devpriv->ao_dma_desc)
-		pci_free_consistent(pcidev,
-				    sizeof(struct plx_dma_desc) *
-				    AO_DMA_RING_COUNT,
-				    devpriv->ao_dma_desc,
-				    devpriv->ao_dma_desc_bus_addr);
+		dma_free_coherent(&pcidev->dev,
+				  sizeof(struct plx_dma_desc) *
+				  AO_DMA_RING_COUNT,
+				  devpriv->ao_dma_desc,
+				  devpriv->ao_dma_desc_bus_addr);
 }
 
 static inline void warn_external_queue(struct comedi_device *dev)
-- 
1.9.1


