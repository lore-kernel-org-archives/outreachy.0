X-GM-THRID: 4176907075584
X-Received: by 10.180.182.201 with SMTP id eg9mr43990wic.3.1424991367576;
        Thu, 26 Feb 2015 14:56:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.100 with SMTP id hb4ls6579wib.22.canary; Thu, 26 Feb
 2015 14:56:07 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr45119wid.1.1424991367243;
        Thu, 26 Feb 2015 14:56:07 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x241.google.com (mail-wg0-x241.google.com. [2a00:1450:400c:c00::241])
        by gmr-mx.google.com with ESMTPS id ta1si10753wic.1.2015.02.26.14.56.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 14:56:07 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::241 as permitted sender) client-ip=2a00:1450:400c:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::241 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x241.google.com with SMTP id y19so3689820wgg.3
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 14:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=BH+Q69G3tYqlzLODdxAgNKTcw0qLFM1C5/NnrbTBay8=;
        b=Kej7A4G/Sjrqx8UTzXIx1NsToFWijfD/KaATRWkfuYCV+fiFtBFSEr17KZidfT2bZy
         z8WiH7zVxmml2XIUYDIXntsZzGOf6VcZvsPBbCVbewDWKguRxkLLw6jPcuV+C5bBq5Cn
         AI4M7/ABATR9IiW0Sf2ZX97mEAo4KbHfCDfju3Knq0GJqBEPDe3yXmy8THv2LO3TpU0V
         zbR0ebqPbNl20jFDSPqFCsObOyM43gLHUgh3HVwa7K4W2ynoU70/f/f92Yn66cy+BL5F
         4al16UVMxQ3NUJunulofZgYAZlAo3X+MxHxmRXOFamuJ8ZxlPbA+RfM9QTJcncm7vNdm
         +ISA==
X-Received: by 10.180.206.14 with SMTP id lk14mr464957wic.71.1424991367158;
        Thu, 26 Feb 2015 14:56:07 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id h11sm230107wic.14.2015.02.26.14.56.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Feb 2015 14:56:06 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: lustre: lustre: mgc: Delete the excess white space
Date: Fri, 27 Feb 2015 00:56:00 +0200
Message-Id: <1424991360-12515-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Don't "foo *		bar" be "foo *bar". That's why delete the excess
white space.

This warning found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/lustre/lustre/mgc/mgc_request.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
index 60d2b0f..8d3dbdc 100644
--- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
+++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
@@ -160,7 +160,7 @@ struct config_llog_data *config_log_find(char *logname,
 {
 	struct config_llog_data *cld;
 	struct config_llog_data *found = NULL;
-	void *		   instance;
+	void *instance;
 
 	LASSERT(logname != NULL);
 
-- 
1.9.1


