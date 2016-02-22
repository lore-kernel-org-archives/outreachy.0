X-GM-THRID: 6254199111711457280
X-Received: by 10.140.95.38 with SMTP id h35mr1058278qge.3.1456169204586;
        Mon, 22 Feb 2016 11:26:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.60.167 with SMTP id i7ls931129obr.15.gmail; Mon, 22 Feb
 2016 11:26:44 -0800 (PST)
X-Received: by 10.182.105.133 with SMTP id gm5mr27670241obb.41.1456169204072;
        Mon, 22 Feb 2016 11:26:44 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id 12si3281714pfb.1.2016.02.22.11.26.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 11:26:44 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id yy13so95758821pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 11:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=j7Ow+Ly+ooLMgjP/JGN5Y05qlZGx+qVf9kZu/PC8N5s=;
        b=Tp6/W/1amIjKgs+oaxQYjjqGUBYtQBv9UzP6QjQMeC+c7qF4iEGATV8toCefKABqjc
         gcFrck+GFmYwrWghzBPcu20pmSWRjGbxXzCNy1pCZf6VCiCrnAa7NZ8aIPDsiYbAS6Rx
         XJLaBavHYfvL8Y7wHauBVRVdBj3irahm6uA847EAJ6AbS9NV1ht2S7aXi9aQWb8Vk5ON
         L1nwqT1wHSL6h7lM5/eI7Fyumxk7+PK/IfsNoZEQtfqv0W9eGx4Qem16UwqaLrRepynH
         SP3jBmRBHYlLnuURu+FV5rscLBFE7X4veQn/XDmEdZM5QHB1Li7lSFV1S/ByygQXm3j0
         AsWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=j7Ow+Ly+ooLMgjP/JGN5Y05qlZGx+qVf9kZu/PC8N5s=;
        b=arJxQsz2tyATAa7MDFrBw92WX14jGnECCKB+S9VVuOqUQ2XUg4hMBsIgsPOk7qrdOx
         xRucxaIVOZyg8yeyz1jEV4nOhJR618L6k64piMvz0TbFGyYqHR1bKR0cGvQC4rnefYAq
         NOrFLhhIXROQph1KWjMmKuwmPsusdmKEXH50KcrICtsFVLWEXTMLLEKnvE8OQAhGCeOF
         4T8pFPm6VWCb7Bcj6CmnLC8lwNmc6YhY5h3Umw+SBrDMny0daIzg0Z1Rah03P67kTBN2
         cJrugs7iL8iTPfdCyjcTjrQ6ohJ44jmYFp4GgEVjaor9m5a8pcW4tQJXkdgnT7ONbC2A
         q14A==
X-Gm-Message-State: AG10YOTZaS8N9QCTVkXp0tTD4ALMv5rJZJ9ld6PGtfRxWo9kMuxjMS5Q/4h2dzLVDPUHcg==
X-Received: by 10.67.3.163 with SMTP id bx3mr39862004pad.97.1456169203883;
        Mon, 22 Feb 2016 11:26:43 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id q85sm38610417pfq.81.2016.02.22.11.26.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 11:26:43 -0800 (PST)
Date: Tue, 23 Feb 2016 00:56:39 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: drivers: gsc_hpdi: Remove use of deprecated
 pci API
Message-ID: <20160222192639.GA3502@amitoj-Inspiron-3542>
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

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/comedi/drivers/gsc_hpdi.c | 32 ++++++++++++++++---------------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/comedi/drivers/gsc_hpdi.c b/drivers/staging/comedi/drivers/gsc_hpdi.c
index 46ca5d9..956756a 100644
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
+				       GFP_ATOMIC);
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
+					       GFP_ATOMIC);
 	if (devpriv->dma_desc_phys_addr & 0xf) {
 		dev_warn(dev->class_dev,
 			 " dma descriptors not quad-word aligned (bug)\n");
-- 
1.9.1


