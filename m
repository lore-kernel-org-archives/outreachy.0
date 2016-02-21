X-GM-THRID: 6253767440848650240
X-Received: by 10.182.227.137 with SMTP id sa9mr23660488obc.44.1456068698718;
        Sun, 21 Feb 2016 07:31:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.4.142 with SMTP id 136ls628991ioe.10.gmail; Sun, 21 Feb
 2016 07:31:37 -0800 (PST)
X-Received: by 10.107.152.10 with SMTP id a10mr24664886ioe.28.1456068697911;
        Sun, 21 Feb 2016 07:31:37 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x22e.google.com (mail-io0-x22e.google.com. [2607:f8b0:4001:c06::22e])
        by gmr-mx.google.com with ESMTPS id c15si1590626igm.1.2016.02.21.07.31.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 07:31:37 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22e as permitted sender) client-ip=2607:f8b0:4001:c06::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22e as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22e.google.com with SMTP id z135so154668087iof.0
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 07:31:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gSlHrawhjbcE0NLhNjW//Jbz13w+ZGp1AJMhwXMewNA=;
        b=RZKvnntwqiIQloPnYsZYgNy1ulFw1FLc68PtK6N0V+9+TilCnu1jW5oZakeY6ZBKH1
         iVVrSHeRpVXsoIORfr532ukaWMuRDdZk52Gb+vHkZ2ATCx+zf4i4cnQzNPzsO3K6Y0P0
         CcDoHRkvwJp4CFwHhSVaLQ7+9h/o1L4gS+zjwFzyqaNqTtMwPajW2432eI+zIjT3vLmZ
         NJji7F4wWlE9I6D13vgNNY5vYY8oAehG5alZzJhuJZ1nnjwIKYtJFM4IOc/c/f7OxfbS
         MO4uFJRc/ByTqbNH9zlipffuae8xn1feCGrm9PiKFgRtltZ6heLNVjx/MPkPtXJDTklf
         7M9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=gSlHrawhjbcE0NLhNjW//Jbz13w+ZGp1AJMhwXMewNA=;
        b=K8GjryNKm6byAN7uRVPEFBN//p05+4+T+Rymbz5CuYk8Qby8zPXl08lc1JTR+W7Ksa
         vUdVSsw5yrzgk60l7TxIw/mYYyd/ELw00ICr7pCJpnx6csAXzoDoIh65kJVWc3Jv9rcM
         6I+YgzEq+PubXuqzcNH0F/taFldPn8PXnXE9SLEKFYtgvUsw8tLU8jIBDIsL5Ip7NA6T
         gk7IpfBpgJwzEHvOIduQTgamFP2XQLDK+IqkWImH1di7cUPbdvFJGmYlcPzn8mniQiH/
         bpqzXLB5oaFRaqoi//O9+F+kTDEk3918keHrZC0XcRIkT+hZ10ux/gPzQE04Enk8dG1Z
         IWeQ==
X-Gm-Message-State: AG10YOQN1lV8m7qVfT7kvQIdXTBqn8FSxHH8R4j8Wb1G1GyDOTgcR7pagBG2kgXlKGU0Sw==
X-Received: by 10.107.47.39 with SMTP id j39mr22676302ioo.168.1456068697791;
        Sun, 21 Feb 2016 07:31:37 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id wz3sm7553723igb.16.2016.02.21.07.31.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 07:31:37 -0800 (PST)
Date: Sun, 21 Feb 2016 15:30:50 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: slicoss: Eliminate commented out code
Message-ID: <20160221203050.GA30530@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove commented out code to reduce code clutter.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index a91c60a..59f829e 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -546,13 +546,6 @@ static int slic_card_download(struct adapter *adapter)
 			index += 4;
 
 			/* Check SRAM location zero. If it is non-zero. Abort.*/
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
@@ -907,11 +900,6 @@ static void slic_upr_start(struct adapter *adapter)
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
@@ -2914,7 +2902,6 @@ static void slic_init_adapter(struct net_device *netdev,
 	struct slic_handle *pslic_handle;
 	struct adapter *adapter = netdev_priv(netdev);
 
-/*	adapter->pcidev = pcidev;*/
 	adapter->vendid = pci_tbl_entry->vendor;
 	adapter->devid = pci_tbl_entry->device;
 	adapter->subsysid = pci_tbl_entry->subdevice;
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


