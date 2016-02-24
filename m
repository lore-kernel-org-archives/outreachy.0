X-GM-THRID: 6254904699120517120
X-Received: by 10.129.101.66 with SMTP id z63mr36997343ywb.14.1456333487741;
        Wed, 24 Feb 2016 09:04:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.184.69 with SMTP id i66ls145043iof.3.gmail; Wed, 24 Feb
 2016 09:04:47 -0800 (PST)
X-Received: by 10.50.20.135 with SMTP id n7mr21865292ige.5.1456333487393;
        Wed, 24 Feb 2016 09:04:47 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id u66si551664pfa.2.2016.02.24.09.04.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 09:04:47 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fy10so15584688pac.1
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 09:04:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=A3Aq/Neih6azhKUhDT0K4v6OsDHsZ9z6Exygw2kPJ4w=;
        b=difeQ9e3gN48c1BvfmOVz5ynexhQdIk8AifspJ29AzuMmvBUVjUp7frQaWv/b9xTRV
         46327W5GUH4oCv0EgLEBuUnle3hM4IUIdfd03eonaMvHIOyJfBG7TME7zqdi+MGHMVpk
         PuawKG4s7NYQdVNbS8psH2mYUmB/X9kJZWNMHjyZnF3e5zo5NYAwtXGhm/DUu/djMKkA
         eSYGtzLE4a65Rj+UM9FyLC69p4v7gVw33EaWXg5oe+Fown4WdWBF4b5P9LBstdAtQBPL
         boGdR/PiyTeyuiyOQpWxSE4yFOZmmp4oiSDf1ksq2ny/5Y89R98QM6RHyOBAif5OtCbB
         kd4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=A3Aq/Neih6azhKUhDT0K4v6OsDHsZ9z6Exygw2kPJ4w=;
        b=NkrVpXxYkqcLWhhm/7z4FxBxn08cV8KNa8UtQ4RT1uJ1Pc+4sP9Vdo1smE0S7hKKRK
         UtdnuZo2aBJOZEPdhnhoYVGMi40Jn2hXt4eQQoglxUlNaAgjqUh5N6pNo5UhiLvUHmMN
         Ck0ab9s4Vt+NNipEnYiPH3oxeU9Ao7eWptVoGmuqbyryql6rrKpomnByAyHHHNy9+gAh
         sfOxgkKQLhH+5eiY0t+OqykXqn+nsEXJy2xznBpd2BeBctJOcRARcDycvC8KedzWMiPl
         +Xd6KR6Ht7+xN0gGI9u3wteKS84Jap0Hj1nabg8BbuLhI52RPHKAzdc5zWyO+BYcOcXX
         fd3w==
X-Gm-Message-State: AG10YOTEgnPJGD/SOJlsmyR1uOxiPEITiC48r/i3Tm5mpNDcnNkblYlm2hW8tZWJ2iBmEw==
X-Received: by 10.66.186.14 with SMTP id fg14mr56397536pac.102.1456333487181;
        Wed, 24 Feb 2016 09:04:47 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.129.85])
        by smtp.gmail.com with ESMTPSA id u64sm6306330pfa.86.2016.02.24.09.04.43
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 09:04:46 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 24 Feb 2016 22:34:33 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8723au: Remove debug messages
Date: Wed, 24 Feb 2016 22:34:31 +0530
Message-Id: <1456333471-6185-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

As kmalloc generates a backtrace on failure so there is no need of these
debug messages when kmalloc fails. Also remove unwanted {} around if block
after removal of these messages.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c b/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
index 71d0549..e81301f 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
@@ -399,10 +399,8 @@ hal_ReadEFuse_WiFi(struct rtw_adapter *padapter,
 	}
 
 	efuseTbl = kmalloc(EFUSE_MAP_LEN_8723A, GFP_KERNEL);
-	if (!efuseTbl) {
-		DBG_8723A("%s: alloc efuseTbl fail!\n", __func__);
+	if (!efuseTbl)
 		return;
-	}
 	/*  0xff will be efuse default value instead of 0x00. */
 	memset(efuseTbl, 0xFF, EFUSE_MAP_LEN_8723A);
 
@@ -491,10 +489,8 @@ hal_ReadEFuse_BT(struct rtw_adapter *padapter,
 	}
 
 	efuseTbl = kmalloc(EFUSE_BT_MAP_LEN, GFP_KERNEL);
-	if (!efuseTbl) {
-		DBG_8723A("%s: efuseTbl malloc fail!\n", __func__);
+	if (!efuseTbl)
 		return;
-	}
 	/*  0xff will be efuse default value instead of 0x00. */
 	memset(efuseTbl, 0xFF, EFUSE_BT_MAP_LEN);
 
-- 
1.9.1


