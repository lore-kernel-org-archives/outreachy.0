X-GM-THRID: 4455693025280
X-Received: by 10.112.189.227 with SMTP id gl3mr2034868lbc.2.1425037963879;
        Fri, 27 Feb 2015 03:52:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.201 with SMTP id m9ls159095lah.6.gmail; Fri, 27 Feb
 2015 03:52:42 -0800 (PST)
X-Received: by 10.112.144.130 with SMTP id sm2mr2026293lbb.9.1425037962383;
        Fri, 27 Feb 2015 03:52:42 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id l8si137374wia.0.2015.02.27.03.52.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 03:52:42 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id l2so19801349wgh.9
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 03:52:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZisJlXdpeFtERVq/hQpTjdF5Qhekxf0wHPcnauO2mnU=;
        b=VImiINT3WvNoLmEJXDW62FSCsj8a/4z56Mqxk/ECyDaQonld/ExoQ5ugvkuKK9khbK
         e4aAs2NmGnTMKgBLPx/RFkpeoqPdCjIHSemOM5wv/qy8ZxriJ18B/TVY0GzdyTAKBXeC
         mAlqB6/iQhY2xmly2dVqvcwxYEJYyTZZnXUsF9FbVo8YCHixI+lWIiEMc4EKCED3Urtc
         xwSZemwJ50KfHW/hBMa/NeWgYm95h9+fFi+bDwdAKCczfHTtjZYP9BabR+0pfXOlxo3m
         Z6c5iNrYQpyzdZNuG50NwHsYy8zs8m/v8O8kNtyeFk21ut3ozafZP+xnxCz9KCmX4nRv
         MS0Q==
X-Received: by 10.180.76.4 with SMTP id g4mr5614746wiw.43.1425037962275;
        Fri, 27 Feb 2015 03:52:42 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.157.65])
        by mx.google.com with ESMTPSA id m9sm2437205wiz.24.2015.02.27.03.52.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 03:52:41 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: i2o: Fix "foo * bar" warning.
Date: Fri, 27 Feb 2015 13:52:15 +0200
Message-Id: <1425037935-14008-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes these error messages found by checkpatch.pl:
ERROR: "foo* bar" should be "foo *bar"

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/i2o/debug.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/i2o/debug.c b/drivers/staging/i2o/debug.c
index 7a16114..3e959a4 100644
--- a/drivers/staging/i2o/debug.c
+++ b/drivers/staging/i2o/debug.c
@@ -5,7 +5,7 @@
 
 static void i2o_report_util_cmd(u8 cmd);
 static void i2o_report_exec_cmd(u8 cmd);
-static void i2o_report_fail_status(u8 req_status, u32 * msg);
+static void i2o_report_fail_status(u8 req_status, u32 *msg);
 static void i2o_report_common_status(u8 req_status);
 static void i2o_report_common_dsc(u16 detailed_status);
 
@@ -66,7 +66,7 @@ void i2o_dump_message(struct i2o_message *m)
  * Following fail status are common to all classes.
  * The preserved message must be handled in the reply handler.
  */
-static void i2o_report_fail_status(u8 req_status, u32 * msg)
+static void i2o_report_fail_status(u8 req_status, u32 *msg)
 {
 	static char *FAIL_STATUS[] = {
 		"0x80",		/* not used */
-- 
1.9.1


