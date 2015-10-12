X-GM-THRID: 6204754090721804288
X-Received: by 10.182.106.11 with SMTP id gq11mr24853504obb.25.1444671234495;
        Mon, 12 Oct 2015 10:33:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.202 with SMTP id d10ls1174073igx.41.canary; Mon, 12 Oct
 2015 10:33:54 -0700 (PDT)
X-Received: by 10.66.240.138 with SMTP id wa10mr24056688pac.43.1444671234126;
        Mon, 12 Oct 2015 10:33:54 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id vy6si678798pbc.1.2015.10.12.10.33.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 10:33:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id hy16so159091519pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 10:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=J7SC15B/uE/cYDmzWl/w+6tVuXfi9h+kpxpyM3M4QQc=;
        b=qgcCQmsQFwssnBiJhE2m4Nw8ZZhrbHIPvvbdFwVaAt3f1RxEyz3+4uCal/Bmny0me3
         XJNrWqgJrykwHhny76ihTEHrzsqNkMzo3+SDoZ5CfOvTkVspW421mPPNsXxBwpHXr2lA
         nQtGuEzxLteRSog+WR6ajgHSuaFbhiLq8X9pzJXREnkY0Pj6qJ+lka+Oe3KN7MvhWayR
         iPtG5KMwTJaHRujh+5G8TtKAblnwyRYcNMzgjscO7rXYwogUWGBrLRDJBwifcpZnhQ0s
         uZrsiY+eLv5bVm6j8758/XYnDyeOdfGIh9nmZnjd0KPY3Xq1coZENzUACsFaPpHnNbJZ
         5LKw==
X-Received: by 10.68.223.34 with SMTP id qr2mr35638114pbc.97.1444671234034;
        Mon, 12 Oct 2015 10:33:54 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id st5sm19578899pab.42.2015.10.12.10.33.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 10:33:53 -0700 (PDT)
Date: Mon, 12 Oct 2015 23:03:33 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] Staging: wilc1000: host_interface: Remove unused code
Message-ID: <89a5b09ad425b0a21649a5438e3311f92ade83a6.1444670615.git.shivanib134@gmail.com>
References: <cover.1444670615.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444670615.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove declaration and initialization of variables that are not used
anywhere in the code.
Issue found using coccinelle.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
        Deleted one patch and added another. Improved the other ones.

 drivers/staging/wilc1000/host_interface.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 6c41e62..e36c767 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -449,12 +449,6 @@ typedef struct _tstrBssTable {
 	tstrJoinBssParam *tail;
 } tstrBssTable;
 
-typedef enum {
-	SCAN_TIMER = 0,
-	CONNECT_TIMER	= 1,
-	SCAN_CONNECT_TIMER_FORCE_32BIT = 0xFFFFFFFF
-} tenuScanConnTimer;
-
 /*****************************************************************************/
 /*																			 */
 /*							Global Variabls	                                                                 */
@@ -4853,7 +4847,6 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
 {
 	s32 s32Error = 0;
 	struct host_if_msg msg;
-	tenuScanConnTimer enuScanConnTimer;
 
 	if (pstrWFIDrv == NULL || pfConnectResult == NULL) {
 		s32Error = -EFAULT;
@@ -4861,11 +4854,6 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
 		return s32Error;
 	}
 
-	if (hWFIDrv == NULL) {
-		PRINT_ER("Driver is null\n");
-		return -EFAULT;
-	}
-
 	if (pJoinParams == NULL) {
 		PRINT_ER("Unable to Join - JoinParams is NULL\n");
 		return -EFAULT;
@@ -4916,7 +4904,6 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
 		return -EFAULT;
 	}
 
-	enuScanConnTimer = CONNECT_TIMER;
 	pstrWFIDrv->hConnectTimer.data = (unsigned long)hWFIDrv;
 	mod_timer(&pstrWFIDrv->hConnectTimer,
 		  jiffies + msecs_to_jiffies(HOST_IF_CONNECT_TIMEOUT));
@@ -5506,7 +5493,6 @@ s32 host_int_scan(tstrWILC_WFIDrv *hWFIDrv, u8 u8ScanSource,
 {
 	s32 s32Error = 0;
 	struct host_if_msg msg;
-	tenuScanConnTimer enuScanConnTimer;
 
 	if (pstrWFIDrv == NULL || ScanResult == NULL) {
 		PRINT_ER("pstrWFIDrv or ScanResult = NULL\n");
@@ -5548,7 +5534,6 @@ s32 host_int_scan(tstrWILC_WFIDrv *hWFIDrv, u8 u8ScanSource,
 		return -EINVAL;
 	}
 
-	enuScanConnTimer = SCAN_TIMER;
 	PRINT_D(HOSTINF_DBG, ">> Starting the SCAN timer\n");
 	pstrWFIDrv->hScanTimer.data = (unsigned long)hWFIDrv;
 	mod_timer(&pstrWFIDrv->hScanTimer,
-- 
2.1.0


