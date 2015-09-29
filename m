X-GM-THRID: 6199955857120165888
X-Received: by 10.112.54.197 with SMTP id l5mr4275780lbp.21.1443539712325;
        Tue, 29 Sep 2015 08:15:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.70 with SMTP id g67ls412322lfi.13.gmail; Tue, 29 Sep
 2015 08:15:11 -0700 (PDT)
X-Received: by 10.152.120.232 with SMTP id lf8mr1283892lab.1.1443539711534;
        Tue, 29 Sep 2015 08:15:11 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id o5si69875wib.0.2015.09.29.08.15.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 08:15:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id ge5so155215679wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 08:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ctmHZOKbzRP0z37oyNG7axUrPqUm8N+6upk+qt3xpgw=;
        b=TIWJ59Bnb7S7bGOzgCTcY32llHaeR9pqwKsKGW2Qo0wOB81B4HGFmjoCLiTZxw4dpJ
         ennF5w6qpuKlrqyYIU2wVlZ/npKpHYrYk2P6BJFty3/0GiM5J2BoAiSIuSZtQVgP1c6k
         EgeFSHYNCVWbcxtgDz2HZ/JXjnRfqybFo0H8rv8blNeFJVmc+9W/E+gV4Llz3CHBkF8D
         S7SL4eYQHeYbfgQM7cr8kbLmPM4vwghPit6zOpAQyjiETv66kqjfsYrvDEBJiCjNxcBR
         2rmw8F8L+NNJb+Yf8hDi90F5oIqe7dJAoKZU7Mb/kpKc2cjTGLLRiSJ+EikTiBBjvfsZ
         iLrg==
X-Received: by 10.194.52.6 with SMTP id p6mr33313473wjo.119.1443539711282;
        Tue, 29 Sep 2015 08:15:11 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id lh11sm24383273wic.18.2015.09.29.08.15.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 29 Sep 2015 08:15:10 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: wilc1000: Remove typedef
Date: Tue, 29 Sep 2015 17:15:01 +0200
Message-Id: <1443539701-2833-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

WILC_Time is not used and also time_t is not y2038 safe, therefore remove it.
Also remove comment refering to it.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/wilc1000/wilc_platform.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_platform.h b/drivers/staging/wilc1000/wilc_platform.h
index 1e56973..83f309d 100644
--- a/drivers/staging/wilc1000/wilc_platform.h
+++ b/drivers/staging/wilc1000/wilc_platform.h
@@ -33,8 +33,6 @@ typedef struct __MessageQueue_struct {
 
 
 
-/*Time represented in 64 bit format*/
-typedef time_t WILC_Time;
 
 
 /*******************************************************************
-- 
1.9.1


