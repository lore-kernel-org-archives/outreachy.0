X-GM-THRID: 3765738405888
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ffdd31ec36495189,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.135.197 with SMTP id pu5mr7463213obb.32.1424954665560;
        Thu, 26 Feb 2015 04:44:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.92.67 with SMTP id ck3ls125461igb.14.gmail; Thu, 26 Feb
 2015 04:44:25 -0800 (PST)
X-Received: by 10.42.24.72 with SMTP id v8mr1521669icb.14.1424954665386;
        Thu, 26 Feb 2015 04:44:25 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x233.google.com (mail-pd0-x233.google.com. [2607:f8b0:400e:c02::233])
        by gmr-mx.google.com with ESMTPS id hs7si99206pad.1.2015.02.26.04.44.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 04:44:25 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) client-ip=2607:f8b0:400e:c02::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x233.google.com with SMTP id fl12so12807639pdb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 04:44:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+h4jSvHueaOBiFbtIZfv/79CFceMGM8irQ1ESC/oKdk=;
        b=WAbO6Dp9Wj76BmWk6zI+BeAQfGAqo/mEuf28qLplL/vM9CtHviW9ab5g9TfHniljf+
         9W7HBKVxv77kI+/63WM8np3ozG0vp37IxrkxMGXpETWtJweE0VtudFZE1xhYEDkkvYSM
         pLmzgFDghu+L0sPoMVJQfjUHHLiBMY72OLaRMp4rFnOedV1lxlvFTYiJlNjRmUgu8NLT
         pNXpGuGSO+ZdtxoJsz2zyBNTHrBy4aZOxu7azAKiULzditcHkIbKRQAnCdEZ4Ayracl/
         hX9YW0rYTlW82W7xAJoBd9uLtRSuqm1saK0UybO3MOO74FPr/u+B+Btcln9FAZnD8+ni
         G9MA==
X-Received: by 10.68.245.196 with SMTP id xq4mr14654981pbc.124.1424954665270;
        Thu, 26 Feb 2015 04:44:25 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id pr5sm1025165pbb.1.2015.02.26.04.44.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 04:44:23 -0800 (PST)
Date: Thu, 26 Feb 2015 18:14:02 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Replace if-else block with switch-case
Message-ID: <20150226124402.GA21558@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace if-else block with switch-case to make it more compact
and increase readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/bb_cfg.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/bb_cfg.c b/drivers/staging/rtl8188eu/hal/bb_cfg.c
index 1e963bf..baebe35 100644
--- a/drivers/staging/rtl8188eu/hal/bb_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/bb_cfg.c
@@ -552,21 +552,29 @@ static void store_pwrindex_offset(struct adapter *Adapter, u32 regaddr, u32 bitm
 	}
 }
 
-static void rtl_addr_delay(struct adapter *adapt, u32 addr, u32 bit_mask, u32 data)
+static void rtl_addr_delay(struct adapter *adapt,
+			u32 addr, u32 bit_mask, u32 data)
 {
-	if (addr == 0xfe) {
+	switch (addr) {
+	case 0xfe:
 		msleep(50);
-	} else if (addr == 0xfd) {
+		break;
+	case 0xfd:
 		mdelay(5);
-	} else if (addr == 0xfc) {
+		break;
+	case 0xfc:
 		mdelay(1);
-	} else if (addr == 0xfb) {
+		break;
+	case 0xfb:
 		udelay(50);
-	} else if (addr == 0xfa) {
+		break;
+	case 0xfa:
 		udelay(5);
-	} else if (addr == 0xf9) {
+		break;
+	case 0xf9:
 		udelay(1);
-	} else{
+		break;
+	default:
 		store_pwrindex_offset(adapt, addr, bit_mask, data);
 	}
 }
-- 
1.9.1


