X-GM-THRID: 2808943214592
X-Received: by 10.112.174.36 with SMTP id bp4mr1218493lbc.15.1424691136858;
        Mon, 23 Feb 2015 03:32:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.164.193 with SMTP id ys1ls535233lab.39.gmail; Mon, 23 Feb
 2015 03:32:16 -0800 (PST)
X-Received: by 10.112.174.36 with SMTP id bp4mr1218486lbc.15.1424691136379;
        Mon, 23 Feb 2015 03:32:16 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id cl5si659277wib.3.2015.02.23.03.32.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 03:32:16 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22d.google.com with SMTP id m14so17329544wev.8
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 03:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=yQbwMgSQAxcyzV5CEjtfp13hXcplnosZiXYWqQStiog=;
        b=02JN7I3DnX8nJcI2JRDb5INvmGXSTIgsCJGuh+o2DyT/lAb3fj7p5lZTP/mVeFb1Om
         AjuqkH/5QbaP4AzaAD+Jp5uazlwyIHhyQzkHiFZH/x2rKi5GdnWD4omx8va8NjhyyL9g
         b7Wvfrl7//im1dVq6XFdK0Gz/1xsBIZEIhIK63sbb7CmxHR/1CU9EetjkHh/iubiKdg9
         c+xAqp42nPoFmi5WyarsmSx/dWrGQZj7zGzj0jKCbzYLy+KEWu6QsnBI+qbbMvWfHdUW
         dJ9YkSwJtBu/8q037mYBiUQNlQHF5sTF6jVJv9xrlVWJNh7FjF/pG5pn678BbxJWO5wu
         3oEg==
X-Received: by 10.180.88.193 with SMTP id bi1mr19862943wib.70.1424691136259;
        Mon, 23 Feb 2015 03:32:16 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from yeliz-N56DP.comu.edu.tr ([193.255.97.48])
        by mx.google.com with ESMTPSA id ax10sm55166312wjc.26.2015.02.23.03.32.15
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 03:32:15 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: rtl8712: Add blank line after declarations
Date: Mon, 23 Feb 2015 13:32:22 +0200
Message-Id: <1424691142-6839-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

The following patch fixes the checkpatch.pl warning:
drivers/staging/rtl8712/drv_types.h WARNING: Missing a blank line after declarations

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/rtl8712/drv_types.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
index 3d0a98b..2522b59 100644
--- a/drivers/staging/rtl8712/drv_types.h
+++ b/drivers/staging/rtl8712/drv_types.h
@@ -129,6 +129,7 @@ struct dvobj_priv {
 	struct _adapter *padapter;
 	u32 nr_endpoint;
 	u8   ishighspeed;
+
 	uint(*inirp_init)(struct _adapter *adapter);
 	uint(*inirp_deinit)(struct _adapter *adapter);
 	struct usb_device *pusbdev;
@@ -165,7 +166,9 @@ struct _adapter {
 	struct task_struct *cmdThread;
 	 pid_t evtThread;
 	struct task_struct *xmitThread;
+
 	pid_t recvThread;
+
 	uint(*dvobj_init)(struct _adapter *adapter);
 	void (*dvobj_deinit)(struct _adapter *adapter);
 	struct net_device *pnetdev;
-- 
1.8.3.2


