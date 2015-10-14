X-GM-THRID: 6205587481887244288
X-Received: by 10.182.46.132 with SMTP id v4mr4131193obm.10.1444850946660;
        Wed, 14 Oct 2015 12:29:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.148 with SMTP id g20ls287818ioi.40.gmail; Wed, 14 Oct
 2015 12:29:06 -0700 (PDT)
X-Received: by 10.66.102.101 with SMTP id fn5mr4028070pab.38.1444850946386;
        Wed, 14 Oct 2015 12:29:06 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ce6si476635pad.0.2015.10.14.12.29.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:29:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id p3so14520031pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Cnko+QN28IejsBsJGOECi6k+j8VfJwIX7VprfhkK+BA=;
        b=m7pJ3LH20HrT1/6zYfrbJafC5eH5z+p5W8rkSKgFz9YvFa1vGGDa97M5nlXK5Y6kK3
         d2lunrxk8Bxhss2VrUTNc0RQAmsQ33lT39JJElGLd5xq7qWOL0qjzpc1QMS6ujx05AyS
         cgh3F5MmBh1vcAAR38sEL8MjCfFHslre/Bgkh/2MRVABzFbtbQLPsR8jUj/hgnCuScfR
         pb/C2iDSdx7894B7bTzPJANLeo0FbmMJyAq1zuLBZl4dRmD9XKfzM5dgx2BEcC/par2h
         xYflgH08oxzPDRc3KU5BRzwnhJ/B4r7C72Le3x0Pc+/BQelsIBd3KMLZ1xMiDur6UXpM
         z21w==
X-Received: by 10.66.97.73 with SMTP id dy9mr5295881pab.115.1444850946273;
        Wed, 14 Oct 2015 12:29:06 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id aw5sm11106380pbc.13.2015.10.14.12.29.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 12:29:05 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 06/12] Staging: slicoss: Remove unnecessary cast on void pointer
Date: Thu, 15 Oct 2015 00:58:24 +0530
Message-Id: <1444850910-11408-7-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
References: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.561EAD00.00AC,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

void pointers do not need to be cast to other pointer types.

The semantic patch used to find this:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 2025b61..3600176 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -1309,7 +1309,7 @@ static void slic_cmdq_addcmdpage(struct adapter *adapter, u32 *page)
 	unsigned long flags;
 
 	cmdaddr = page;
-	cmd = (struct slic_hostcmd *)cmdaddr;
+	cmd = cmdaddr;
 	cmdcnt = 0;
 
 	phys_addr = virt_to_bus((void *)page);
@@ -1342,7 +1342,7 @@ static void slic_cmdq_addcmdpage(struct adapter *adapter, u32 *page)
 		phys_addrl += SLIC_HOSTCMD_SIZE;
 		cmdaddr += SLIC_HOSTCMD_SIZE;
 
-		cmd = (struct slic_hostcmd *)cmdaddr;
+		cmd = cmdaddr;
 		cmdcnt++;
 	}
 
@@ -2055,7 +2055,6 @@ static void slic_xmit_complete(struct adapter *adapter)
 		*/
 		slic_handle_word.handle_token = rspbuf->hosthandle;
 		hcmd =
-		    (struct slic_hostcmd *)
 			adapter->slic_handles[slic_handle_word.handle_index].
 									address;
 /*      hcmd = (struct slic_hostcmd *) rspbuf->hosthandle; */
@@ -2135,7 +2134,7 @@ static void slic_interrupt_card_up(u32 isr, struct adapter *adapter,
 
 static irqreturn_t slic_interrupt(int irq, void *dev_id)
 {
-	struct net_device *dev = (struct net_device *)dev_id;
+	struct net_device *dev = dev_id;
 	struct adapter *adapter = netdev_priv(dev);
 	u32 isr;
 
@@ -2881,7 +2880,7 @@ static void slic_init_adapter(struct net_device *netdev,
 	adapter->busnumber = pcidev->bus->number;
 	adapter->slotnumber = ((pcidev->devfn >> 3) & 0x1F);
 	adapter->functionnumber = (pcidev->devfn & 0x7);
-	adapter->slic_regs = (__iomem struct slic_regs *)memaddr;
+	adapter->slic_regs = memaddr;
 	adapter->irq = pcidev->irq;
 /*	adapter->netdev = netdev;*/
 	adapter->chipid = chip_idx;
-- 
2.1.4


