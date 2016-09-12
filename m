X-GM-THRID: 6329409995903336448
X-Received: by 10.157.16.43 with SMTP id h40mr14964546ote.25.1473680603870;
        Mon, 12 Sep 2016 04:43:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.18 with SMTP id h18ls10742921ote.41.gmail; Mon, 12 Sep
 2016 04:43:23 -0700 (PDT)
X-Received: by 10.157.32.33 with SMTP id n30mr15873705ota.0.1473680603526;
        Mon, 12 Sep 2016 04:43:23 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 142si2323538pfx.2.2016.09.12.04.43.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 04:43:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id i75so3072333pfa.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 04:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pY0WRsJ/Q2IyyWdjO8Qtp4HBIoZgRiGaOVyA3qf1sds=;
        b=RE2y8dZhQ8yTiL/krWBlWDmit23YEjb0tbeW/5n5nipK2grMgxwBhetugKBs8T3B2V
         q9i7qWC8YJwEUV7kFZrQ/YB2Ca6W2PAAqCRcIYuo6aHBENmfZs1ms90katjyhDYeoHCK
         xn/Wrf46OQ89Ng/m0WRpjxgw61XaPor9Wd+JCEShd0QqJvhHFWm80zQm4LEo3mi35eSo
         d2Qrf001WJddP1ijSBzcnGp6PD5hDiKFLQS9qEDHci/MrbOXUX7HiXOTh/mpbHd4w//c
         Ea+CfZConvVV4gGJhzW42jO1zkEjIIxOq7A8RXDxPjD+MbEVNduv+TuvImcdGwpGKV3z
         lA8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pY0WRsJ/Q2IyyWdjO8Qtp4HBIoZgRiGaOVyA3qf1sds=;
        b=QWpZEqXg534BMtxoM8JdeK2gq9BAPIB4glmzxZk0Fk2eDFDGXyO0F0OF8wZjUAdREW
         y0ec83FswkuZMDJxNSenl6ToTTwiZfY9htSm18xwZ6JXHADiQ3+6WtMR2AbQWYbhG084
         9pWMu/34SIN6nYi/nM2t5e5CaiBXcj3MXYWfwgfmyXRilt4/cONcs/g9lfgveDyg8gO2
         szNzpxusot6E5VPYHZzGTWvh/BeWqGsYuQTonFAqzgTSHxEX6y6UARSGpiio8FImZfK2
         SiWxTLbPtAL/UduvxAMVHr+xRBOpL1ySY6FkBmLASzw9+08GI6Rk1jePV4U+Ed5Jjx2K
         5hTg==
X-Gm-Message-State: AE9vXwNfsXhhvRXr0IL6bsLaWKZkDT4NNu6Sx9jlUCdCNZNQg6WFry0TKAGYJ/mL57X1OA==
X-Received: by 10.98.15.217 with SMTP id 86mr32695276pfp.114.1473680603192;
        Mon, 12 Sep 2016 04:43:23 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.237.207])
        by smtp.gmail.com with ESMTPSA id cp11sm24124254pac.28.2016.09.12.04.43.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 04:43:22 -0700 (PDT)
Date: Mon, 12 Sep 2016 17:13:09 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: ciorneiioana@gmail.com, gregkh@linuxfoundation.org
Subject: [PATCH] staging: gdm724x: Add spaces around the '*' operator
Message-ID: <20160912114309.GA6964@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch.pl warning:
Spaces required around the '*' operator.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/gdm724x/gdm_mux.h | 4 ++--
 drivers/staging/gdm724x/gdm_usb.h | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_mux.h b/drivers/staging/gdm724x/gdm_mux.h
index 3d50383..0871b8f 100644
--- a/drivers/staging/gdm724x/gdm_mux.h
+++ b/drivers/staging/gdm724x/gdm_mux.h
@@ -27,8 +27,8 @@
 
 #define START_FLAG 0xA512485A
 #define MUX_HEADER_SIZE 14
-#define MUX_TX_MAX_SIZE (1024*10)
-#define MUX_RX_MAX_SIZE (1024*30)
+#define MUX_TX_MAX_SIZE (1024 * 10)
+#define MUX_RX_MAX_SIZE (1024 * 30)
 #define AT_PKT_TYPE 0xF011
 #define DM_PKT_TYPE 0xF010
 
diff --git a/drivers/staging/gdm724x/gdm_usb.h b/drivers/staging/gdm724x/gdm_usb.h
index e6486e7..ffb3d99 100644
--- a/drivers/staging/gdm724x/gdm_usb.h
+++ b/drivers/staging/gdm724x/gdm_usb.h
@@ -26,10 +26,10 @@
 #define PM_SUSPEND 1
 #define AUTO_SUSPEND_TIMER 5000 /* ms */
 
-#define RX_BUF_SIZE		(1024*32)
-#define TX_BUF_SIZE		(1024*32)
+#define RX_BUF_SIZE		(1024 * 32)
+#define TX_BUF_SIZE		(1024 * 32)
 #define SDU_BUF_SIZE	2048
-#define MAX_SDU_SIZE	(1024*30)
+#define MAX_SDU_SIZE	(1024 * 30)
 #define MAX_PACKET_IN_MULTI_SDU	256
 
 #define VID_GCT			0x1076
-- 
2.7.4


