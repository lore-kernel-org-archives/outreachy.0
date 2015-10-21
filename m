X-GM-THRID: 6208143559134019584
X-Received: by 10.182.70.4 with SMTP id i4mr8352093obu.15.1445446269619;
        Wed, 21 Oct 2015 09:51:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.14 with SMTP id w14ls574913ioi.38.gmail; Wed, 21 Oct
 2015 09:51:09 -0700 (PDT)
X-Received: by 10.67.23.163 with SMTP id ib3mr8426999pad.45.1445446269248;
        Wed, 21 Oct 2015 09:51:09 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id ce6si1214126pad.0.2015.10.21.09.51.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 09:51:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id rc13so59530802pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 09:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=U2xbghtx01UK3a9DwvpREar8PEP3eOvsMlFRXSwxYX0=;
        b=o1qPLfPCAggIJEg/I+qACutmQbXDgi8zOBrGCWrv4ReMkiM8L6qr+/RX/YwP0a+cpf
         /uB8kKYxBiWpJctG5Jjm0JBKqOusnHuIZd7ENyKaYTW19ZrgzK4BB77Q6NWmjLTILTWF
         AzFnh3H7MIbuXm9gHOsBsHRRQZSGco1wWJluWJ/cYns2lsplAp0hFNXIpFV1pelgW0vk
         BVQxa9B/uUsipOwQjiXwJmKjQGKoBLfOu3jhEP0p+DzX5YRUodQg0Ll9Nz36qvsaKE4X
         ltJNLxngy62LsJkdOCVwGghIVfZmVVkQB7I+EmuG0ghlOpRlL/bK6/jq+vXCy4ZhX/q/
         OruA==
X-Received: by 10.68.197.168 with SMTP id iv8mr11505522pbc.81.1445446269144;
        Wed, 21 Oct 2015 09:51:09 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([27.6.33.173])
        by smtp.gmail.com with ESMTPSA id ss6sm10037993pbc.74.2015.10.21.09.51.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 21 Oct 2015 09:51:08 -0700 (PDT)
Date: Wed, 21 Oct 2015 22:21:11 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/5] Staging: xgifb: Remove space after cast
Message-ID: <2a77ddfac958341380e824b5f5376b97978f6a78.1445445320.git.navyasri.tech@gmail.com>
References: <cover.1445445320.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445445320.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch check:

CHECK: No space is necessary after a cast

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/xgifb/vb_init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
index 0615f1c..cef24b3 100644
--- a/drivers/staging/xgifb/vb_init.c
+++ b/drivers/staging/xgifb/vb_init.c
@@ -815,7 +815,7 @@ static int XGINew_DDRSizing340(struct xgi_hw_device_info *HwDeviceExtension,
 
 		memsize += (pVBInfo->ram_channel - 2) + 20;
 		if ((HwDeviceExtension->ulVideoMemorySize - 1) <
-			(unsigned long) (1 << memsize))
+			(unsigned long)(1 << memsize))
 			continue;
 
 		if (XGINew_ReadWriteRest(memsize, start_addr, pVBInfo) == 1)
@@ -836,7 +836,7 @@ static void XGINew_SetDRAMSize_340(struct xgifb_video_info *xgifb_info,
 
 	data = xgifb_reg_get(pVBInfo->P3c4, 0x21);
 	/* disable read cache */
-	xgifb_reg_set(pVBInfo->P3c4, 0x21, (unsigned short) (data & 0xDF));
+	xgifb_reg_set(pVBInfo->P3c4, 0x21, (unsigned short)(data & 0xDF));
 	XGI_DisplayOff(xgifb_info, HwDeviceExtension, pVBInfo);
 
 	XGINew_DDRSizing340(HwDeviceExtension, pVBInfo);
-- 
1.9.1


