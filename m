X-GM-THRID: 6205255404261212160
X-Received: by 10.67.3.137 with SMTP id bw9mr31636312pad.4.1444773609717;
        Tue, 13 Oct 2015 15:00:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.155.19 with SMTP id d19ls1939470ioe.19.gmail; Tue, 13 Oct
 2015 15:00:09 -0700 (PDT)
X-Received: by 10.66.227.166 with SMTP id sb6mr30787148pac.0.1444773609345;
        Tue, 13 Oct 2015 15:00:09 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id zg1si549505pbb.2.2015.10.13.15.00.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 15:00:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ex6so32747537pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 15:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=JRAoA9E2cen2zYHLKI4wJxOTHyJ5HQSDqUfuAR6uBHs=;
        b=THulnPqjAdeS+W6K+S0GmbmmvY1sVzFTwWoThwDWsYIPbWNemtuGaq40+P8hQRCIZu
         ydaunuAEw0151Wo0G7uYnmiHpyuMAI0UaUE5JNNiZLfe9GB3UvNHA2UQBpz1k0wfeK5z
         7jprLrdnxiRXdLaFQdD3TBoXU5mSUpwlrxIKHnhsqJ70FSW+0YzoUnjUsbi/5TZOeAGL
         tA2acQ30zmuDg4+v6Jz35U+TaCY4myGr13FqMk9FjSwTRc09riasdi1cVk0VyVJ1Xa7L
         ErrFtPRQyJzdguKCQle72jYLeHXC26zb6imcKa6bwUgCAZXIMpcNvE6K4vVqEBmlh3Hz
         /shQ==
X-Received: by 10.66.145.97 with SMTP id st1mr42332777pab.145.1444773609244;
        Tue, 13 Oct 2015 15:00:09 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id x6sm5687643pbt.3.2015.10.13.15.00.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 15:00:08 -0700 (PDT)
Date: Wed, 14 Oct 2015 03:29:58 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wilc1000: host_interface: Remove unnecessary enum
Message-ID: <20151013215958.GA14072@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

enum scan_conn_timer and its instances are never used anywhere
in the code so, remove it.
Semantic patch used:

@@
type T;
identifier i;
constant C;
position p != e.p;
@@

- T i@p;
  <+... when != i
- i = C;
  ...+>

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 04f3bc2..14c8abe 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -229,12 +229,6 @@ struct join_bss_param {
 	u8 au8StartTime[4];
 };
 
-enum scan_conn_timer {
-	SCAN_TIMER = 0,
-	CONNECT_TIMER	= 1,
-	SCAN_CONNECT_TIMER_FORCE_32BIT = 0xFFFFFFFF
-};
-
 static struct host_if_drv *wfidrv_list[NUM_CONCURRENT_IFC + 1];
 struct host_if_drv *terminated_handle;
 struct host_if_drv *gWFiDrvHandle;
@@ -3584,7 +3578,6 @@ s32 host_int_set_join_req(struct host_if_drv *hif_drv, u8 *pu8bssid,
 {
 	s32 s32Error = 0;
 	struct host_if_msg msg;
-	enum scan_conn_timer enuScanConnTimer;
 
 	if (!hif_drv || pfConnectResult == NULL) {
 		s32Error = -EFAULT;
@@ -3636,7 +3629,6 @@ s32 host_int_set_join_req(struct host_if_drv *hif_drv, u8 *pu8bssid,
 		return -EFAULT;
 	}
 
-	enuScanConnTimer = CONNECT_TIMER;
 	hif_drv->hConnectTimer.data = (unsigned long)hif_drv;
 	mod_timer(&hif_drv->hConnectTimer,
 		  jiffies + msecs_to_jiffies(HOST_IF_CONNECT_TIMEOUT));
@@ -4020,7 +4012,6 @@ s32 host_int_scan(struct host_if_drv *hif_drv, u8 u8ScanSource,
 {
 	s32 s32Error = 0;
 	struct host_if_msg msg;
-	enum scan_conn_timer enuScanConnTimer;
 
 	if (!hif_drv || ScanResult == NULL) {
 		PRINT_ER("hif_drv or ScanResult = NULL\n");
@@ -4058,7 +4049,6 @@ s32 host_int_scan(struct host_if_drv *hif_drv, u8 u8ScanSource,
 		return -EINVAL;
 	}
 
-	enuScanConnTimer = SCAN_TIMER;
 	PRINT_D(HOSTINF_DBG, ">> Starting the SCAN timer\n");
 	hif_drv->hScanTimer.data = (unsigned long)hif_drv;
 	mod_timer(&hif_drv->hScanTimer,
-- 
2.1.0


