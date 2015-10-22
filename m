X-GM-THRID: 6208143559134019584
X-Received: by 10.31.108.23 with SMTP id h23mr13360862vkc.4.1445532502466;
        Thu, 22 Oct 2015 09:48:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.13.36 with SMTP id e4ls1823374igc.13.canary; Thu, 22 Oct
 2015 09:48:22 -0700 (PDT)
X-Received: by 10.67.14.6 with SMTP id fc6mr13765743pad.14.1445532502184;
        Thu, 22 Oct 2015 09:48:22 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id zg1si1781403pbb.2.2015.10.22.09.48.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 09:48:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fv9so95468500pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 09:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=sL8AAFJ4p6M7/pJ+x8MgB6xjvm9Wpxpy+pZAlBSX1SU=;
        b=0rnWFj2cS4Z80X72kcPLrDzT7lwr+o8K7r2z/ZmPGWq/6o8t9vuFLIiFjYRA5D6bNf
         3InQDyEkM3METxrHJ+5pc8V5qcO2SdkM38c5ApifGTToJfwwW2D/iswu7xxL5ldPaKoD
         02cXRKzZAWDKR/jMqaDZ2sQKsii7ciKs0aMt4AmgJNbDtJ2trAVb4ouWnQ4PHn3cgRAS
         xBjW3A4PVbs5GXf19Lio1nj2IY3qLEVrIOXyZTu+MbAXNfpC/cLkrpKMg1SHlOk8Kryj
         WbhOjt3ktMP6wbdhP5HJ/6R1UaGCW94gdxC2OfThI3dnkOKtKPLsACCKAx5nVM7Z7/bg
         DFkQ==
X-Received: by 10.68.249.34 with SMTP id yr2mr18482828pbc.73.1445532502062;
        Thu, 22 Oct 2015 09:48:22 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([27.6.34.222])
        by smtp.gmail.com with ESMTPSA id qb7sm14728963pab.47.2015.10.22.09.48.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 22 Oct 2015 09:48:21 -0700 (PDT)
Date: Thu, 22 Oct 2015 22:18:26 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/4] Staging: xgifb: Fix comparison to NULL warning
Message-ID: <049c9140847061f21fb52984531ee0f2fa180172.1445527912.git.navyasri.tech@gmail.com>
References: <cover.1445527912.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445527912.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Change comparison to NULL to a ! operation.
Found using checkpatch.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
   -Include one other NULL to ! operation conversion.

 drivers/staging/xgifb/vb_init.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
index af91523..be30c13 100644
--- a/drivers/staging/xgifb/vb_init.c
+++ b/drivers/staging/xgifb/vb_init.c
@@ -850,11 +850,11 @@ static u8 *xgifb_copy_rom(struct pci_dev *dev, size_t *rom_size)
 	u8 *rom_copy;
 
 	rom_address = pci_map_rom(dev, rom_size);
-	if (rom_address == NULL)
+	if (!rom_address)
 		return NULL;
 
 	rom_copy = vzalloc(XGIFB_ROM_SIZE);
-	if (rom_copy == NULL)
+	if (!rom_copy)
 		goto done;
 
 	*rom_size = min_t(size_t, *rom_size, XGIFB_ROM_SIZE);
@@ -876,7 +876,7 @@ static bool xgifb_read_vbios(struct pci_dev *pdev)
 	int entry;
 
 	vbios = xgifb_copy_rom(pdev, &vbios_size);
-	if (vbios == NULL) {
+	if (!vbios) {
 		dev_err(&pdev->dev, "Video BIOS not available\n");
 		return false;
 	}
@@ -1186,7 +1186,7 @@ unsigned char XGIInitNew(struct pci_dev *pdev)
 
 	pVBInfo->FBAddr = HwDeviceExtension->pjVideoMemoryAddress;
 
-	if (pVBInfo->FBAddr == NULL) {
+	if (!pVBInfo->FBAddr) {
 		dev_dbg(&pdev->dev, "pVBInfo->FBAddr == 0\n");
 		return 0;
 	}
-- 
1.9.1


