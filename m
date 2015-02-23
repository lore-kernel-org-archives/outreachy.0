X-GM-THRID: 2732794576896
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9a4efa979c10540c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.180.70 with SMTP id dm6mr11086690vdc.9.1424684686848;
        Mon, 23 Feb 2015 01:44:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.5.11 with SMTP id 11ls1387481iof.9.gmail; Mon, 23 Feb 2015
 01:44:46 -0800 (PST)
X-Received: by 10.66.249.35 with SMTP id yr3mr9863787pac.13.1424684686647;
        Mon, 23 Feb 2015 01:44:46 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x229.google.com (mail-pd0-x229.google.com. [2607:f8b0:400e:c02::229])
        by gmr-mx.google.com with ESMTPS id ks4si4139893pbc.1.2015.02.23.01.44.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 01:44:46 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) client-ip=2607:f8b0:400e:c02::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfp1 with SMTP id fp1so24174559pdb.9
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 01:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=msq3VhD0HrJya/S2ODWhje9Lk0MDGWHH5QrLs6QXKWY=;
        b=jMi2tFVhRdZqv5myv8rEThC5OTRmRBtFWuTOCeoZV9uuKm9Li2svfoNIAmiHBOdAQu
         PdhZiyg5yUUJvAtBQlS7PL+EwE5rQaeWm8wE/hWk+0JSm0XcdjPx6taeiwKLDCBS0Grq
         eLM9VLbZPuDDxQZy+MZCSWcOsYAzgfiAf3rAisXYuj7wtN4cLvZnYXATshacgUzlnEjo
         0DdTa7qpb8578sg3kVCw2YZh+7PILpSU4/TqEiq+m8MlRDWm1SMl71AObWT7i53O0Xg1
         7diCzwdoGmknb3SI5dn1zawNyoLpg1bOfkJVFutPTmEgG24JNRyMoJ1gW7UE1MNF/AYG
         A/Bw==
X-Received: by 10.68.172.193 with SMTP id be1mr17786938pbc.64.1424684686575;
        Mon, 23 Feb 2015 01:44:46 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id fl4sm35345201pab.8.2015.02.23.01.44.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:44:45 -0800 (PST)
Date: Mon, 23 Feb 2015 15:14:26 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: rtl8188eu: Reindent code to reduce line size
Message-ID: <20150223094426.GA4689@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Reindent code to reduce line size and increase readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
Changes in v3: Fixed spelling error in commit message.
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


