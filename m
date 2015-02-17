X-GM-THRID: 432606806016
X-Received: by 10.112.161.201 with SMTP id xu9mr189524lbb.11.1424297745778;
        Wed, 18 Feb 2015 14:15:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.108.3 with SMTP id hg3ls159445wib.37.gmail; Wed, 18 Feb
 2015 14:15:45 -0800 (PST)
X-Received: by 10.180.89.194 with SMTP id bq2mr319412wib.4.1424297745405;
        Wed, 18 Feb 2015 14:15:45 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x244.google.com (mail-wg0-x244.google.com. [2a00:1450:400c:c00::244])
        by gmr-mx.google.com with ESMTPS id ev8si6274383wib.3.2015.02.18.14.15.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 14:15:45 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) client-ip=2a00:1450:400c:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x244.google.com with SMTP id y19so1044415wgg.3
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 14:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wJ/iPF1SYJZXOXa2tUGhXo8X2QduyPlLGXxYClF/DfY=;
        b=EMOi6HIGCZfU6Nxekw4GFVHsjL3J7RMCfsblXtOdJMGZEwSLvqqRTUnXZliZ61FKmt
         WnA0Q5pPyYilQaPeTv8n0DYtN+vtAF99ClRLw62lksWMG3+BOVzhO9B1QzLtSY8ZUzzv
         dIebLc2pG9Srfx5U/aD1K/C3lHcwxaT0sibf2sLF1WCBNlZkA83fYncVFgo1r70VyW54
         yVMZKEcuQXf2dfrnxPjSjh+ZpYmQeVxofq7p3loom6nEO9sg8QISqj30hNEK6xfCmpNf
         iRFdgKjs6vGfO4SJabXT/oT2z2/nfeZheAlZnL+EAYLhYcfEuwrKppAXzZpBAaifGspq
         41HA==
X-Received: by 10.194.95.66 with SMTP id di2mr2849333wjb.57.1424297745284;
        Wed, 18 Feb 2015 14:15:45 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.252])
        by mx.google.com with ESMTPSA id k1sm34569228wjn.9.2015.02.18.14.15.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 14:15:44 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 9F73363327; Wed, 18 Feb 2015 00:10:44 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] Staging: rts5208: Remove braces around single if-statement
Date: Wed, 18 Feb 2015 00:10:34 +0300
Message-Id: <1424207434-24078-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424205499-23826-1-git-send-email-hamohammed.sa@gmail.com>
References: <1424205499-23826-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes unneeded braces around a single if-statement.
This problem was found using checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v2: changed commit message

 drivers/staging/rts5208/rtsx_scsi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_scsi.c b/drivers/staging/rts5208/rtsx_scsi.c
index 1161082..42645834 100644
--- a/drivers/staging/rts5208/rtsx_scsi.c
+++ b/drivers/staging/rts5208/rtsx_scsi.c
@@ -519,10 +519,8 @@ static int inquiry(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 #else
 	if (chip->mspro_formatter_enable)
 #endif
-	{
 		if (!card || (card == MS_CARD))
 			pro_formatter_flag = 1;
-	}
 
 	if (pro_formatter_flag) {
 		if (scsi_bufflen(srb) < 56)
-- 
1.9.1


