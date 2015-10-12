X-GM-THRID: 6204754090721804288
X-Received: by 10.129.84.198 with SMTP id i189mr23895072ywb.32.1444657001734;
        Mon, 12 Oct 2015 06:36:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.27.4 with SMTP id p4ls1184380igg.11.canary; Mon, 12 Oct
 2015 06:36:41 -0700 (PDT)
X-Received: by 10.50.78.170 with SMTP id c10mr12608514igx.6.1444657001423;
        Mon, 12 Oct 2015 06:36:41 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id uv4si1862299pac.0.2015.10.12.06.36.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 06:36:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id ex6so724302pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 06:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=N8OzloGlFyo1B1+Kc0Mkpvgb0r4gMYXPVGs6Wqr80hQ=;
        b=EKfpe4USjXSM68u7SV/BxL7nelLK99pCid3EHf9C8h+h/0ZpHsLGQwVqVbCt2fTpNL
         dH7Eeo516ZfXZoqP5Xk4tWlyiyYHYzAocfTqnTqP/Ww9uQ8SknxfR4xNPJPuCUFlPurB
         v6FtdFkJ/QGrVjCYqxCb7Tvc2MrsaYB37OTkfJfc3Q/FribDg+cfbu0xCKkQjwpFFvXp
         RCGrLEKwFJN1rgYPvBt+8SAWcAuDU/M9peN7p2xQ2ny0KxFuRzzQEs/qs3eQTtRDUla0
         ngERrFQS1SdyJkqID70bnyUosrrsRpNesjfKKkTX+7U0t0ud1rVWoVcpjEQywTuvTzyb
         D/ag==
X-Received: by 10.68.200.100 with SMTP id jr4mr35409203pbc.16.1444657001324;
        Mon, 12 Oct 2015 06:36:41 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ez2sm13653296pbb.5.2015.10.12.06.36.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 06:36:40 -0700 (PDT)
Date: Mon, 12 Oct 2015 19:06:34 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: wilc1000: host_interface: Remove unused code
Message-ID: <d8f8cff7018b0c9905df40eaa754b53e8164324e.1444655924.git.shivanib134@gmail.com>
References: <cover.1444655924.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444655924.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove declaration and initialization of variables that are not used
anywhere in the code.
Issue found using coccinelle.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index b6eea9a..9e8bbc1 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -4894,7 +4894,6 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
 	s32 s32Error = 0;
 	tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
 	struct host_if_msg msg;
-	tenuScanConnTimer enuScanConnTimer;
 
 	if (pstrWFIDrv == NULL || pfConnectResult == NULL) {
 		s32Error = -EFAULT;
@@ -4957,7 +4956,6 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
 		return -EFAULT;
 	}
 
-	enuScanConnTimer = CONNECT_TIMER;
 	pstrWFIDrv->hConnectTimer.data = (unsigned long)hWFIDrv;
 	mod_timer(&pstrWFIDrv->hConnectTimer,
 		  jiffies + msecs_to_jiffies(HOST_IF_CONNECT_TIMEOUT));
@@ -5560,7 +5558,6 @@ s32 host_int_scan(tstrWILC_WFIDrv *hWFIDrv, u8 u8ScanSource,
 	s32 s32Error = 0;
 	tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
 	struct host_if_msg msg;
-	tenuScanConnTimer enuScanConnTimer;
 
 	if (pstrWFIDrv == NULL || ScanResult == NULL) {
 		PRINT_ER("pstrWFIDrv or ScanResult = NULL\n");
@@ -5602,7 +5599,6 @@ s32 host_int_scan(tstrWILC_WFIDrv *hWFIDrv, u8 u8ScanSource,
 		return -EINVAL;
 	}
 
-	enuScanConnTimer = SCAN_TIMER;
 	PRINT_D(HOSTINF_DBG, ">> Starting the SCAN timer\n");
 	pstrWFIDrv->hScanTimer.data = (unsigned long)hWFIDrv;
 	mod_timer(&pstrWFIDrv->hScanTimer,
-- 
2.1.0


