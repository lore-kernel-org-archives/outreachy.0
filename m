X-GM-THRID: 6209346946679701504
X-Received: by 10.67.21.136 with SMTP id hk8mr9572142pad.14.1445726247737;
        Sat, 24 Oct 2015 15:37:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.73.198 with SMTP id n6ls1325137obv.16.gmail; Sat, 24 Oct
 2015 15:37:27 -0700 (PDT)
X-Received: by 10.182.79.70 with SMTP id h6mr24442961obx.22.1445726247393;
        Sat, 24 Oct 2015 15:37:27 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id zg1si2930394pbb.2.2015.10.24.15.37.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 15:37:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id hk11so149918238pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 15:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=5hBz6UeyljUJJ4r452tmSeaZdr5pKZ9dlOUEnrpVHpc=;
        b=nt0QW3tJe2hC/Kl7kHBSC/VrFrN3uyPT+BROZIWc94bCOtlZEO5kZob8+9TpP4h0+6
         FwBLEtSfGIBy0Ya+rvx0qgIuzibN/2hfhSLOETPxEYoQq99m1IY5IJvJS0UJ+Ze4qvfu
         D6IpEVDkFAtFkPYVyGo+f1+7J0CPux5/iMnIJMQ3xwqOQG7/HVmReSBqgSD1xASMV1ol
         sbUq6FkmlzO2lw6VE5Ddm5Yd9Z90FGCv/9GOW6AgtEauAOLYSm45TwsOs+sy0IqeqKZk
         N3xY4RzHB5uBOgDn267pRpjH6XUbCPe9wCxqkmBBvo55ZKapjARRoNM/lt6rOUZZO90E
         28jQ==
X-Received: by 10.66.192.106 with SMTP id hf10mr13468319pac.16.1445726247296;
        Sat, 24 Oct 2015 15:37:27 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id fe8sm26017758pab.40.2015.10.24.15.37.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 15:37:26 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: slicoss: Removes multiple blank lines
Date: Sat, 24 Oct 2015 15:37:10 -0700
Message-Id: <d760368e13f3de3924c7a99be23b9b8a34a84f45.1445720974.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>

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


