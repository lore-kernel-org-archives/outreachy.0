X-GM-THRID: 6202300337979654144
X-Received: by 10.112.63.165 with SMTP id h5mr5828975lbs.18.1444085579652;
        Mon, 05 Oct 2015 15:52:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.152.199 with SMTP id a190ls529034lfe.62.gmail; Mon, 05 Oct
 2015 15:52:59 -0700 (PDT)
X-Received: by 10.112.209.73 with SMTP id mk9mr5695459lbc.14.1444085579051;
        Mon, 05 Oct 2015 15:52:59 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id bn1si463005wib.0.2015.10.05.15.52.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 15:52:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id ge5so141679413wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 15:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=k7tCLr446WWseFIjS+MPUeDEs4q8+t5yL5k+l6kY9/U=;
        b=oyQZKxfpMzhUTqhNbZnBGxnqaYxH1YzqkbYs/pe2JOpcElr4F6S49bQ87jfKjO2xF9
         zKdHtywzqK/vrZ7kg63b3EhISxuiZb1+mRLiJyu8FGk0V1BROIVc5HYHv9VWx4p9eC84
         TIBTKKjNY/GOJEUrPeqNnIfkaNq6KVqbwscyL6u4nSKWnY4HfBcUclepIr/Qs3OJsb0d
         5s5dGZbP+HKRrbZcCN2vAClF5rLr1lpjun4IURFHR8ifgsSrNYnFjZAyJKnpYLE9te6Y
         iZ6QGt+8c34AdzOk8dEp2oK65giGg9km2RS3AzpMJXfZCzhkUeuAfRpyLtk7G5lf7mpG
         Af6A==
X-Received: by 10.194.104.200 with SMTP id gg8mr36528336wjb.144.1444085578902;
        Mon, 05 Oct 2015 15:52:58 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([88.247.179.54])
        by smtp.gmail.com with ESMTPSA id go2sm16904225wib.20.2015.10.05.15.52.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Oct 2015 15:52:57 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v2 2/2] Staging: wilc1000: fix spelling mistake.
Date: Tue,  6 Oct 2015 01:52:36 +0300
Message-Id: <1444085556-3809-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch organizing missing written word missing.
Found by checkpatch.pl:
CHECK: 'funcion' may be misspelled - perhaps 'function'?

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
Changed v1:
* "Added" commit message title in the form of the "fixed" has been changed.
---
 drivers/staging/wilc1000/coreconfigurator.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 65a130d..9f87d05 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -264,7 +264,7 @@ static inline u16 get_assoc_resp_cap_info(u8 *data)
 	return cap_info;
 }
 
-/* This funcion extracts the association status code from the incoming       */
+/* This function extracts the association status code from the incoming       */
 /* association response frame and returns association status code            */
 static inline u16 get_asoc_status(u8 *data)
 {
-- 
1.9.1


