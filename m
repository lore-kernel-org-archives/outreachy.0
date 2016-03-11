X-GM-THRID: 6260686017839235072
X-Received: by 10.182.120.106 with SMTP id lb10mr6036174obb.24.1457679568726;
        Thu, 10 Mar 2016 22:59:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.4.19 with SMTP id 19ls481052ioe.96.gmail; Thu, 10 Mar 2016
 22:59:28 -0800 (PST)
X-Received: by 10.107.134.68 with SMTP id i65mr5678653iod.33.1457679568443;
        Thu, 10 Mar 2016 22:59:28 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 12si1100176pfb.1.2016.03.10.22.59.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 22:59:28 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id 1so7343895pal.3
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 22:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=0xcUehqWWNCe2iJ/zxpA2y5H3DSuzgWcbet/Hd6tKcA=;
        b=m27ntUk/4AID8yC+fCnyiP+Ll8NrOkx6Z2RzrGvQsuAXggAs74w8w8QhFJsgAwJvcJ
         2JdBF5QJl106l/8at6UBW0Ka2sgLvq135OgFyR5TLgGjbwj33h7oX1pxbXwJOAWGCspU
         LTSK09TuMCxFgYmg+hB2xpr1Lz4L2RCesIB8nrzE5/3OlLM5A7PnqvVA3aLxEYHlFByp
         DxbpqE2Gw/pwCtigIrqlhNF+qBNAbIeVEBsbpDtxWprNrKTNwugBa6Y6kxf76cjtyZ9x
         eqvBqEXkxBmbhtoZ3VE9RnSA1/6lXlBQ5SrFcRMZbogTTINB+WbfmjL3DDELSsgTgLoW
         5jcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=0xcUehqWWNCe2iJ/zxpA2y5H3DSuzgWcbet/Hd6tKcA=;
        b=kpEOD3inGUEc4KAZ/JQykfwus0IWVdTJb7MXQVZeUYq6x71C1yado0CPMtXEf/eXqC
         IoL/bEZKznSdHRbelZp0zHWY2P4iDV7UBH5Xn/2nn2s101TXJsXTkYbuU68NUs8SnjTi
         ZI1qQ1gO043JJHGnXthSyHVFK43eThY0QJJ6/LIw57Se2+0k9cYJ+RRl3SLIclP924ve
         VIkdTu5Sk5a4dP8kB1gy/Nbds80dVUUeV6AosBleNz+L+lBN8CbAyIHJ56gHA3JRgCT1
         UHxFovmQSKbhD8sjemn2rmIs/H+qX0JGfAe13+o2Mzs6mQK3rToA5DKCvjorWyLCmPs1
         5Asg==
X-Gm-Message-State: AD7BkJIp+zwJ67oeYcNoSYRA6PcNyosccOobyuSEuYvbNnW9Gohd2y33LYTy5nza1LXKdw==
X-Received: by 10.67.30.163 with SMTP id kf3mr11894656pad.45.1457679568275;
        Thu, 10 Mar 2016 22:59:28 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.187.211])
        by smtp.gmail.com with ESMTPSA id b4sm10129304pas.19.2016.03.10.22.59.20
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 22:59:27 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 11 Mar 2016 12:29:15 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 1/3] Staging: sm750fb: Remove unused functions
Date: Fri, 11 Mar 2016 12:28:49 +0530
Message-Id: <4fda989333ff71f57c0d58ca07e877aa828e6d31.1457679000.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1457679000.git.bhumirks@gmail.com>
References: <cover.1457679000.git.bhumirks@gmail.com>
In-Reply-To: <cover.1457679000.git.bhumirks@gmail.com>
References: <cover.1457679000.git.bhumirks@gmail.com>

The functions dviGetDeviceID and dviGetVendorID are not used anywhere in
the kernel so remove them. Also, remove their function prototypes.
Grepped to find occurences.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/sm750fb/ddk750_dvi.c | 38 ------------------------------------
 drivers/staging/sm750fb/ddk750_dvi.h |  3 ---
 2 files changed, 41 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
index a7a2351..a4a2550 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.c
+++ b/drivers/staging/sm750fb/ddk750_dvi.c
@@ -53,44 +53,6 @@ int dviInit(
 	return -1; /* error */
 }
 
-
-/*
- *  dviGetVendorID
- *      This function gets the vendor ID of the DVI controller chip.
- *
- *  Output:
- *      Vendor ID
- */
-unsigned short dviGetVendorID(void)
-{
-	dvi_ctrl_device_t *pCurrentDviCtrl;
-
-	pCurrentDviCtrl = g_dcftSupportedDviController;
-	if (pCurrentDviCtrl != (dvi_ctrl_device_t *)0)
-		return pCurrentDviCtrl->pfnGetVendorId();
-
-	return 0x0000;
-}
-
-
-/*
- *  dviGetDeviceID
- *      This function gets the device ID of the DVI controller chip.
- *
- *  Output:
- *      Device ID
- */
-unsigned short dviGetDeviceID(void)
-{
-	dvi_ctrl_device_t *pCurrentDviCtrl;
-
-	pCurrentDviCtrl = g_dcftSupportedDviController;
-	if (pCurrentDviCtrl != (dvi_ctrl_device_t *)0)
-		return pCurrentDviCtrl->pfnGetDeviceId();
-
-	return 0x0000;
-}
-
 #endif
 
 
diff --git a/drivers/staging/sm750fb/ddk750_dvi.h b/drivers/staging/sm750fb/ddk750_dvi.h
index e1d4c9a..677939c 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.h
+++ b/drivers/staging/sm750fb/ddk750_dvi.h
@@ -55,8 +55,5 @@ int dviInit(
 	unsigned char pllFilterValue
 );
 
-unsigned short dviGetVendorID(void);
-unsigned short dviGetDeviceID(void);
-
 #endif
 
-- 
1.9.1


