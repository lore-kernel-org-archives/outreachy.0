X-GM-THRID: 6255259573485043712
X-Received: by 10.98.68.194 with SMTP id m63mr41630565pfi.7.1456416112504;
        Thu, 25 Feb 2016 08:01:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.97 with SMTP id u94ls459189ioi.22.gmail; Thu, 25 Feb
 2016 08:01:52 -0800 (PST)
X-Received: by 10.98.89.132 with SMTP id k4mr41641590pfj.4.1456416112175;
        Thu, 25 Feb 2016 08:01:52 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 12si1272143pfb.1.2016.02.25.08.01.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 08:01:52 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id c10so3024273pfc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 08:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nMo8dMXtI4Tp0eCIvYFXQb3qt61y3kGwlOpWDw5kWaw=;
        b=KR8uc+MlvwdEz3Cjof046Jssl8IM32TNhfJZkMm7YV01T3VxYZNoKBCzPD2FjZDwvB
         Y8ueAlY7OWNELaip9kIfLqAzBARwQ1QmP+2o1EYlFLKge/fI5apXW4dw0R1DcVV7MV8z
         dYG6Nr3jRzC3HMfQSRJrLxg8QxJMAL/d7IXYKKYUGnxzZsa1ZqWlcxmhokNjD6Jt1Gfp
         7d8K7s4W1kQV/HVZZ3KJtKACHNoQFLZ28Y0lCSLiGLW/Akt5T09zt5PFj716s5DV7hvs
         /FXNjVjlGBJyjqju54lUOTbBVhkipwzmlMw/32IXrxwYGUPK3Ey/k27dXdFe3uynWryg
         Rdxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=nMo8dMXtI4Tp0eCIvYFXQb3qt61y3kGwlOpWDw5kWaw=;
        b=BnpULRomXAd/wv8hO/3ZC0cuva7XhE0ZnXNBk2SZZekYRgxCInQNIiTbwNYDy8iyvT
         YsapGympRkfzPaPAqcIiuWfxfIAwrw1Wjx0cjZjOFtetLJkWpPUbuETvY7pizQfe1FMv
         trgTssl2RfGnV2I9cAYdJacqpiSUq5fy/NBES62lniovz2yaGQFQTCRhEUUBgOx0u6t5
         oQEtLOkYAsZ9ZZiKABmj2g2RCqgAj8AEDRto6KVIWidSw7muPJ7gF8W9ynIMK5/MlrFw
         /eLhrfhPKSjSmBvro9YqKpOx2wz84/ep/6AlfbGA7vXb4sSggXvpD2rkNRoPHSrIqvp1
         vxdg==
X-Gm-Message-State: AG10YOQpA5P9mtU20gVx62MIqCWcyo1DJ/bLUIMuh9NqAF+26CZzG9dw5Mgq8wkBBcXuAg==
X-Received: by 10.98.93.205 with SMTP id n74mr63722020pfj.99.1456416112060;
        Thu, 25 Feb 2016 08:01:52 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 6sm13229849pfo.58.2016.02.25.08.01.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 08:01:51 -0800 (PST)
Date: Thu, 25 Feb 2016 21:31:30 +0530
From: "pooja.shamili" <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: gdm72x: Add spaces before and after '*'
Message-ID: <20160225160130.GA8646@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch.pl error:
CHECK: spaces preferred around that '*'

Signed-off-by: pooja.shamili <poojashamili@gmail.com>
---

Changes since v1:
	* Changed the commit message to the present tense

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
2.1.4


