X-GM-THRID: 2050684354560
X-Received: by 10.152.19.100 with SMTP id d4mr423113lae.7.1424547954474;
        Sat, 21 Feb 2015 11:45:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.126.68 with SMTP id mw4ls307039wib.12.canary; Sat, 21 Feb
 2015 11:45:54 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr382349wia.7.1424547954134;
        Sat, 21 Feb 2015 11:45:54 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id i7si366733wif.0.2015.02.21.11.45.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 11:45:54 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id l15so9217071wiw.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 11:45:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=AlWNlxmmsI9XububQcJZhkwdrJG4luZriz8BMA35SUo=;
        b=olHOWedr4PAdlAp5f5jRJblCA7z68SOOltnfvA6+vMZ6OZLgu3yblXn3/ypKId00c9
         pXUdsKW+UsvE4188petwkY2+vbjEe8Iw+w5+ZK3xJ55ahwrkn2o19qeDPCFWHp+udWv5
         4VKVUeRBAoAkpZv26dHp25Q3a6y0G9yj1uI4DZIx+RVPJfwDqMdzcWjYK51hiBuDLy0b
         CvYYGbst6HcJWHGHMmlM43So2fyisdMEHoIhD/U9QZfpMfVbwB+UlGn/Y4pmQq2oXLt9
         NMGPsQF8TSKGsPXiPg287hIsyClhAZzp96JY22twznLGJvuOEFgH8Iet1VD7GPFvi0cZ
         rlVA==
X-Received: by 10.180.73.1 with SMTP id h1mr6677333wiv.10.1424547954072;
        Sat, 21 Feb 2015 11:45:54 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.58.202])
        by mx.google.com with ESMTPSA id cj12sm47909818wjb.35.2015.02.21.11.45.53
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 11:45:53 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: bcm: Remove space before tab
Date: Sat, 21 Feb 2015 21:45:56 +0200
Message-Id: <1424547956-3686-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the checkpatch.pl warning:
WARNING: "please, no space before tabs"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/bcm/headers.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/bcm/headers.h b/drivers/staging/bcm/headers.h
index 6f3270c..a7d4af5 100644
--- a/drivers/staging/bcm/headers.h
+++ b/drivers/staging/bcm/headers.h
@@ -1,6 +1,6 @@
 
 /*******************************************************************
-* 		Headers.h
+*		Headers.h
 *******************************************************************/
 #ifndef __HEADERS_H__
 #define __HEADERS_H__
-- 
1.8.3.2


