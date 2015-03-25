X-GM-THRID: 9875324141568
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,eaa9476e3049007c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.246.67 with SMTP id xu3mr13905013obc.18.1427327901815;
        Wed, 25 Mar 2015 16:58:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.35.194 with SMTP id j185ls460989ioj.46.gmail; Wed, 25 Mar
 2015 16:58:21 -0700 (PDT)
X-Received: by 10.43.104.69 with SMTP id dl5mr31584818icc.20.1427327901205;
        Wed, 25 Mar 2015 16:58:21 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x235.google.com (mail-qg0-x235.google.com. [2607:f8b0:400d:c04::235])
        by gmr-mx.google.com with ESMTPS id z1si513656qcn.2.2015.03.25.16.58.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 16:58:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) client-ip=2607:f8b0:400d:c04::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x235.google.com with SMTP id p97so70672017qge.1
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 16:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Wi4wSIF4hOAcYEl9NZCHVgtAql3GylkXmDmzzrwg61Q=;
        b=q1hNuAFS0Uq6jslFqUpF4DXyxpClxg52jt3OanKiyqOViMD9yj3wbnG2Wf1ojFHe6d
         H3nl7/L8FTuZIdqxQg71ZeagJM/+7xg8vofTN9JrcQ9hIE7WWVo/2MmSabKtQlS0qwVp
         ZxKuyQjlII7wnKspoHdbsi3sPdUcjuw7hNkrWv/AeH7qOoy3Ez4odJITZbLWfCzUTIhU
         Mkeh/ftH4+mRQZ7ktS1MtgzEZAJr38sRruPIcpzF3sz0bgr3Y7+kbfB+f4MPe+bUUmRX
         iyBtLDbyd9ELVG92o2DaYasXVNIAF1Coggh1fOezNGpLzLqbxy4BTQhgVuLD6DPwMt92
         lBPg==
X-Received: by 10.140.106.244 with SMTP id e107mr14841049qgf.0.1427327901028;
        Wed, 25 Mar 2015 16:58:21 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.linksys.com ([179.159.91.9])
        by mx.google.com with ESMTPSA id 75sm2478117qhw.22.2015.03.25.16.58.17
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Mar 2015 16:58:20 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH] Staging: i2o: Add "const" in variable declaration
Date: Wed, 25 Mar 2015 20:58:10 -0300
Message-Id: <1427327890-5494-1-git-send-email-helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:

WARNING: char * array declaration might be better as static const
+       static char *FAIL_STATUS[] = {

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/i2o/debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/i2o/debug.c b/drivers/staging/i2o/debug.c
index 12b783b2..f703e00 100644
--- a/drivers/staging/i2o/debug.c
+++ b/drivers/staging/i2o/debug.c
@@ -69,7 +69,7 @@ void i2o_dump_message(struct i2o_message *m)
  */
 static void i2o_report_fail_status(u8 req_status, u32 *msg)
 {
-	static char *FAIL_STATUS[] = {
+	static const char *FAIL_STATUS[] = {
 		"0x80",		/* not used */
 		"SERVICE_SUSPENDED",	/* 0x81 */
 		"SERVICE_TERMINATED",	/* 0x82 */
-- 
1.9.1


