X-GM-THRID: 6254196416995917824
X-Received: by 10.98.12.66 with SMTP id u63mr35949156pfi.12.1456312541988;
        Wed, 24 Feb 2016 03:15:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.2.23 with SMTP id 23ls64757ioc.58.gmail; Wed, 24 Feb 2016
 03:15:41 -0800 (PST)
X-Received: by 10.50.13.69 with SMTP id f5mr20532157igc.7.1456312541672;
        Wed, 24 Feb 2016 03:15:41 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id 12si320864pfb.1.2016.02.24.03.15.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 03:15:41 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id yy13so11160438pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 03:15:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Wx8li2YQHNhrW8hQD4ctFjXS0qkI1rUAT7qgsGWQIz0=;
        b=v3dWYwruvrq2bDwcOVFZdEzLLZPDsDqis4BWSMA64lw2D0K8DHDg11x55b78RWrBqN
         74fqjGb6PVGti9CkD8ToupkzWJJOwjt0Vt92EipWSyT3OiXMH/OgtQIdb/RFQEOm1KDG
         4o5kAUlOSa4yp/H7LrmzHMjMULvK/Rz4kUh6slHFOQrOoae9aG8DWiUxWhADXkMua4I6
         YDD5dkfk9VagTL9+ppcgUMdH0SkynxWxPKLLV/9ibRy+TogLb8+NLnHITC6h+OTrG5wr
         mlKiimjfxMcECuruB/YH2CMCqIfUQJfvsBbBwGlcTNeCT7vKWygkBo2vacchBHWuWB+i
         s4uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Wx8li2YQHNhrW8hQD4ctFjXS0qkI1rUAT7qgsGWQIz0=;
        b=VP0WdwLOt9hdD2oEetkMeBFQpny50jZjlyEMAIdalQfOGwvaXkqhWLa70Xdy86aKp8
         u/9apejpDpIFiTdbDXCggF7MCHUc7TWKmQrEURnf5xVN//pBzm19RSPZ2MNmmJx+LBQL
         L94uyJYAnJQVspYUoxl7hvHtpvyUtGyAc7v8s+a4f2dHYvmDSkUYPib3s+ld6J+N6NCM
         WGwVe0ebusCbXZz8PtAiHnMeGZkLMABtLvA//RKeA0Nys2qcP2Mmtv3ydJRfKcikLG+f
         DOntykrQfc+M183OJqqgtD9seWsheBdQY1RbAM0hjFBC/Y3eOqUEiwa4IMQEX0mzn3D2
         OKow==
X-Gm-Message-State: AG10YOS/7ve3VRitsvGOcKhslCgptKEAMtxigHgnITCgEKBX7y4xxWbfe1nLGTPJxQBkJg==
X-Received: by 10.66.139.137 with SMTP id qy9mr53954252pab.57.1456312541429;
        Wed, 24 Feb 2016 03:15:41 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id ud10sm4303413pab.27.2016.02.24.03.15.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 03:15:40 -0800 (PST)
Date: Wed, 24 Feb 2016 16:45:34 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: comedi: drivers: Remove use of deprecated pci API
Message-ID: <20160224111533.GA10022@amitoj-Inspiron-3542>
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

alloc_and_init_dma_members does not affect the interrupt status and is
only called by auto_attach, which also does not affect the interrupt
status. auto_attach() also contains a call to comedi_alloc_devpriv()
which calls kzalloc with GFP_KERNEL flag.  Thus, there seems to be no
danger that dma_alloc_coherent can be called with interrupts turned
off, and GFP_KERNEL can be used.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v3:
        -Modified semantic patch
Changes in v2:
        -Use GFP_KERNEL instead of GFP_ATOMIC

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


