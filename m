X-GM-THRID: 3091917176832
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,93c204a439d34a99,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.88.40 with SMTP id bd8mr1643033lab.0.1424726514207;
        Mon, 23 Feb 2015 13:21:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.207.101 with SMTP id lv5ls602356lac.22.gmail; Mon, 23 Feb
 2015 13:21:53 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr1700936lbw.4.1424726513917;
        Mon, 23 Feb 2015 13:21:53 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id ew5si787383wid.1.2015.02.23.13.21.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 13:21:53 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id l15so21003421wiw.5
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 13:21:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=XvUOVmDBTVVrt8pr51wn2rvPvA4rT4wBgd4S85G2VaU=;
        b=qC9tVjwqMtjblARXjwGv5X/DD5dBj2qQeleriETxLuIYibqMTbRSTey9DwKCECV+5M
         TnO7gsUS0saqvF9kobZd6AjDUMReZokShnnxQuvUYjNewtOYlbb270PXoW4oJPnzPMOp
         kLKWG0wbLgHQAq5usksqiNNYruRq/LFg9e96FLx2kls1m3nwjRbDmHASSzX1NvHQ83vg
         IN9/d/ibhpNQKvgo93i14qOD4dKXsSSpvLxVxEKTk0TRAbHoAu4Jg03HEsD765g/mz7I
         achtHb9fl9WWFz+PPzKnrH9B+OS6wc5RdrscNgX0cdPaUPJhFiwK4lCOmuagiZLSsgGt
         kWdA==
X-Received: by 10.181.29.168 with SMTP id jx8mr21915163wid.8.1424726513795;
        Mon, 23 Feb 2015 13:21:53 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.151])
        by mx.google.com with ESMTPSA id x6sm57262822wjf.24.2015.02.23.13.21.52
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 13:21:53 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: bcm: Fix line over 80 characters
Date: Mon, 23 Feb 2015 23:21:54 +0200
Message-Id: <1424726514-4921-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

Fix checkpatch.pl issues with line over
80 characters in InterfaceIdleMode.c

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/bcm/InterfaceIdleMode.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/bcm/InterfaceIdleMode.c b/drivers/staging/bcm/InterfaceIdleMode.c
index 612c89f..448b632 100644
--- a/drivers/staging/bcm/InterfaceIdleMode.c
+++ b/drivers/staging/bcm/InterfaceIdleMode.c
@@ -211,7 +211,8 @@ static int InterfaceAbortIdlemode(struct bcm_mini_adapter *Adapter,
 		else
 			BCM_DEBUG_PRINT(Adapter, DBG_TYPE_OTHERS,
 				IDLE_MODE, DBG_LVL_ALL,
-				"Number of completed iteration to read chip-id :%lu", itr);
+				"Number of completed iteration to read chip-id :%lu",
+			       itr);
 
 		status = wrmalt(Adapter, SW_ABORT_IDLEMODE_LOC,
 				&Pattern, sizeof(status));
-- 
1.8.3.2


