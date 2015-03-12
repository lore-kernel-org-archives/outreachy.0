X-GM-THRID: 7918816591872
X-Received: by 10.152.21.9 with SMTP id r9mr6515385lae.0.1426177785918;
        Thu, 12 Mar 2015 09:29:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.67 with SMTP id l3ls304865lae.93.gmail; Thu, 12 Mar
 2015 09:29:45 -0700 (PDT)
X-Received: by 10.112.25.7 with SMTP id y7mr6384667lbf.21.1426177785452;
        Thu, 12 Mar 2015 09:29:45 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id sf8si578766wic.2.2015.03.12.09.29.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 09:29:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id l15so49173091wiw.4
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 09:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Lentf6RTbhgUhLpNSY7Mzd+LnMl2lUcbdiisTBXfrak=;
        b=jTukqiht4ynKs/+QRGPupsjkojmA8gtSN7DCQ2jAyF04BEKBYTBiV1Vz/vFzcMXExH
         kTy/AGxbpebRpWXxdqDhfmGbkoa17yDPpx+ug3EbIzLAiIuwE1pXhKo2Tw78Xz07NcDz
         p3PMOhSDQWbl8mJS7Thv5n+AfNYO0cNZp6b8lnFPpSafzu8NDXY2ndXRfuFiAMkesS5P
         9aYzIjkiDISgfEyYTb6goF4D3+jD45b0YxgAF/wxM/2A9nC5zhyUXNupiVSRsnEaIPEW
         2X83E15xVhpHa72GhAlXbk0WhtaTvEZ00awfb/kQqjnI3en3Ihv+wxpe4PdFiSoD+hab
         YuoA==
X-Received: by 10.194.173.199 with SMTP id bm7mr50165374wjc.76.1426177785361;
        Thu, 12 Mar 2015 09:29:45 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id uc18sm11482924wib.0.2015.03.12.09.29.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Mar 2015 09:29:44 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: Simplify if condition
Date: Thu, 12 Mar 2015 17:29:35 +0100
Message-Id: <1426177775-3126-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes macro true from if condition since variable
priv->ieee80211->LinkDetectInfo.bBusyTraffic is already of type bool.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2: Change commit message.

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


