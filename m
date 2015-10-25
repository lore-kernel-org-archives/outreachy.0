X-GM-THRID: 6209346946679701504
X-Received: by 10.182.33.100 with SMTP id q4mr25358894obi.35.1445784550968;
        Sun, 25 Oct 2015 07:49:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.154.4 with SMTP id vk4ls70428igb.30.canary; Sun, 25 Oct
 2015 07:49:10 -0700 (PDT)
X-Received: by 10.66.102.38 with SMTP id fl6mr11297081pab.48.1445784550554;
        Sun, 25 Oct 2015 07:49:10 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id vy6si3085361pbc.1.2015.10.25.07.49.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 07:49:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id hk11so162096444pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 07:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=5hBz6UeyljUJJ4r452tmSeaZdr5pKZ9dlOUEnrpVHpc=;
        b=btVDjJbk0UZcIB6uay/2oAvR1KrNzwSrST+5msauZ3lGWg/eGzg1pwBNCtlbDNCR7E
         uKY10+RGix9R5nMk7+h4Tnmt34mzd/ihC8CuOAVosgiCx+/2YjE+vNaf2TYwKIBGhJLy
         kt2qXFTH/5p72c2Si6UNu4Nga8KEnLv/jhnTg++rhI6vE69ySi8piZYIBMThHoCydtTJ
         k7ouknMBJTKNFz41fpCrOBceVgQr4BL5cqGN1TKYAK+Ko2/Dhn3WvmmPlxr5zSdfZbNS
         Hhyf1InTCfHcvSQHt5d0f6hRWYqQJ+5x1oBks1onsYeLoNummerglYi8BOPoH/eR/jTs
         ZfnA==
X-Received: by 10.68.165.35 with SMTP id yv3mr17029366pbb.53.1445784550487;
        Sun, 25 Oct 2015 07:49:10 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id sn9sm29054172pac.16.2015.10.25.07.49.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 07:49:10 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/4] staging: slicoss: Removes multiple blank lines
Date: Sun, 25 Oct 2015 07:48:54 -0700
Message-Id: <d760368e13f3de3924c7a99be23b9b8a34a84f45.1445784166.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1445784166.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
 <cover.1445784166.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1445784166.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445784166.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch.pl check:

CHECK: Please don't use multiple blank lines

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/slicoss/slic.h    |    2 --
 drivers/staging/slicoss/slicoss.c |    5 -----
 2 files changed, 7 deletions(-)

diff --git a/drivers/staging/slicoss/slic.h b/drivers/staging/slicoss/slic.h
index 00b8af6..6ccd1d5 100644
--- a/drivers/staging/slicoss/slic.h
+++ b/drivers/staging/slicoss/slic.h
@@ -166,7 +166,6 @@ struct slic_cmdqueue {
 #define SLIC_MAX_CARDS              32
 #define SLIC_MAX_PORTS              4        /* Max # of ports per card   */
 
-
 struct mcast_address {
 	unsigned char address[6];
 	struct mcast_address *next;
@@ -485,7 +484,6 @@ struct adapter {
 	struct slicnet_stats     slic_stats;
 };
 
-
 #define UPDATE_STATS(largestat, newstat, oldstat)                        \
 {                                                                        \
 	if ((newstat) < (oldstat))                                       \
diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 3600176..a226055 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -54,7 +54,6 @@
  *       IS-NIC driver.
  */
 
-
 #define KLUDGE_FOR_4GB_BOUNDARY         1
 #define DEBUG_MICROCODE                 1
 #define DBG                             1
@@ -1149,7 +1148,6 @@ static u16 slic_eeprom_cksum(void *eeprom, unsigned len)
 	if (len > 0)
 		checksum += *(u8 *) wp;
 
-
 	while (checksum >> 16)
 		checksum = (checksum & 0xFFFF) + ((checksum >> 16) & 0xFFFF);
 
@@ -2131,7 +2129,6 @@ static void slic_interrupt_card_up(u32 isr, struct adapter *adapter,
 	}
 }
 
-
 static irqreturn_t slic_interrupt(int irq, void *dev_id)
 {
 	struct net_device *dev = dev_id;
@@ -2228,7 +2225,6 @@ xmit_fail:
 	goto xmit_done;
 }
 
-
 static void slic_adapter_freeresources(struct adapter *adapter)
 {
 	slic_init_cleanup(adapter);
@@ -3099,7 +3095,6 @@ static int slic_entry_probe(struct pci_dev *pcidev,
 	mmio_start = pci_resource_start(pcidev, 0);
 	mmio_len = pci_resource_len(pcidev, 0);
 
-
 /*	memmapped_ioaddr =  (u32)ioremap_nocache(mmio_start, mmio_len);*/
 	memmapped_ioaddr = ioremap(mmio_start, mmio_len);
 	if (!memmapped_ioaddr) {
-- 
1.7.9.5


