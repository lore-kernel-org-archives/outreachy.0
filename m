X-GM-THRID: 6249298092856705024
X-Received: by 10.182.46.201 with SMTP id x9mr6060363obm.43.1455028231044;
        Tue, 09 Feb 2016 06:30:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.80 with SMTP id y77ls2178006ioi.81.gmail; Tue, 09 Feb
 2016 06:30:30 -0800 (PST)
X-Received: by 10.107.7.200 with SMTP id g69mr35044709ioi.3.1455028230764;
        Tue, 09 Feb 2016 06:30:30 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ff2si2345588pad.2.2016.02.09.06.30.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 06:30:30 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so96858pad.2
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 06:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=vwGg31g8veLYpiuf9TqDJqEUGuRil8QNe6BP+M3JUoY=;
        b=uWtV03XZ4s+SDRHl4ZcBnRHEEP561+h97tBEI6uopAHeQDuaXDz3npcku/rS4V8Mjr
         EN0xIkHdJChXcv4WFcoeJEIuDxGxxDEvder/xeZMFfZ/7h3u7fX6OSlo4aKG11PqFYmV
         NDxJ0BYjwCI0SHHupDPhkv/vYiN4c60l1Mag1KJ+1gco5a8J+LpzhtQ8wxXyIGtInPJI
         uwhf4sduCNIOGL9LB7V9mGqQciUWmxSU1GW6O54GiDoQggUUJc8nKZV8VRtXfyNzgMBd
         qk0BeujIUpDGZCFpaNIjbak0GBoJhZaOXHY5ose4Fiq3W35omrPhh9M04gVOF2bdqWC6
         WGDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=vwGg31g8veLYpiuf9TqDJqEUGuRil8QNe6BP+M3JUoY=;
        b=Xw1ep3z6NNJ3pA9fWuCLT/XK0WdgXlZZOZHCY2UbARn/el1wkNP79FcW49n2wbA0Rr
         66FdLoUGpGh6E/qahQo+oRkDCMYlJ61PuqUgZ43cZipinYo59MoepRC4Y9MuxA1eLNxr
         icVNDhmqeJHJPhnAqczLPGKw9di7ZTqa+eKQdJa4hvcw5ftefKto3NF6ZpEAoN7s2ikG
         1SMn8zno9QMOLmxB+wM24DUWHXgvl6vuvywTiyaHhoKVcgTAChPxqg+VorEkkqM9mfuH
         bPZOFiVn/bj0wb5FwArjlipBBA+hro/jCoBD24XAMgvILJMJEV/vlbfakLK3dL5vVnlW
         mqwA==
X-Gm-Message-State: AG10YORS8tMtGkB34EAVJ10JLZQYlpDV54QCSAdmpXiFMpjVJrJ1BJxmh3+V6fmKc8Dsjg==
X-Received: by 10.67.1.102 with SMTP id bf6mr50753334pad.103.1455028230644;
        Tue, 09 Feb 2016 06:30:30 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.176.229])
        by smtp.gmail.com with ESMTPSA id s90sm45586520pfa.49.2016.02.09.06.30.12
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 06:30:29 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 09 Feb 2016 19:59:35 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 2/2] Staging: xgifb: Remove unnecessary blank lines
Date: Tue,  9 Feb 2016 19:57:41 +0530
Message-Id: <4120cf873d1a74811652f3fd1b7d25e837400010.1455026990.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455026990.git.bhumirks@gmail.com>
References: <cover.1455026990.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455026990.git.bhumirks@gmail.com>
References: <cover.1455026990.git.bhumirks@gmail.com>

This patch removes unnecessary blank lines after { and before }.
Found using checkpatch.pl.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index bb7756c..de96da1 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -61,7 +61,6 @@ void InitTo330Pointer(unsigned char ChipType, struct vb_device_info *pVBInfo)
 		if (((temp & 0x88) == 0x80) || ((temp & 0x88) == 0x08))
 			pVBInfo->XGINew_CR97 = 0x80;
 	}
-
 }
 
 static void XGI_SetSeqRegs(struct vb_device_info *pVBInfo)
@@ -155,7 +154,6 @@ static void XGI_ClearExt1Regs(struct vb_device_info *pVBInfo)
 
 static unsigned char XGI_SetDefaultVCLK(struct vb_device_info *pVBInfo)
 {
-
 	xgifb_reg_and_or(pVBInfo->P3c4, 0x31, ~0x30, 0x20);
 	xgifb_reg_set(pVBInfo->P3c4, 0x2B, XGI_VCLKData[0].SR2B);
 	xgifb_reg_set(pVBInfo->P3c4, 0x2C, XGI_VCLKData[0].SR2C);
@@ -592,7 +590,6 @@ static void XGI_SetXG27FPBits(struct vb_device_info *pVBInfo)
 	xgifb_reg_and_or(pVBInfo->P3c4, 0x06, ~0xc0, temp & 0x80);
 	/* SR09[7] enable FP output, SR09[6] 1: sigle 18bits, 0: 24bits */
 	xgifb_reg_and_or(pVBInfo->P3c4, 0x09, ~0xc0, temp | 0x80);
-
 }
 
 static void xgifb_set_lcd(int chip_id,
@@ -930,7 +927,6 @@ static void XGI_SetXG21FPBits(struct vb_device_info *pVBInfo)
 	xgifb_reg_and_or(pVBInfo->P3c4, 0x06, ~0x40, temp);
 	/* SR09[7] enable FP output, SR09[6] 1: sigle 18bits, 0: dual 12bits */
 	xgifb_reg_and_or(pVBInfo->P3c4, 0x09, ~0xc0, temp | 0x80);
-
 }
 
 static void XGI_SetCRT1FIFO(struct xgi_hw_device_info *HwDeviceExtension,
@@ -990,7 +986,6 @@ static void XGI_SetVCLKState(struct xgi_hw_device_info *HwDeviceExtension,
 	xgifb_reg_and_or(pVBInfo->P3c4, 0x07, 0xFC, data2);
 	if (HwDeviceExtension->jChipType >= XG27)
 		xgifb_reg_and_or(pVBInfo->P3c4, 0x40, 0xFC, data2 & 0x03);
-
 }
 
 static void XGI_SetCRT1ModeRegs(struct xgi_hw_device_info *HwDeviceExtension,
@@ -1072,7 +1067,6 @@ static void XGI_SetCRT1ModeRegs(struct xgi_hw_device_info *HwDeviceExtension,
 			data = 0x6c;
 		xgifb_reg_set(pVBInfo->P3d4, 0x52, data);
 	}
-
 }
 
 static void XGI_WriteDAC(unsigned short dl,
-- 
1.9.1


