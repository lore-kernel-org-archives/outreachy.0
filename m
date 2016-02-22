X-GM-THRID: 6254196416995917824
X-Received: by 10.66.221.100 with SMTP id qd4mr28621364pac.0.1456168577354;
        Mon, 22 Feb 2016 11:16:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.70 with SMTP id k64ls1635524qgf.25.gmail; Mon, 22 Feb
 2016 11:16:16 -0800 (PST)
X-Received: by 10.140.167.7 with SMTP id n7mr1414080qhn.19.1456168576745;
        Mon, 22 Feb 2016 11:16:16 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id 79si3248322pft.0.2016.02.22.11.16.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 11:16:16 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id e127so97509900pfe.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 11:16:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=hI308VrxxfAHVmgl9XWdX6MnhbmMhNbh2zNWUSfP00o=;
        b=nhkWA3Ri12eaSlayPS+By02uLiHy4DTFO9c5OVyFa0YZyHXNP74jf21fcSOCSq9eMg
         ph9ixaPyCG4BZcne1I8l5hcnb2ARWKxkzc1YBoIFKER2MNDDjM4zncq9l81V72yyj+Lv
         jBwcc9PjX3unnuN+WIBVp4tZsvJnkgmbyQsbn04B8wjN3bCzjjGO+80D+3L53mHhzF6y
         a6J0ucLp3/gCyCnkRFg08aNY4TYK1mfBkEv4roMKgxSYchdDPBRnmeQPglObhdly4Sa7
         sA3Wokcb608anWSVOuVMRq/DWJqkZgvFSdvfLTdBSbrwrvbKww7SfVSibrkWR+uJPYWD
         Gu7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=hI308VrxxfAHVmgl9XWdX6MnhbmMhNbh2zNWUSfP00o=;
        b=c0myaICWkQCrWopDAkbhcYDy/JwAnSZLZBZfs++s0SVOVkqv8kU41fBTWSvC9EGPys
         8BEf50w1aD/N1Fyau1hy4PEVU3U7wBuB813DDpLUH4UVZG2W29LkDw+716VB39CNZJMg
         1J8eb1BgPxj18WS1zCDTuuHXeiuC2pkenWxlzrSjEygTo5nYdKyRh5mVRKF09gjaV0mS
         zn7MTi2qyMTwG3ATPOj6iGV2gTpevSg8qz/vX6KNQz5XHLs4QRCmH8sWrnXC5Y1VeEvl
         b4LoinRwAsi87KjOMwzv10XBdZgdsp7qSp9lvI1xuJSLDP0GocXwx8TtZjDqC2RT7EYO
         mSQQ==
X-Gm-Message-State: AG10YOTgL3KhdsXVDOo1hGHg/upRVqgYd3yElrcsvEKOTGofVxKSFitDWQ/VP3pinJLFlQ==
X-Received: by 10.98.66.75 with SMTP id p72mr40785236pfa.50.1456168576551;
        Mon, 22 Feb 2016 11:16:16 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id yl1sm38809533pac.35.2016.02.22.11.16.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 11:16:16 -0800 (PST)
Date: Tue, 23 Feb 2016 00:46:12 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: drivers: Remove use of deprecated pci API
Message-ID: <20160222191612.GA31592@amitoj-Inspiron-3542>
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
 drivers/staging/comedi/drivers/cb_pcidas64.c | 48 +++++++++++++++-------------
 1 file changed, 26 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
index e918d42..de68062 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas64.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
@@ -1480,17 +1480,20 @@ static int alloc_and_init_dma_members(struct comedi_device *dev)
 	/*  allocate pci dma buffers */
 	for (i = 0; i < ai_dma_ring_count(board); i++) {
 		devpriv->ai_buffer[i] =
-			pci_alloc_consistent(pcidev, DMA_BUFFER_SIZE,
-					     &devpriv->ai_buffer_bus_addr[i]);
+			dma_alloc_coherent(&pcidev->dev, DMA_BUFFER_SIZE,
+					   &devpriv->ai_buffer_bus_addr[i],
+					   GFP_ATOMIC);
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
+						   GFP_ATOMIC);
 			if (!devpriv->ao_buffer[i])
 				return -ENOMEM;
 		}
@@ -1505,10 +1508,11 @@ static int alloc_and_init_dma_members(struct comedi_device *dev)
 
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
+					   GFP_ATOMIC);
 		if (!devpriv->ao_dma_desc)
 			return -ENOMEM;
 	}
@@ -1564,17 +1568,17 @@ static void cb_pcidas64_free_dma(struct comedi_device *dev)
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
@@ -1584,11 +1588,11 @@ static void cb_pcidas64_free_dma(struct comedi_device *dev)
 				    devpriv->ai_dma_desc,
 				    devpriv->ai_dma_desc_bus_addr);
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


