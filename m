X-GM-THRID: 1726977409024
X-Received: by 10.152.19.100 with SMTP id d4mr261566lae.7.1424519098859;
        Sat, 21 Feb 2015 03:44:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.26.74 with SMTP id j10ls386433lag.7.gmail; Sat, 21 Feb
 2015 03:44:57 -0800 (PST)
X-Received: by 10.112.146.65 with SMTP id ta1mr256750lbb.19.1424519097271;
        Sat, 21 Feb 2015 03:44:57 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id i7si292274wif.0.2015.02.21.03.44.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 03:44:57 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id r20so7815887wiv.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 03:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fZJK9QdpBguIYwS45JwxK7GsSu8tfVB+qP1lHpvrlf4=;
        b=TzykOB+cPdqP2hssAQwU6VYap6td6YHAW0g2bq7xWqisu1e8jMVJrXcRABDTvJPZ2i
         atEq+dezUn3D6h52g9P899ovMqJ+L9ikzjBoRcSY0KOvd2+aaFHVvB1RAdYv92LmhQZ1
         yhsqmAuX5IufHuLqd4TSuMHTlgpltNybVztm/8joaWZC/euWx+uX/98U+eyv2WVzIYIO
         OCGtX2z78pK8mtfbWLGc055ce44F4yLUazjiHURjy150S7F5tzhKsmYXKXDrJUtUrjXL
         2Y0LGFaXPTVLIGxbnHO7Z2GC9LMUg7MiOwZX4u3Ad0UiYN+vr07HlNtDBfdTnN+EnkZM
         u7pg==
X-Received: by 10.180.86.201 with SMTP id r9mr3423410wiz.56.1424519097187;
        Sat, 21 Feb 2015 03:44:57 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id ee10sm11061487wib.0.2015.02.21.03.44.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 03:44:56 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 5/5] Staging: lustre: Remove space after the name of that function
Date: Sat, 21 Feb 2015 13:44:35 +0200
Message-Id: <1424519075-4378-5-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424519075-4378-1-git-send-email-aybuke.147@gmail.com>
References: <1424519075-4378-1-git-send-email-aybuke.147@gmail.com>

Fix checkpatch.pl issues with "space prohibited between function name and
open parenthesis" in file.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index 2dd6a8d..16e3045 100644
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


