X-GM-THRID: 6208143559134019584
X-Received: by 10.68.138.233 with SMTP id qt9mr8487752pbb.11.1445446236012;
        Wed, 21 Oct 2015 09:50:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.103.161 with SMTP id fx1ls457399obb.44.gmail; Wed, 21 Oct
 2015 09:50:35 -0700 (PDT)
X-Received: by 10.182.246.98 with SMTP id xv2mr9106425obc.3.1445446235656;
        Wed, 21 Oct 2015 09:50:35 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id el2si1178144pbb.0.2015.10.21.09.50.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 09:50:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fv9so61901375pac.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 09:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=+TmuZRL5XmDy3VfxzHeRz9EC2KxqJbqm+sgSLTfNfms=;
        b=GuTbwv9c+oRqmtbbxXC8CUvOS4kqi/dGROhMhiw1Uz7m1IXhl4icHGcoIMSPbQBWaO
         oRSQRNbksx+q4dXvPvlDJhETWSoS462J68I+7hQHGm4Rs9RpeTcJz0PCuLbfJdkDcCWY
         a5pEf58oKBYjLYsLCkMVxRBO/3kgXeyD8/ImchpGontrfSavDMBakujdMo1oOMvTBJ/a
         j7B/hU34xZ1/EnS9TiAZTBlUPt5TIY5J5f8lUaz6MkHYW1HkQ0YYi7dWF7MQK/5jxnUU
         MRM6dOwGB3FJ/TZAW6bZDV9nuWca8vOGnpyFRPPKgz6/4493uOlZO8f1EsexZA3JiOW3
         P7nA==
X-Received: by 10.67.16.15 with SMTP id fs15mr11772032pad.82.1445446235425;
        Wed, 21 Oct 2015 09:50:35 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([27.6.33.173])
        by smtp.gmail.com with ESMTPSA id bs3sm10027498pbd.89.2015.10.21.09.50.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 21 Oct 2015 09:50:35 -0700 (PDT)
Date: Wed, 21 Oct 2015 22:20:38 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] Staging: xgifb: Fix comparison to NULL warning
Message-ID: <e8af134e2603aa0b3d4dd110ab27d96efa035607.1445445320.git.navyasri.tech@gmail.com>
References: <cover.1445445320.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445445320.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Change comparison to NULL to a ! operation.
Found using checkpatch.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/xgifb/vb_init.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
index 1aa8600..0615f1c 100644
--- a/drivers/staging/xgifb/vb_init.c
+++ b/drivers/staging/xgifb/vb_init.c
@@ -851,11 +851,11 @@ static u8 *xgifb_copy_rom(struct pci_dev *dev, size_t *rom_size)
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
@@ -877,7 +877,7 @@ static bool xgifb_read_vbios(struct pci_dev *pdev)
 	int entry;
 
 	vbios = xgifb_copy_rom(pdev, &vbios_size);
-	if (vbios == NULL) {
+	if (!vbios) {
 		dev_err(&pdev->dev, "Video BIOS not available\n");
 		return false;
 	}
@@ -1187,7 +1187,7 @@ unsigned char XGIInitNew(struct pci_dev *pdev)
 
 	pVBInfo->FBAddr = HwDeviceExtension->pjVideoMemoryAddress;
 
-	if (pVBInfo->FBAddr == NULL) {
+	if (!pVBInfo->FBAddr) {
 		dev_dbg(&pdev->dev, "pVBInfo->FBAddr == 0\n");
 		return 0;
 	}
-- 
1.9.1


