X-GM-THRID: 6692949458944
X-Received: by 10.180.182.44 with SMTP id eb12mr4236982wic.4.1425511966274;
        Wed, 04 Mar 2015 15:32:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.116.9 with SMTP id js9ls257298lab.69.gmail; Wed, 04 Mar
 2015 15:32:45 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr1037295lbb.24.1425511965503;
        Wed, 04 Mar 2015 15:32:45 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id o3si1210427wib.2.2015.03.04.15.32.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 15:32:45 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesk11 with SMTP id k11so49526339wes.11
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 15:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=4pcDwY01zvM4dhVF4QPT2R9AyJv8cx4eZudq+qI9CdQ=;
        b=zT4js47BP9K9PE2cMoahYwIHYTwKqLlXt2fhMq4vZ2WcGrsOnrqqwZju5+w6DMAWnH
         vNiiZMcOc7igms9rt9CzLloq952bAXzCvDzaT4Kgg6hZLgeG4BbOLLHmb28cE8zlTCLy
         DQ5ub4Tk+prHovW/PPNXXfEsCeuCdCdNiQ8b1CHdy+FGkvR5ovwhMKF/WtAeAiP2gBXU
         MRv7J9P3kNPZ8t265+5Mo7lMxJ3kIePeboGjP+zjpR8Vm03XnqBJQqIjQuCX99LB5dYR
         nQUg9G34I9oMv58+9DL0Ktg7M9TlQyNNDuSr6gxzSFNPOhU7KwGb7oR7XlLcXTH1vxmx
         1niQ==
X-Received: by 10.180.82.129 with SMTP id i1mr16891647wiy.77.1425511965409;
        Wed, 04 Mar 2015 15:32:45 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id ga8sm9102836wib.6.2015.03.04.15.32.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 15:32:44 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Simplify if condition
Date: Thu,  5 Mar 2015 00:32:38 +0100
Message-Id: <1425511958-1021-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch simplifies if condition using following Coccinelle script:
@@ bool a; symbol true; @@
(
- a != true
+ !a
|
- a == true
+ a
)
@@ bool a; symbol false; @@
(
- a != false
+ a
|
- a == false
+ !a
)

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index b5a26f3..8359705 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -335,7 +335,7 @@ static int r8192_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 	if (!priv->up)
 		return -ENETDOWN;
 
-	if (priv->ieee80211->LinkDetectInfo.bBusyTraffic == true)
+	if (priv->ieee80211->LinkDetectInfo.bBusyTraffic)
 		return -EAGAIN;
 	if (wrqu->data.flags & IW_SCAN_THIS_ESSID) {
 		struct iw_scan_req *req = (struct iw_scan_req *)b;
-- 
1.9.1


