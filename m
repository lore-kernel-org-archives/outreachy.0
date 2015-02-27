X-GM-THRID: 4704101728256
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9f5cf49a175017bf,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.13.98 with SMTP id g2mr663828wic.3.1425059839584;
        Fri, 27 Feb 2015 09:57:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.40 with SMTP id q8ls214543lag.29.gmail; Fri, 27 Feb
 2015 09:57:19 -0800 (PST)
X-Received: by 10.112.131.106 with SMTP id ol10mr2293148lbb.20.1425059839055;
        Fri, 27 Feb 2015 09:57:19 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id i7si166166wif.0.2015.02.27.09.57.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 09:57:19 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id ex7so1881060wid.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 09:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=55Zj10e6iGmb5GT/CR8TDWY3uMR3cFDs9niu3YC6ymA=;
        b=Y52ttMkvInIfbnCWg5P4/82jJMBdEzdrWjKjLTTpVlKA5/7KneO3PtTVZv2Y8ALHGd
         nVIKhWkdkr5HI3eSaurnaWP569IZwDgt7AGCedisdcZXwaVDxdxcNq1Vw9rNZsB4+5KI
         67Kw5dFnZz945yGzIPyUAhVRutAoYKhe9IsoLkNr4E5gsdhdZBgG3U05Ae+b0wYhftCx
         KUHRLX02J9txqzSGojOo8KxYp89hAEpyGbmAXMKs4lVXKvAwiinCuODJhmPlKJP5/5uy
         rF4VUG03kKcFOwLPcfdD0vrAK9aEiGwrLS/KIUCFkY1HsHbGW/8ir4H0jgqk0AFTOcvw
         kx6g==
X-Received: by 10.181.13.42 with SMTP id ev10mr8738498wid.69.1425059838953;
        Fri, 27 Feb 2015 09:57:18 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id v9sm3088153wib.0.2015.02.27.09.57.15
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 09:57:17 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: wlan-ng: Removed Use of volatile is usually wrong
Date: Fri, 27 Feb 2015 19:56:09 +0200
Message-Id: <1425059769-20058-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: Use of volatile is usually wrong.
That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 8f20910..47f65c3 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1166,7 +1166,7 @@ typedef struct hfa384x_usbctlx {
 	CTLX_STATE state;	/* Tracks running state */
 
 	struct completion done;
-	volatile int reapable;	/* Food for the reaper task */
+	int reapable;	/* Food for the reaper task */
 
 	ctlx_cmdcb_t cmdcb;	/* Async command callback */
 	ctlx_usercb_t usercb;	/* Async user callback, */
-- 
1.8.3.2


