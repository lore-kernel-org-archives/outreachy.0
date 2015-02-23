X-GM-THRID: 2732794576896
X-Received: by 10.70.88.234 with SMTP id bj10mr11004101pdb.0.1424684120928;
        Mon, 23 Feb 2015 01:35:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.71 with SMTP id d65ls2190126qgf.17.gmail; Mon, 23 Feb
 2015 01:35:20 -0800 (PST)
X-Received: by 10.236.210.113 with SMTP id t77mr11214657yho.13.1424684120727;
        Mon, 23 Feb 2015 01:35:20 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x232.google.com (mail-pd0-x232.google.com. [2607:f8b0:400e:c02::232])
        by gmr-mx.google.com with ESMTPS id m1si14042pdc.0.2015.02.23.01.35.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 01:35:20 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) client-ip=2607:f8b0:400e:c02::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x232.google.com with SMTP id v10so24093214pde.10
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 01:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=PX8Bort0heewwz42zx4vD+cxC1CfYqJoenLieKUFeuw=;
        b=yi97PB3QoaQeUWWEOyGBF4O37S3UCdEaiCiSE8TxV60rr69XlSJbdy4+M6Wd03UJMJ
         Fiujnx/P0Q+24EKOyQIwKMg5+ra2SaxjyCO1NNH4dtnIHpan+MXITR3VUJW2IjrZsCWp
         cdKLfR2msvvW58TLNpcd+9+nqtzKJ+x8ZmPXfNCvdKAF+pB712KYdvGo667hSEobJtDw
         w2BZr2sYNrQrEjE840kaPTUKXkVYmxl/6WFsfE9F2PFh/uhecFxRi0834mrQBraRQ5DE
         Ocnz3LROoqFuoIXbOVFVtrvwZn8duOb2KcedDto0kTD6k7ReeFXx2K0ttoQSWbrjEWeV
         I/xw==
X-Received: by 10.70.109.143 with SMTP id hs15mr17770599pdb.30.1424684120611;
        Mon, 23 Feb 2015 01:35:20 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id fh1sm34849546pbb.70.2015.02.23.01.35.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:35:19 -0800 (PST)
Date: Mon, 23 Feb 2015 15:05:01 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8188eu: Reindent code to reduce line size
Message-ID: <20150223093501.GA4646@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Reident code to reduce line size and increase readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
Changes in v2: Changed subject line to imperative form ( "Reindented" to "Reindent" ).

 drivers/staging/rtl8188eu/hal/bb_cfg.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/bb_cfg.c b/drivers/staging/rtl8188eu/hal/bb_cfg.c
index e1b5437..5ad080a 100644
--- a/drivers/staging/rtl8188eu/hal/bb_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/bb_cfg.c
@@ -508,7 +508,8 @@ static u32 array_phy_reg_pg_8188e[] = {
 
 };
 
-static void store_pwrindex_offset(struct adapter *Adapter, u32 regaddr, u32 bitmask, u32 data)
+static void store_pwrindex_offset(struct adapter *Adapter,
+				u32 regaddr, u32 bitmask, u32 data)
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
 	if (addr == 0xfe)
 		msleep(50);
-- 
1.9.1


