X-GM-THRID: 6205236713884745728
X-Received: by 10.66.159.194 with SMTP id xe2mr29136635pab.13.1444769258095;
        Tue, 13 Oct 2015 13:47:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.118 with SMTP id i109ls1990201qgf.50.gmail; Tue, 13
 Oct 2015 13:47:37 -0700 (PDT)
X-Received: by 10.13.242.134 with SMTP id b128mr33015842ywf.7.1444769257573;
        Tue, 13 Oct 2015 13:47:37 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id uv4si589716pac.0.2015.10.13.13.47.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 13:47:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id rc13so31478694pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 13:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=n86rmFKUxXzu0YdtrwWEfSTLGtolQx3GBYjVuI5kaz4=;
        b=QQbjjOHEjhxDyXrsSGNKBPv1AEw2b+9mN/OjymWdCaeAIXv7XWHiOAhd54ByHMtNqo
         RQJTGfzRXuLMf0ycxcsJd4kiZINeQlqP6VTVRX91YwHUtzZIs5tptyCcfeLE2/TUwy/C
         vbjlx5i5aZffAAibqXlF2sHDZDdgMiyCdeAes53EetlFNNyo+HT8ZR2yFNX2MjNgj6PZ
         RGXtHs0TmRiSTgTyFOik5X45DK/3VCD42V6OlCflkea7Ap9OzZx6fVoKle3taUnzpvWb
         Ua9MWQpeU//NwWvs9uOMfpKEfmKT74eS0DzLMxkRpm32pILb3yfLtJdojkWGN+nyItne
         WJgw==
X-Received: by 10.66.159.66 with SMTP id xa2mr43395279pab.28.1444769257444;
        Tue, 13 Oct 2015 13:47:37 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ja4sm5520102pbb.19.2015.10.13.13.47.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 13:47:36 -0700 (PDT)
Date: Wed, 14 Oct 2015 02:17:27 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wilc1000: host_interface: Remove unused enum
Message-ID: <20151013204726.GA9714@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unused enum scan_conn_timer and its occurences as it is not used
anywhere in the code.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 73f99ea..37684fd 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -436,11 +436,6 @@ struct join_bss_param {
 	u8 au8StartTime[4];
 };
 
-enum scan_conn_timer {
-	SCAN_TIMER = 0,
-	CONNECT_TIMER	= 1,
-	SCAN_CONNECT_TIMER_FORCE_32BIT = 0xFFFFFFFF
-};
 
 /*****************************************************************************/
 /*																			 */
@@ -4766,7 +4761,6 @@ s32 host_int_set_join_req(struct host_if_drv *hif_drv, u8 *pu8bssid,
 {
 	s32 s32Error = 0;
 	struct host_if_msg msg;
-	enum scan_conn_timer enuScanConnTimer;
 
 	if (!hif_drv || pfConnectResult == NULL) {
 		s32Error = -EFAULT;
@@ -4824,7 +4818,6 @@ s32 host_int_set_join_req(struct host_if_drv *hif_drv, u8 *pu8bssid,
 		return -EFAULT;
 	}
 
-	enuScanConnTimer = CONNECT_TIMER;
 	hif_drv->hConnectTimer.data = (unsigned long)hif_drv;
 	mod_timer(&hif_drv->hConnectTimer,
 		  jiffies + msecs_to_jiffies(HOST_IF_CONNECT_TIMEOUT));
@@ -5406,7 +5399,6 @@ s32 host_int_scan(struct host_if_drv *hif_drv, u8 u8ScanSource,
 {
 	s32 s32Error = 0;
 	struct host_if_msg msg;
-	enum scan_conn_timer enuScanConnTimer;
 
 	if (!hif_drv || ScanResult == NULL) {
 		PRINT_ER("hif_drv or ScanResult = NULL\n");
@@ -5448,7 +5440,6 @@ s32 host_int_scan(struct host_if_drv *hif_drv, u8 u8ScanSource,
 		return -EINVAL;
 	}
 
-	enuScanConnTimer = SCAN_TIMER;
 	PRINT_D(HOSTINF_DBG, ">> Starting the SCAN timer\n");
 	hif_drv->hScanTimer.data = (unsigned long)hif_drv;
 	mod_timer(&hif_drv->hScanTimer,
-- 
2.1.0


