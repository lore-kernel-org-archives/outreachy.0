X-GM-THRID: 6253767440848650240
X-Received: by 10.107.16.87 with SMTP id y84mr24571042ioi.2.1456072353641;
        Sun, 21 Feb 2016 08:32:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.230 with SMTP id k93ls1091292qge.78.gmail; Sun, 21 Feb
 2016 08:32:32 -0800 (PST)
X-Received: by 10.31.152.208 with SMTP id a199mr22861380vke.4.1456072352799;
        Sun, 21 Feb 2016 08:32:32 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x22e.google.com (mail-io0-x22e.google.com. [2607:f8b0:4001:c06::22e])
        by gmr-mx.google.com with ESMTPS id s20si1653139igr.2.2016.02.21.08.32.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 08:32:32 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22e as permitted sender) client-ip=2607:f8b0:4001:c06::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22e as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22e.google.com with SMTP id g203so155072088iof.2
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 08:32:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=piDFle57aPDtZTYijlgBaGUf667CwnMuMAijOd9Ecyw=;
        b=ZTRW4122QbkN3mx9OkP9ZNNaZOSR3Pz7IEqkfKFSoIbLfFRgJfUv4MgUYjiidHYgvX
         0/ibQpnZi2ch45K9JaGpx+jGNcW9XfX3K9gxKsa4UerlSM9alxH3fJBQkBvzKnyCWi2P
         DSzT3PFmnzeUUiezXE8htzvhNRhit98wmXpiBr5YBgJZv5WizbtQmPJUmsX5SmqJ+fs5
         8fu5ToXWgT9BgWGpA8lI/QPUew14q36VBui2ViD1i0xWRzrlvWKv+EWXMEcMxpiXzHGa
         BwQblo2w+m5lgNc85lJ6cMuxymJEsjYXUBQ/C1RTd9uSDb5YWiobvWGuVw+FLhMI4+vB
         w1DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=piDFle57aPDtZTYijlgBaGUf667CwnMuMAijOd9Ecyw=;
        b=AfNKZ7djfE17eybNH/nHEp5TR2zjBEedXsydvjwP3dXVVG74rIO/kYc6DO1XuSDTmZ
         R51BM5dsx1Tn/USVeUdlPsxfSPTB0ungybbRwMrpqQzrPu2CWO7dxOM3QfFRV2mI8zT4
         GCZPsfBEgMn9ZxMx3wxqmHOIXD+3M4WKE04/WtbdLNPZunO6HjxKS7mLcHWrDfKn3ccc
         RxTWvIUGE2VmFT9XZUAiGB41MBzdlQjnpCXzBzKyyBN9P1jmnz0+yL/YAeh9ysf5j33W
         Zrsf7XP93bEzxO3+umS7EOoNVS+9EUAaRG1szlf2jue3CU2gHcSNBcbrzdpuAJ9M1Xfa
         ZKJw==
X-Gm-Message-State: AG10YOTczbE20gxR0VHjoxmg7iNypZ3wn+xZGra3O4BM3+NO0HdHKQ+dy/ZKVCLD8KxfkA==
X-Received: by 10.107.135.212 with SMTP id r81mr5258994ioi.59.1456072352654;
        Sun, 21 Feb 2016 08:32:32 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id 10sm4266085ioj.32.2016.02.21.08.32.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 08:32:32 -0800 (PST)
Date: Sun, 21 Feb 2016 16:31:44 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: slicoss: Eliminate commented out code
Message-ID: <20160221213144.GA4870@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove commented out code to reduce code clutter.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v1:
 * Removed an unneeded comment on a block comment which was removed.

 drivers/staging/slicoss/slicoss.c | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index a91c60a..3d0a393 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -545,14 +545,6 @@ static int slic_card_download(struct adapter *adapter)
 			instruction = *(u32 *)(fw->data + index);
 			index += 4;
 
-			/* Check SRAM location zero. If it is non-zero. Abort.*/
-		     /*
-		      * failure = readl((u32 __iomem *)&slic_regs->slic_reset);
-		      * if (failure) {
-		      *	release_firmware(fw);
-		      *	return -EIO;
-		      * }
-		      */
 		}
 	}
 	release_firmware(fw);
@@ -907,11 +899,6 @@ static void slic_upr_start(struct adapter *adapter)
 {
 	struct slic_upr *upr;
 	__iomem struct slic_regs *slic_regs = adapter->slic_regs;
-/*
- *  char * ptr1;
- *  char * ptr2;
- *  uint cmdoffset;
- */
 	upr = adapter->upr_list;
 	if (!upr)
 		return;
@@ -2923,9 +2910,8 @@ static void slic_init_adapter(struct net_device *netdev,
 	adapter->functionnumber = (pcidev->devfn & 0x7);
 	adapter->slic_regs = memaddr;
 	adapter->irq = pcidev->irq;
-/*	adapter->netdev = netdev;*/
 	adapter->chipid = chip_idx;
-	adapter->port = 0;	/*adapter->functionnumber;*/
+	adapter->port = 0;
 	adapter->cardindex = adapter->port;
 	spin_lock_init(&adapter->upr_lock);
 	spin_lock_init(&adapter->bit64reglock);
@@ -3140,7 +3126,6 @@ static int slic_entry_probe(struct pci_dev *pcidev,
 	mmio_start = pci_resource_start(pcidev, 0);
 	mmio_len = pci_resource_len(pcidev, 0);
 
-/*	memmapped_ioaddr =  (u32)ioremap_nocache(mmio_start, mmio_len);*/
 	memmapped_ioaddr = ioremap(mmio_start, mmio_len);
 	if (!memmapped_ioaddr) {
 		dev_err(&pcidev->dev, "cannot remap MMIO region %lx @ %lx\n",
-- 
2.5.0


