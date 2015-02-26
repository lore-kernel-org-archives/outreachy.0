X-GM-THRID: 4118330474496
X-Received: by 10.180.8.67 with SMTP id p3mr13735wia.7.1424987170017;
        Thu, 26 Feb 2015 13:46:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.233 with SMTP id bb9ls202670wib.29.gmail; Thu, 26 Feb
 2015 13:46:09 -0800 (PST)
X-Received: by 10.180.87.166 with SMTP id az6mr98031wib.1.1424987169710;
        Thu, 26 Feb 2015 13:46:09 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id i7si4501wif.0.2015.02.26.13.46.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:46:09 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22a.google.com with SMTP id l18so15092138wgh.7
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 13:46:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=q/3O8zhkAKRX5Ifgbqg0Gd5XVSMnafnjcCivE8l+0nM=;
        b=tbqqZT41lph1aTzedAKUUirc7CBz/T53IctJ03DxmT7OwVLLFogjlTT7xk0rOLphO1
         zDtrr0S+aHS6cJRdfOrZLM2iWs6U0H82ppW7UH20NZ3H+893GIDPHW5kwJBWo6rBYvNu
         IRrHdC3vzUY9yTTZXg4A5YmdCdQlZ0HOt2839GVitofctld0gjo2IpP3NcePNB0Xo/Kb
         i7aJlHQpE+Fo44aAvi+uE8+grGzRvABOoZYMk0vKig7fRuNSgfDwswlBgQ95fJ5v7suK
         xb/t10gXF4GnjxF1tdz/lpQK/iZCJQFf9pcWui9FvVvc/whqTRqumtzO2h6bi5Yq98QZ
         5/Nw==
X-Received: by 10.194.21.193 with SMTP id x1mr8541790wje.144.1424987169643;
        Thu, 26 Feb 2015 13:46:09 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id kr5sm3215269wjc.1.2015.02.26.13.46.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Feb 2015 13:46:08 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v3 5/5] Staging: lustre: Remove space after the name of that function
Date: Thu, 26 Feb 2015 23:45:48 +0200
Message-Id: <1424987148-4033-5-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424987148-4033-1-git-send-email-aybuke.147@gmail.com>
References: <1424987148-4033-1-git-send-email-aybuke.147@gmail.com>

Fix checkpatch.pl issues with "space prohibited between function name
and open parenthesis" in file.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* There is no change in the set of incorrect file was removed.
---
 drivers/staging/lustre/lustre/llite/file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index ab8f1a98..0fd113d 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -693,7 +693,7 @@ restart:
 out_och_free:
 	if (rc) {
 		if (och_p && *och_p) {
-			OBD_FREE(*och_p, sizeof (struct obd_client_handle));
+			OBD_FREE(*och_p, sizeof(struct obd_client_handle));
 			*och_p = NULL; /* OBD_FREE writes some magic there */
 			(*och_usecount)--;
 		}
-- 
1.9.1


