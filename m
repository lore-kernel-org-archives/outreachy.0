X-GM-THRID: 6338573496941019136
X-Received: by 10.66.82.33 with SMTP id f1mr3309537pay.98.1475814147067;
        Thu, 06 Oct 2016 21:22:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.54.199 with SMTP id l190ls1077138itl.2.gmail; Thu, 06 Oct
 2016 21:22:26 -0700 (PDT)
X-Received: by 10.36.124.141 with SMTP id a135mr9973925itd.21.1475814146528;
        Thu, 06 Oct 2016 21:22:26 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-ua0-x242.google.com (mail-ua0-x242.google.com. [2607:f8b0:400c:c08::242])
        by gmr-mx.google.com with ESMTPS id p131si1825324vkf.1.2016.10.06.21.22.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 21:22:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) client-ip=2607:f8b0:400c:c08::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x242.google.com with SMTP id p25so1474622uaa.3
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 21:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JsHrK8hr67WwEmwl2YQICDguLsMRuCPm+UHwe9u/VhM=;
        b=vYioHiD7WsW0Mx/wMdV9WKQNvofzpMKIs64T8Yus+MiProMaCtdB3PkiHZ3pwGgcoh
         aBurjQ5iLiYr6KcqF1WdLDWwqc35rIDbY2nnAyCoDkiitav1xoPN27Q4UIrnhFiJf+Bv
         d4ujrZfA8U6rL0XoCmAD9ACuGxVB+7v8FgQMOZWax1W84rf8tc4R0Z/MbuVbc+c0k2z4
         40hziUbubmfdMFw9s2/roqzzIjpEIqQVtpvdD40/Cl7dlE9XX+bhTbVB3r0cfBt35X4D
         O1gMEFSbsryMYJhUYAcaky5hUpbs6LI2bshdPXlEgGTU24U+iuYtc4nAlvKZ4I+i97l2
         TEjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JsHrK8hr67WwEmwl2YQICDguLsMRuCPm+UHwe9u/VhM=;
        b=BcWOTrgn5gFZXy+xkcqYLcRKxVbIk0SumHBCabPxBSi+9pvA+leovVsP5UMto8Lk0Q
         f4rarbBmM5vxrsMSjZRfFGRrWXWWkWWtAbb+GcwBU7Ze0IUVGHumXR3vSrFvGpBNdfj4
         ap3Fm2F/QTPWGvzgZffFqI50AW5jopxKzCeLlq6gRnMw0ounsBq0Rp0AoJHU6rsCBdOI
         sqhI7h8zjoLmp3dknz64bWYs74/7S4tuoAPdyl/sj4xoCqQQgi5Hvc4QONLWEchix0rc
         U+y7er+WrnMgxjMC3oIjr2r/yGeUNI2dG/oT4+qHlXxrhsWMF47y2UTP2nTO2rAYEE3W
         Hbaw==
X-Gm-Message-State: AA6/9Rlzugus7kn8/aq/6QtPsMbUQW6Ah6L87kQvmjQvFfCAIr/z8JOAaBJqs9e1InVbYA==
X-Received: by 10.159.33.177 with SMTP id 46mr13332815uac.142.1475814146350;
        Thu, 06 Oct 2016 21:22:26 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id a3sm1704893uab.11.2016.10.06.21.22.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 21:22:26 -0700 (PDT)
Date: Fri, 7 Oct 2016 01:22:21 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: wilc1000: Move externs from .c to .h files.
Message-ID: <20161007042221.GA23529@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: externs should be avoided in .c files

Keep externs in .h files is better to keep the code congruent, also makes it easier to change in future patches.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 ---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.h | 2 ++
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index fca96d3..a5e2d96 100644
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
index 85a3810..d1d0546 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
@@ -19,5 +19,7 @@ int WILC_WFI_deinit_mon_interface(void);
 struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_device *real_dev);
 void wilc_mgmt_frame_register(struct wiphy *wiphy, struct wireless_dev *wdev,
 			      u16 frame_type, bool reg);
+extern int wilc_mac_open(struct net_device *ndev);
+extern int wilc_mac_close(struct net_device *ndev);
 
 #endif
-- 
2.7.4


