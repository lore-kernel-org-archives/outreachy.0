X-GM-THRID: 6208143559134019584
X-Received: by 10.107.14.196 with SMTP id 187mr13862941ioo.24.1445532611069;
        Thu, 22 Oct 2015 09:50:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.7 with SMTP id g7ls1715357qgf.98.gmail; Thu, 22 Oct
 2015 09:50:10 -0700 (PDT)
X-Received: by 10.13.223.72 with SMTP id i69mr12889038ywe.28.1445532610547;
        Thu, 22 Oct 2015 09:50:10 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id sm2si435634pab.0.2015.10.22.09.50.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 09:50:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id z6so91116382pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 09:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Oq5OtjixwycaER4KW0hP4dtjXXJlTXpFeau7AfjyEvM=;
        b=F0hOEDoWusGT8T8y2tiWmNTW/rYDh1bs3LOI0m8U0T/fJLuNaj5FX8Vp2jLTKpzpod
         fSItQl1Bvd9LqfF3zjqbwaoCnlhl2EY46NK9ZCV6kT/W75C3tdoktp7VaCDvXMn3V4eN
         KfFIfgskRIiPlJ3O/58PmvJQxnIobhnK6K9t90LGQPt6RiEg0SFanSViV/l9jUotX/FT
         6vbHFwSKF8Ho9Arf2oageBjOvh45PAUCkAyJB9uUaSiv6Bua/sU+stE64asbeuRR4vgg
         0Vb6/wU1GZEdKASys2csV+m/UZ8oORCGZYMIwWQJEMYBEcXgOBcpLid/fiLp16n+xJ5I
         UJKQ==
X-Received: by 10.66.157.72 with SMTP id wk8mr18354079pab.132.1445532610375;
        Thu, 22 Oct 2015 09:50:10 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([27.6.34.222])
        by smtp.gmail.com with ESMTPSA id we9sm14732753pab.3.2015.10.22.09.50.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 22 Oct 2015 09:50:10 -0700 (PDT)
Date: Thu, 22 Oct 2015 22:20:15 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/4] Staging: xgifb: Remove space after cast
Message-ID: <e8aa491d96948ebf4f6a9643cbb48ad0f519bbdd.1445527912.git.navyasri.tech@gmail.com>
References: <cover.1445527912.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445527912.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch check:

CHECK: No space is necessary after a cast

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
   -Remove space between one more cast.

 drivers/staging/xgifb/vb_init.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
index be30c13..879a7e6 100644
--- a/drivers/staging/xgifb/vb_init.c
+++ b/drivers/staging/xgifb/vb_init.c
@@ -814,7 +814,7 @@ static int XGINew_DDRSizing340(struct xgi_hw_device_info *HwDeviceExtension,
 
 		memsize += (pVBInfo->ram_channel - 2) + 20;
 		if ((HwDeviceExtension->ulVideoMemorySize - 1) <
-			(unsigned long) (1 << memsize))
+			(unsigned long)(1 << memsize))
 			continue;
 
 		if (XGINew_ReadWriteRest(memsize, start_addr, pVBInfo) == 1)
@@ -835,13 +835,13 @@ static void XGINew_SetDRAMSize_340(struct xgifb_video_info *xgifb_info,
 
 	data = xgifb_reg_get(pVBInfo->P3c4, 0x21);
 	/* disable read cache */
-	xgifb_reg_set(pVBInfo->P3c4, 0x21, (unsigned short) (data & 0xDF));
+	xgifb_reg_set(pVBInfo->P3c4, 0x21, (unsigned short)(data & 0xDF));
 	XGI_DisplayOff(xgifb_info, HwDeviceExtension, pVBInfo);
 
 	XGINew_DDRSizing340(HwDeviceExtension, pVBInfo);
 	data = xgifb_reg_get(pVBInfo->P3c4, 0x21);
 	/* enable read cache */
-	xgifb_reg_set(pVBInfo->P3c4, 0x21, (unsigned short) (data | 0x20));
+	xgifb_reg_set(pVBInfo->P3c4, 0x21, (unsigned short)(data | 0x20));
 }
 
 static u8 *xgifb_copy_rom(struct pci_dev *dev, size_t *rom_size)
-- 
1.9.1


