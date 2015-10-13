X-GM-THRID: 6205025075895205888
X-Received: by 10.129.50.85 with SMTP id y82mr27337631ywy.2.1444720057643;
        Tue, 13 Oct 2015 00:07:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.104.34 with SMTP id gb2ls858681obb.18.gmail; Tue, 13 Oct
 2015 00:07:37 -0700 (PDT)
X-Received: by 10.182.50.170 with SMTP id d10mr27263508obo.48.1444720057432;
        Tue, 13 Oct 2015 00:07:37 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id wl2si161165pab.1.2015.10.13.00.07.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 00:07:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id rc13so12608342pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 00:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=/hFRk2ccrfV8nO1GJhdLSUbwPYAe/kqIBoPKIA5mPpM=;
        b=XRpfgU0OjmdGbHQmg1JX7gTNMmUHlqUylE6yyWQET6ofXUD8rbXceusw0jLlScxDBW
         CA++Yq5G4Ura0I8r+Ghmw0y3FEf+qj5SYVzno4Lm/29RcMBhnwGhuxBZtvYZqUhK1Icp
         rhMYHYW1wwg0ym2i6kIR9uYcTaLXLyFU0ksxi9DEK+oWBLmjE2pVuAW1YN87qizfPlwt
         OrEBiXMxnMoX9hM6Wt0r9KVoWjuj6PfB1l52JoBh1Z8j+Ro/WHch9G401jCI84EW3JPS
         qLmox8dbDDej9Gqcu1jO/V/DId+MDs6vbGgZF8RwaWhQnUPNfIcUi3syhVXpJJQWzc0k
         w6iA==
X-Received: by 10.66.159.66 with SMTP id xa2mr39527089pab.28.1444720057268;
        Tue, 13 Oct 2015 00:07:37 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ci2sm1851974pbc.66.2015.10.13.00.07.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 00:07:36 -0700 (PDT)
Date: Tue, 13 Oct 2015 12:37:27 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/3] Staging: wilc1000: host_interface: Remove unnecessary
 typedef and code
Message-ID: <dcb23a9554722de3fb558df5cbc156b74aefcada.1444719312.git.shivanib134@gmail.com>
References: <cover.1444719312.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444719312.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove a typedef and the code that is not required.
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
Changes in v3:
        -Fix errors in v2 and improve commit message by adding
        semantic patches used by coccinelle.

 drivers/staging/wilc1000/host_interface.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index cc969e4..bfdc756 100644
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
@@ -4900,7 +4894,6 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
 	s32 s32Error = 0;
 	tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
 	struct host_if_msg msg;
-	tenuScanConnTimer enuScanConnTimer;
 
 	if (pstrWFIDrv == NULL || pfConnectResult == NULL) {
 		s32Error = -EFAULT;
@@ -4963,7 +4956,6 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
 		return -EFAULT;
 	}
 
-	enuScanConnTimer = CONNECT_TIMER;
 	pstrWFIDrv->hConnectTimer.data = (unsigned long)hWFIDrv;
 	mod_timer(&pstrWFIDrv->hConnectTimer,
 		  jiffies + msecs_to_jiffies(HOST_IF_CONNECT_TIMEOUT));
@@ -5566,7 +5558,6 @@ s32 host_int_scan(tstrWILC_WFIDrv *hWFIDrv, u8 u8ScanSource,
 	s32 s32Error = 0;
 	tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
 	struct host_if_msg msg;
-	tenuScanConnTimer enuScanConnTimer;
 
 	if (pstrWFIDrv == NULL || ScanResult == NULL) {
 		PRINT_ER("pstrWFIDrv or ScanResult = NULL\n");
@@ -5608,7 +5599,6 @@ s32 host_int_scan(tstrWILC_WFIDrv *hWFIDrv, u8 u8ScanSource,
 		return -EINVAL;
 	}
 
-	enuScanConnTimer = SCAN_TIMER;
 	PRINT_D(HOSTINF_DBG, ">> Starting the SCAN timer\n");
 	pstrWFIDrv->hScanTimer.data = (unsigned long)hWFIDrv;
 	mod_timer(&pstrWFIDrv->hScanTimer,
-- 
2.1.0


