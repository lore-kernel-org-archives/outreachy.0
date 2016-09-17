X-GM-THRID: 6331206604146343936
X-Received: by 10.129.49.195 with SMTP id x186mr1002756ywx.92.1474098908236;
        Sat, 17 Sep 2016 00:55:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.114 with SMTP id l47ls916633ote.24.gmail; Sat, 17 Sep
 2016 00:55:07 -0700 (PDT)
X-Received: by 10.13.225.71 with SMTP id k68mr11505027ywe.14.1474098907920;
        Sat, 17 Sep 2016 00:55:07 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h124si4961660pfe.0.2016.09.17.00.55.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 00:55:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id oz2so4383994pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 00:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=oATuoRtRbcmD5yjTnq+iMmGUZKoYjjQU3a2ZP1VkqLk=;
        b=iV6yrCZEZjfV3mVyOX/3u58T25SHLBrq226RhMBvHhryWEL06l8lJ4P+km7yxc5rWE
         qBgkRnOf2DONbi4eduT9pS+8BQQHIYiGDMaSxvlEMBuFK3SCiewIrjpoZQx94aMvX1fu
         iH97AujseNE2Fdq9oN5tZykz23JPnSXNlAqlyiLjqbl0Ye2ic77hDrX+jHCEjEot/H2M
         KDl83d0m9X2xeuSFW6Cuq5xoxM6pvtUeU/+upHctgwLTpaLjPNZAMjPMhip19xIEZFCP
         0Q2zPOxZGXH3tbxsBr0we7+NGbXcHnTpI44uBEN/TBctFPpyNbfwIcsxAQJzcjou4fP9
         vJ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=oATuoRtRbcmD5yjTnq+iMmGUZKoYjjQU3a2ZP1VkqLk=;
        b=D68KtNUR2e0GTBzTTWRbnUPK0NL0/fMRT2y1VvfJakX+q9INYJgqhVXTdsQOh3usxt
         rhAFjkNz7Ksth9A4xKQqzvt2c9oSWevaK8MKbabeZA9YXopH/IHvoSh6JE4ObwQn5qjz
         25FN+FDd2S2WuxpInyZ0tEwwJXFyaX7NdWC4bsY5Qaq7zkWaUbucgLLn2IwP8rFM0AWV
         Py0OL2dJgjnHvKhVR574rnj3B/0zVAQHClQJ9kxFDjSeU3BsP5ueWaMzYqR2K4NxefLg
         09ui7LUuN875UHI6mgC8aXl3sGHf1J8HLsnNsLdwqpGNHXR93y00NjZmnu1Liu5xdhlQ
         Ro6Q==
X-Gm-Message-State: AE9vXwObKJanQDsSSy5fr3QE2BIlzVCDvQFMjcQNHZpZDLddX7qttkhkhDLPYXZlzGViqA==
X-Received: by 10.66.111.104 with SMTP id ih8mr18411201pab.80.1474098907710;
        Sat, 17 Sep 2016 00:55:07 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.138.39])
        by smtp.gmail.com with ESMTPSA id e187sm56966637pfa.58.2016.09.17.00.54.57
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 00:55:06 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sat, 17 Sep 2016 13:24:47 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ganesh.krishna@microchip.com,
	aditya.shankar@microchip.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: wilc1000: Move extern declaration to header
Date: Sat, 17 Sep 2016 13:24:46 +0530
Message-Id: <1474098886-6239-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Move extern declaration in wilc_wfi_cfgoperations.c to the
respective header wilc_wfi_cfgoperations.h. Extern
removed using coccinelle and other changes done by hand.
Script:
@@
identifier func;
type T;
@@
- extern
T func(...);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 ---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.h | 2 ++
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 2c2e8ac..3b26130 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -90,9 +90,6 @@ static const struct wiphy_wowlan_support wowlan_support = {
 #define IS_MGMT_STATUS_SUCCES			0x040
 #define GET_PKT_OFFSET(a) (((a) >> 22) & 0x1ff)
 
-extern int wilc_mac_open(struct net_device *ndev);
-extern int wilc_mac_close(struct net_device *ndev);
-
 static struct network_info last_scanned_shadow[MAX_NUM_SCANNED_NETWORKS_SHADOW];
 static u32 last_scanned_cnt;
 struct timer_list wilc_during_ip_timer;
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
index 85a3810..ca71e49 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
@@ -19,5 +19,7 @@ int WILC_WFI_deinit_mon_interface(void);
 struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_device *real_dev);
 void wilc_mgmt_frame_register(struct wiphy *wiphy, struct wireless_dev *wdev,
 			      u16 frame_type, bool reg);
+int wilc_mac_open(struct net_device *ndev);
+int wilc_mac_close(struct net_device *ndev);
 
 #endif
-- 
1.9.1


