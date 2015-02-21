X-GM-THRID: 2210165424128
X-Received: by 10.152.26.74 with SMTP id j10mr448010lag.10.1424553622351;
        Sat, 21 Feb 2015 13:20:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.80.197 with SMTP id t5ls206227wix.18.canary; Sat, 21 Feb
 2015 13:20:22 -0800 (PST)
X-Received: by 10.180.80.35 with SMTP id o3mr462660wix.0.1424553622071;
        Sat, 21 Feb 2015 13:20:22 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x241.google.com (mail-wg0-x241.google.com. [2a00:1450:400c:c00::241])
        by gmr-mx.google.com with ESMTPS id o3si365068wib.2.2015.02.21.13.20.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 13:20:22 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::241 as permitted sender) client-ip=2a00:1450:400c:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::241 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x241.google.com with SMTP id k14so6033450wgh.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 13:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=7l8OsHWwmq64JeU+BUh5yAatMz7LhdoE5CSUfHCdt/0=;
        b=JXfP8bVncu8elqjP0cCtnWaK4nmuWP1nZTViTG69kkv2zImgbkty/52KFWjCck7jTw
         rQLVLgVRy6IWNeWsAYFbZuh8QCI9m82jgq9jtEHMIIxJztzv0MKNM1IaIY5M1gPsr1vM
         ymgL/FnHv6fnKoDL3xwDcLKK19OLUVqXMYXr5gzWwNUIhX0AyPenMPsqA9qbqyn0q4xD
         mRreWuACWwXccdeaQHGLbIQeGfJLhgdLT/0MMKy6eCDG6155X+PlA59E4z0gl2HQ4JHk
         rq2ezKELkNqFDIJhS9XTSwuhP9Wib/XTy0lbcwEUuEWX7hy4RMZsRWbnBXj9W+FQCbWH
         9LiA==
X-Received: by 10.180.24.65 with SMTP id s1mr7046954wif.30.1424553621903;
        Sat, 21 Feb 2015 13:20:21 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id u18sm48186488wjq.42.2015.02.21.13.20.20
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 13:20:21 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8723au: core: Add space
Date: Sat, 21 Feb 2015 23:20:13 +0200
Message-Id: <1424553613-23333-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

ERROR: "(foo*)" should be "(foo *)".That's why add space together.
That Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_ap.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index e394d12..59d08f4 100644
--- a/drivers/staging/rtl8723au/core/rtw_ap.c
+++ b/drivers/staging/rtl8723au/core/rtw_ap.c
@@ -456,8 +456,8 @@ static void update_bmc_sta(struct rtw_adapter *padapter)
 		       sizeof(struct stainfo_stats));
 
 		/* prepare for add_RATid23a */
-		supportRateNum = rtw_get_rateset_len23a((u8*)&pcur_network->SupportedRates);
-		network_type = rtw_check_network_type23a((u8*)&pcur_network->SupportedRates, supportRateNum, 1);
+		supportRateNum = rtw_get_rateset_len23a((u8 *)&pcur_network->SupportedRates);
+		network_type = rtw_check_network_type23a((u8 *)&pcur_network->SupportedRates, supportRateNum, 1);
 
 		memcpy(psta->bssrateset, &pcur_network->SupportedRates, supportRateNum);
 		psta->bssratelen = supportRateNum;
@@ -1204,7 +1204,7 @@ static void update_bcn_p2p_ie(struct rtw_adapter *padapter)
 {
 }
 
-static void update_bcn_vendor_spec_ie(struct rtw_adapter *padapter, u8*oui)
+static void update_bcn_vendor_spec_ie(struct rtw_adapter *padapter, u8 *oui)
 {
 	DBG_8723A("%s\n", __func__);
 
-- 
1.9.1


