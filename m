X-GM-THRID: 6253406958213136384
X-Received: by 10.182.33.42 with SMTP id o10mr17870457obi.12.1455984767076;
        Sat, 20 Feb 2016 08:12:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.29.8 with SMTP id f8ls386819obh.55.gmail; Sat, 20 Feb 2016
 08:12:46 -0800 (PST)
X-Received: by 10.182.79.134 with SMTP id j6mr18359302obx.4.1455984766720;
        Sat, 20 Feb 2016 08:12:46 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id ff2si2411680pad.2.2016.02.20.08.12.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 08:12:46 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id yy13so66891734pab.3
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 08:12:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=qWLi6fM7yER6r4Q4sYSQXwhEVpK/dTJpW8el+qt6KFI=;
        b=NVakgplAE04u2nS5pszOjrvH/N7erZojNBJG2deYu3HT8Z2xkHXW6sCiADf3o378I3
         q1P2RublqAtz1zsQEQ8n/HAOa9H/zhWrnaZvnHSxjbmPa7yfRYIMhC1OiSXpM/sNl1aY
         VvPTAYmXEKkCsshvopTNGfxLSaV/miSOdwg4Bhv1zLPFFsUvDeIFGiKRqRMEqd2ViAck
         gOfktQn7NqVqHrnACF6eZGo6rZMj/24JfLge3UvzAmR/umejUBn50xuRF0366Hq9ROvi
         MYKzH2JMX7n87l2PvCYXEqmSriCNdbErDwBvhmkrr53Qm0kUl8uYCEGmGhGcbJKn0mYT
         P2NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qWLi6fM7yER6r4Q4sYSQXwhEVpK/dTJpW8el+qt6KFI=;
        b=TKFhNftPP3tsAQzPKfksm53YsuBtESy9xpZ4z/hdkgCVbHZjD8AzBn2gGeR4N1eQma
         mMbw07bxhCwYJDy8kXDYnwKHqaBQtfmzQ5rwogi4comn9Sm8btsqgBk8O9EAAH6HLNKN
         rZZYi/4D/Wbm7wtQHqdRrvHBp244ygcVjf3S7HRSvGhaZBzh1SfnNX6wICKP7ILwxlEX
         2RGEteCPk21hOZ6205X9aUsiO1kvHQnAnY28kL0O0TJha0UZtcIW7yD2E22DYXMYRR+O
         STplbsQ99scu7z5MVnNiJcC1J04LSFczwXml5E54g0UQXbqe2BVfhJeHjJhlTrKOUfLX
         DRXA==
X-Gm-Message-State: AG10YOSCmnzIjxO71HkkgktMdcIA7CqHj6q+oauQhNUz5C9gXrpxyCIZ6GMUeLimxXUzxA==
X-Received: by 10.66.55.6 with SMTP id n6mr26602128pap.35.1455984766582;
        Sat, 20 Feb 2016 08:12:46 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id 76sm25508337pft.44.2016.02.20.08.12.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 08:12:46 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH] staging: wilc1000: Use __packed instead of __attribute__((packed))
Date: Sat, 20 Feb 2016 21:42:34 +0530
Message-Id: <1455984754-14644-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the warning: "__packed is preferred over
__attribute__((packed))" as reported by checkpatch.pl.

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
 drivers/staging/wilc1000/linux_mon.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index e550027..284dfb0 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -15,14 +15,14 @@
 struct wilc_wfi_radiotap_hdr {
 	struct ieee80211_radiotap_header hdr;
 	u8 rate;
-} __attribute__((packed));
+} __packed;
 
 struct wilc_wfi_radiotap_cb_hdr {
 	struct ieee80211_radiotap_header hdr;
 	u8 rate;
 	u8 dump;
 	u16 tx_flags;
-} __attribute__((packed));
+} __packed;
 
 static struct net_device *wilc_wfi_mon; /* global monitor netdev */
 
-- 
1.9.1


