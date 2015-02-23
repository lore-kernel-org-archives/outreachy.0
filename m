X-GM-THRID: 2693844172800
X-Received: by 10.50.72.98 with SMTP id c2mr10550174igv.0.1424680191917;
        Mon, 23 Feb 2015 00:29:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.136 with SMTP id 8ls1522577ios.51.gmail; Mon, 23 Feb
 2015 00:29:51 -0800 (PST)
X-Received: by 10.66.224.238 with SMTP id rf14mr11156031pac.11.1424680191741;
        Mon, 23 Feb 2015 00:29:51 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id ks4si4120302pbc.1.2015.02.23.00.29.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 00:29:51 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22f.google.com with SMTP id nh10so23752067pdb.11
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 00:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Tb9hntwTvuWWkRp1LYKjs/vznttib87CLe0eR0wUJwM=;
        b=CJyQYgKpaQkfX2m7rvq2BPN9SrWKxtxcSE9/wk4FYKEcAoe3NX+G+kNP6fiwX7F9oN
         eu02CzgezHJmWjc9CJFvWUu0rVpwThdG5Ldws31JqSJKpZt7mzoZiuALLCy9POeuV2Ln
         bIhzU6jGch7b+vCyi7DF+u+2Z2eDjesONIjvrblu56KK1LSHY1l2wU7MkEnI21N5KxYf
         cTTE/kTJkM6B0rkMy8Wo9/d2kgNZrNBo6n4C94V6nJvht1Hdy8aEj0YYGrzVNQu9IEDZ
         xOBtVtVd5wGrHtYPV09BFGanU7dGAioenYjppagaOglV/0T+Bkjo5Wn/LlFa5p0Tp9YN
         Tv6Q==
X-Received: by 10.68.191.233 with SMTP id hb9mr17078291pbc.111.1424680191646;
        Mon, 23 Feb 2015 00:29:51 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id bc4sm35106161pac.4.2015.02.23.00.29.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 00:29:50 -0800 (PST)
Date: Mon, 23 Feb 2015 13:59:32 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Reindented code to reduce line size
Message-ID: <20150223082932.GA30012@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Reidented code to reduce line size and increase readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/bb_cfg.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/bb_cfg.c b/drivers/staging/rtl8188eu/hal/bb_cfg.c
index 262da88..2d6db42 100644
--- a/drivers/staging/rtl8188eu/hal/bb_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/bb_cfg.c
@@ -508,7 +508,8 @@ static u32 array_phy_reg_pg_8188e[] = {
 
 };
 
-static void store_pwrindex_offset(struct adapter *Adapter, u32 regaddr, u32 bitmask, u32 data)
+static void store_pwrindex_offset(struct adapter *Adapter,
+			u32 regaddr, u32 bitmask, u32 data)
 {
 	struct hal_data_8188e *hal_data = GET_HAL_DATA(Adapter);
 	 u8 pwrGrpCnt = hal_data->pwrGroupCnt;
@@ -553,7 +554,8 @@ static void store_pwrindex_offset(struct adapter *Adapter, u32 regaddr, u32 bitm
 	}
 }
 
-static void rtl_addr_delay(struct adapter *adapt, u32 addr, u32 bit_mask, u32 data)
+static void rtl_addr_delay(struct adapter *adapt,
+			u32 addr, u32 bit_mask, u32 data)
 {
 	if (addr == 0xfe) {
 		msleep(50);
-- 
1.9.1


