X-GM-THRID: 6330639307056873472
X-Received: by 10.157.20.41 with SMTP id h38mr7502862oth.48.1473966860206;
        Thu, 15 Sep 2016 12:14:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.24 with SMTP id o24ls3913352otb.35.gmail; Thu, 15 Sep
 2016 12:14:19 -0700 (PDT)
X-Received: by 10.200.36.41 with SMTP id c38mr7570312qtc.21.1473966859645;
        Thu, 15 Sep 2016 12:14:19 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id si10si1660645pab.1.2016.09.15.12.14.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:14:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id vz6so2465840pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ssUgkMnrCoejFws4IQxqVIHTnfksAkS4Ahf8iwWLR4o=;
        b=zZ/PoLupGGqnQxqvDcCXYpPIDSdyxsPDEbq7WH6jO1bE38j3yRUb/naIpnYNmkcXUb
         A2KxAsfAFsiB41rIwShpMELnB6xXW79tBt/iG1oQIHSrzXlrsbZzPSY5SQ697B+g6Ssi
         a7+/+hEClhxN35rEQlvoUUWKFCuocFq9400zbSJrvSbUhL8IURU79qRlGYOdlluJxDt/
         w2Ag+gFSSXeNmdUnTTErInAdOCsvn4+jWsa8MN7T5oHO/uloU+8nITlIT3dVIWfM+NIq
         5iYMLRevD9/e0Lp72MVp9Mymp+vmDVO5Cr+BONARckgo9IHdYucXcatecRpnHpV3O11p
         uUyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ssUgkMnrCoejFws4IQxqVIHTnfksAkS4Ahf8iwWLR4o=;
        b=aq4CF2VNjil355du8gSC/C6ETP1XpT2X9r5E8Oy9e/jNrgNMyFgk3pjA5tlOvdg93G
         LVGaqtEJY3cit+ghQKTX+4szlnXnYUYzfNzcnfjnheJJnz5iEPxpvw1GkXWDRYJ9vkW2
         Yta+LOB4jOO8764dYGN79d99TMTy29iL7/q8lfOuFMPO3cFSeNkhGlgC+NdavL4NQ7Zw
         mmgihx0GXT5M/iaiMxdOESO02vp+gAT7Zy3mK33rQJLmQhUEITYx9aj680iEaWomZB1S
         z8mMeDSPEngwrCYH9mDtJ4PLz7Vb9STzx4hVwl4Wi92K9W17Csz9joaeEwuyj/MajGqL
         T6Lw==
X-Gm-Message-State: AE9vXwNvIXoLaydgrtRpxySXlWKgBWynFtygihsaFJzAz5pxcSCfGqwwW8lvj1i5P+r7RQ==
X-Received: by 10.66.26.207 with SMTP id n15mr16970404pag.69.1473966858109;
        Thu, 15 Sep 2016 12:14:18 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f11sm46875503pfe.1.2016.09.15.12.14.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:14:17 -0700 (PDT)
Date: Fri, 16 Sep 2016 00:44:09 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lior Dotan <liodot@gmail.com>,
	Christopher Harrer <charrer@alacritech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/5] staging: slicoss: Fix alignment with open parentheses
Message-ID: <a0e1623587ce0b842607142663aa65d7871245cc.1473966683.git.aquannie@gmail.com>
References: <cover.1473966683.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473966683.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Align statements following a line with open parentheses to start after the '('.
Issue detected by checkpatch.pl.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 21280a3..6bfb7a8 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -191,7 +191,7 @@ static void slic_timer_ping(ulong dev)
  *
  */
 static void slic_link_config(struct adapter *adapter,
-		      u32 linkspeed, u32 linkduplex)
+			     u32 linkspeed, u32 linkduplex)
 {
 	u32 speed;
 	u32 duplex;
@@ -707,7 +707,7 @@ static void slic_config_clear(struct adapter *adapter)
 }
 
 static bool slic_mac_filter(struct adapter *adapter,
-			struct ether_header *ether_frame)
+			    struct ether_header *ether_frame)
 {
 	struct net_device *netdev = adapter->netdev;
 	u32 opts = adapter->macopts;
@@ -830,10 +830,10 @@ static void slic_timer_load_check(ulong cardaddr)
 }
 
 static int slic_upr_queue_request(struct adapter *adapter,
-			   u32 upr_request,
-			   u32 upr_data,
-			   u32 upr_data_h,
-			   u32 upr_buffer, u32 upr_buffer_h)
+				  u32 upr_request,
+				  u32 upr_data,
+				  u32 upr_data_h,
+				  u32 upr_buffer, u32 upr_buffer_h)
 {
 	struct slic_upr *upr;
 	struct slic_upr *uprqueue;
@@ -899,19 +899,19 @@ static void slic_upr_start(struct adapter *adapter)
 }
 
 static int slic_upr_request(struct adapter *adapter,
-		     u32 upr_request,
-		     u32 upr_data,
-		     u32 upr_data_h,
-		     u32 upr_buffer, u32 upr_buffer_h)
+			    u32 upr_request,
+			    u32 upr_data,
+			    u32 upr_data_h,
+			    u32 upr_buffer, u32 upr_buffer_h)
 {
 	unsigned long flags;
 	int rc;
 
 	spin_lock_irqsave(&adapter->upr_lock, flags);
 	rc = slic_upr_queue_request(adapter,
-					upr_request,
-					upr_data,
-					upr_data_h, upr_buffer, upr_buffer_h);
+				    upr_request,
+				    upr_data,
+				    upr_data_h, upr_buffer, upr_buffer_h);
 	if (rc)
 		goto err_unlock_irq;
 
@@ -1421,7 +1421,7 @@ retry:
 }
 
 static void slic_cmdq_putdone_irq(struct adapter *adapter,
-				struct slic_hostcmd *cmd)
+				  struct slic_hostcmd *cmd)
 {
 	struct slic_cmdqueue *cmdq = &adapter->cmdq_done;
 
-- 
2.7.4


