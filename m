X-GM-THRID: 7343575138304
X-Received: by 10.180.75.232 with SMTP id f8mr7411618wiw.0.1425935024207;
        Mon, 09 Mar 2015 14:03:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.170.229 with SMTP id ap5ls78137lac.77.gmail; Mon, 09 Mar
 2015 14:03:42 -0700 (PDT)
X-Received: by 10.112.126.194 with SMTP id na2mr4344934lbb.18.1425935022734;
        Mon, 09 Mar 2015 14:03:42 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id sf8si41125wic.2.2015.03.09.14.03.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 14:03:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id x13so35026753wgg.4
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 14:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=CvkvRF2yjKoWFxwAb1U7A5Bq3DO3Cri92xaYPx6qdNw=;
        b=d9XkawSgZEk+xh83RGt+wMRIOxMu/+stt78jxZiYy6FKdgtu75DBQbcxN5k1nh1kRb
         DyRdckKZ7VSWcq5Z0ctzTfcF5DQB1LOzvdluTwGhk5AkreG8DCROUvGApshwYE1zQwNk
         m1actkAEtsGxCc98zAe/bFAJTF0gYvthPSrJ5OCew/Lg6ir+aocfspG1DxzLO6x7u8RT
         Nug5c7jhzPOQyTusU3VUwmL1cFTWoW9BwYKSmUvpAehIOFD1JUhihpexsytJv2nzR6J8
         ITurhWjv/tk8ORN1d1LzJWO1fFyEFzoz5nr5v46oWI0cVYhr7ujvu/82+HpxCqzaPeK8
         dpjA==
X-Received: by 10.194.59.199 with SMTP id b7mr62493870wjr.26.1425935022623;
        Mon, 09 Mar 2015 14:03:42 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id y14sm29846412wjr.39.2015.03.09.14.03.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 09 Mar 2015 14:03:41 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: i2o_scsi: Fix label indentation
Date: Mon,  9 Mar 2015 23:03:29 +0200
Message-Id: <1425935009-17328-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:

WARNING: labels should not be indented

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/i2o/i2o_scsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/i2o/i2o_scsi.c b/drivers/staging/i2o/i2o_scsi.c
index 1b11dcb..2ecd706 100644
--- a/drivers/staging/i2o/i2o_scsi.c
+++ b/drivers/staging/i2o/i2o_scsi.c
@@ -680,11 +680,11 @@ static int i2o_scsi_queuecommand_lck(struct scsi_cmnd *SCpnt,
 
 	return 0;
 
-      nomem:
+nomem:
 	rc = -ENOMEM;
 	i2o_msg_nop(c, msg);
 
-      exit:
+exit:
 	return rc;
 }
 
-- 
1.9.1


