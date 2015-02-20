X-GM-THRID: 1272087314432
X-Received: by 10.181.13.236 with SMTP id fb12mr1355021wid.1.1424434534652;
        Fri, 20 Feb 2015 04:15:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.36 with SMTP id n4ls229807laj.27.gmail; Fri, 20 Feb
 2015 04:15:34 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr876695lbb.11.1424434534143;
        Fri, 20 Feb 2015 04:15:34 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id r6si100857wix.0.2015.02.20.04.15.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 04:15:34 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevm14 with SMTP id m14so5199318wev.13
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 04:15:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=KW/HJE9Ii9NQoGa6n9LdugyrExcMIKFOLuDNm9KTWo8=;
        b=k4ypTNN0eq3quO/VxenYn4IoGVXSvsYDk1NfaasIWjYLL3l97QL8ZNj4VDxNPdKUIf
         9qfgQp+3N3dC0buSOFwhV6315F1JKFxPFVnTQFp1AGmPs1mcTrpvs8GphG1H2wEh9FFR
         X3vlNjAj1e3TWe26J2wNSyUfFkjzase0axnaQBZK+lK3rcV3J4M4owlh7BCg4qzT3xBr
         5UQ51E2aSrd2aY2s7qzA3Lo8z5PRVM/y5uVCmyYQPCcY334xDqCJWMZsYBx6QMa9tjKW
         7+8Dht40IKX6MjIIeYvXwwXF7pCDNz/txOeGF7YktqvskOajqEQJ3fB31aRM/rqfKoYU
         vi7g==
X-Received: by 10.194.192.167 with SMTP id hh7mr18369643wjc.151.1424434533828;
        Fri, 20 Feb 2015 04:15:33 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.151])
        by mx.google.com with ESMTPSA id ha5sm2158507wib.1.2015.02.20.04.15.32
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 04:15:33 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: dgnc: Fix line over 80 characters
Date: Fri, 20 Feb 2015 14:15:36 +0200
Message-Id: <1424434536-8292-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

Fix checkpatch.pl issues with line over
80 characters in dgnc_tty.h

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.h b/drivers/staging/dgnc/dgnc_tty.h
index 9d1c284..5efd493 100644
--- a/drivers/staging/dgnc/dgnc_tty.h
+++ b/drivers/staging/dgnc/dgnc_tty.h
@@ -37,6 +37,7 @@ void	dgnc_carrier(struct channel_t *ch);
 void	dgnc_wakeup_writes(struct channel_t *ch);
 void	dgnc_check_queue_flow_control(struct channel_t *ch);
 
-void	dgnc_sniff_nowait_nolock(struct channel_t *ch, uchar *text, uchar *buf, int nbuf);
+void	dgnc_sniff_nowait_nolock(struct channel_t *ch, uchar *text,
+	       uchar *buf, int nbuf);
 
 #endif
-- 
1.8.3.2


