X-GM-THRID: 4118330474496
X-Received: by 10.180.101.101 with SMTP id ff5mr13722wib.5.1424987159949;
        Thu, 26 Feb 2015 13:45:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.95.7 with SMTP id dg7ls205361wib.45.gmail; Thu, 26 Feb
 2015 13:45:59 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr13330wib.7.1424987159611;
        Thu, 26 Feb 2015 13:45:59 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id el6si3423wib.2.2015.02.26.13.45.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:45:59 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x233.google.com with SMTP id k48so15085649wev.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 13:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Eia/RSqbmpkMpeYHwAfIF2tXjc9vR0FrjjoMhwjvd1o=;
        b=pGL3JXC3wLmnLP9rA41Xf3gaoJ+XGmgZ87P767KSyZBEmSiZ0y7ucF0Obq6cOSYRVe
         0DIZL0HcFwEJ9gcC1R2TDPsCBxiUfmcyWSD8m6cEADhTHywmZNqZl1KZGwntHmFi1knq
         aH3Ww7IJL7m1Jd1Hcrs4O2itpun3HvkOfL2O0p20bhfcPJnTcZIIfuvfCdMXCJaz71xH
         OFFarKbL/iOCXfsklKFyJmSLad5lnTMYwwbxRrlgyG0AW1VuvJGLSYxjh2TrziR39Nm4
         7kJtRQzSb38el/VJPZCxe/CteN9UdgJXakwAl1WGKViNmA6KkCemOpCZ9j8Dy+PW22Tw
         saoA==
X-Received: by 10.194.75.168 with SMTP id d8mr13017850wjw.87.1424987159518;
        Thu, 26 Feb 2015 13:45:59 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id kr5sm3215269wjc.1.2015.02.26.13.45.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Feb 2015 13:45:58 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v3 1/5] Staging: lustre: Move export_symbol below its function
Date: Thu, 26 Feb 2015 23:45:44 +0200
Message-Id: <1424987148-4033-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "EXPORT_SYMBOL(foo); should immediately follow its
function/variable" checkpatch.pl warning in file.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* There is no change, in the set of incorrect file was removed.
---
 drivers/staging/lustre/lustre/llite/file.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index 5ebee6c..25bd513 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -3233,6 +3233,7 @@ void *ll_iocontrol_register(llioc_callback_t cb, int count, unsigned int *cmd)
 
 	return in_data;
 }
+EXPORT_SYMBOL(ll_iocontrol_register);
 
 void ll_iocontrol_unregister(void *magic)
 {
@@ -3257,8 +3258,6 @@ void ll_iocontrol_unregister(void *magic)
 
 	CWARN("didn't find iocontrol register block with magic: %p\n", magic);
 }
-
-EXPORT_SYMBOL(ll_iocontrol_register);
 EXPORT_SYMBOL(ll_iocontrol_unregister);
 
 static enum llioc_iter
-- 
1.9.1


