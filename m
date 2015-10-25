X-GM-THRID: 6209575408262709248
X-Received: by 10.194.109.233 with SMTP id hv9mr7174428wjb.1.1445779439698;
        Sun, 25 Oct 2015 06:23:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.37.197 with SMTP id a5ls392135wik.3.canary; Sun, 25 Oct
 2015 06:23:59 -0700 (PDT)
X-Received: by 10.180.216.105 with SMTP id op9mr3138005wic.0.1445779439444;
        Sun, 25 Oct 2015 06:23:59 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id o3si387120wiz.1.2015.10.25.06.23.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 06:23:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id p11so131937427wij.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 06:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Qg7WMh2GP9bKTyoG9UXcdZd4w1ab68qtkPEuHZXCTCM=;
        b=qlUV+BTjbXRLy/ldFmjuKmQgDtXFhTeV52kURawb7pXQOzgMnQxPdRiF+K42FdeTH9
         gVIy++qYn8TQgZ7Z0jpZRUZU7oA2E/7a68ujxrqtfM11UR7YJ0cF2Gm/I/A9ykmHVl7s
         xUo7PS9tYzdzILixI4hJZCYLbpxxjkYzprkWlQvbQkuXXLRdvQB3xvePWCeo1AVkt5PN
         C35TwGZSGLC6DaATANF/5C0hrs0f7F8jtLTD0YeTtX5Q4+20oamt+yEzrbzz+xciDfNF
         d9uZrGcDXmXhWIFTzBSzNakJtXiAKOM44wwd8hmF2ck0ETldhXDHHUvyAdU4yQPm55xX
         VPdA==
X-Received: by 10.194.216.100 with SMTP id op4mr33630592wjc.60.1445779439288;
        Sun, 25 Oct 2015 06:23:59 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.44])
        by smtp.gmail.com with ESMTPSA id l5sm2162777wjf.11.2015.10.25.06.23.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 25 Oct 2015 06:23:58 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: nvec: Do not use multiple blank lines.
Date: Sun, 25 Oct 2015 15:23:50 +0200
Message-Id: <1445779430-4560-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove multiple blank lines. Problem found using checkpatch.pl
"CHECK: Please don't use multiple blank lines".

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/nvec/nvec.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 164634d..802c959 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -710,7 +710,6 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 		status & RCVD ? " RCVD" : "",
 		status & RNW ? " RNW" : "");
 
-
 	/*
 	 * TODO: A correct fix needs to be found for this.
 	 *
-- 
1.9.1


