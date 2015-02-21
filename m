X-GM-THRID: 1725764206592
X-Received: by 10.180.104.101 with SMTP id gd5mr222818wib.6.1424518811226;
        Sat, 21 Feb 2015 03:40:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.180 with SMTP id jp20ls303842lab.64.gmail; Sat, 21 Feb
 2015 03:40:10 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr263801laj.6.1424518810750;
        Sat, 21 Feb 2015 03:40:10 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id ev8si278088wib.3.2015.02.21.03.40.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 03:40:10 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22f.google.com with SMTP id x12so17511763wgg.6
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 03:40:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Fl0ZypvaYUUUwoG9F3GZKj3+mAXKLaBDt9qd9a0Tt7c=;
        b=BZCNDiUJpJ1Lq0LIcMPDxwDuCVYhknx5ZpMEN/FyPm7/nTsNhfchc5OgRUjamONSx9
         ITSrqI+7BHsXtiYw7VkFZLtEZyb0Ze72qkTYeJ795I9tlCLvEBvHfo4R+pXqllAGFht+
         9coGFBzmy2aT6jHmLBijpM2c3kO/7+dbDzS3OiR0tnjgTleLzZoU4dh2BWOZ3B4hmKrO
         AHtgHGaJodAH9fMUjckOyRbuByAVguHhuF23EcgCjAdWGVhs8hi6aK6ad500FidwYeas
         WVJE3LiH6juE47vt3CeZyldoh3+PTP3EFPJ83w0KoYhl6O3KaCCR+DXUL4y7D2naqL2i
         gtxg==
X-Received: by 10.180.96.37 with SMTP id dp5mr3334937wib.64.1424518810631;
        Sat, 21 Feb 2015 03:40:10 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id mb20sm6606013wic.18.2015.02.21.03.40.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 03:40:09 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: wlan-ng: Missing a blank line after declarations
Date: Sat, 21 Feb 2015 13:40:03 +0200
Message-Id: <1424518803-20718-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes these warning messages found by checkpatch.pl:
WARNING : Missing a blank line after declarations.

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 8f20910..3bb8c1b 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1166,6 +1166,7 @@ typedef struct hfa384x_usbctlx {
 	CTLX_STATE state;	/* Tracks running state */
 
 	struct completion done;
+
 	volatile int reapable;	/* Food for the reaper task */
 
 	ctlx_cmdcb_t cmdcb;	/* Async command callback */
-- 
1.9.1


