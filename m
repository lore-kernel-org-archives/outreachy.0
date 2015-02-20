X-GM-THRID: 1427250348032
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5782da9d37db3af6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.131.106 with SMTP id ol10mr1519390lbb.20.1424461165594;
        Fri, 20 Feb 2015 11:39:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.193 with SMTP id v1ls291112lag.102.gmail; Fri, 20 Feb
 2015 11:39:24 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr1505778lbo.8.1424461164903;
        Fri, 20 Feb 2015 11:39:24 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-we0-x232.google.com (mail-we0-x232.google.com. [2a00:1450:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id r6si179829wix.0.2015.02.20.11.39.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 11:39:24 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) client-ip=2a00:1450:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x232.google.com with SMTP id m14so7442708wev.8
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 11:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=q2GR4sfGMnoQz9Z5PPSWn6uZuRUjHMee+E7EK1o2hL8=;
        b=wcGbZN8s+V4TQxFMQiTU/1phLpx2yGIihK4rCXzixWFKAzpuL5LgryQxGgxuC489G8
         wdZOwsi5nYJshzFy8+qzvG7DkhreDpQ5xVV9tAAFjyrXKKhA3DA3AbnvaGf3pQyOab+x
         038EqAwisf8+gOlbDPJpQqO8fjN/Oo2Gpqw22SLdZvfenkeOMBxBe0jEe1V+r68MxRHr
         7LSOvnjjvhVorskS0sqJoM8gwtmW5t8Trok9DXxHYFy/GN6UllnjR1KJ9855eIKVHRHY
         HRfdxw0CmTEleZirj2WZ8NewnrR/SwyOzHUPVcLoIAMj43ktaDhIYnPmebeiiV14DCHL
         swyg==
X-Received: by 10.194.85.129 with SMTP id h1mr22109937wjz.147.1424461163329;
        Fri, 20 Feb 2015 11:39:23 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id a1sm43414935wjs.40.2015.02.20.11.39.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 11:39:22 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v2] Staging: lustre: lustre: fid: Remove unnecessary else after return
Date: Fri, 20 Feb 2015 21:38:59 +0200
Message-Id: <1424461139-8191-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "else is not generally useful after
a break or return" checkpatch.pl warning using goto statement in fid_request.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* removed the "else" block instead of goto statement was used and
a commit message has been corrected.
---
 drivers/staging/lustre/lustre/fid/fid_request.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/fid/fid_request.c b/drivers/staging/lustre/lustre/fid/fid_request.c
index 063441a..a3a300e 100644
--- a/drivers/staging/lustre/lustre/fid/fid_request.c
+++ b/drivers/staging/lustre/lustre/fid/fid_request.c
@@ -200,7 +200,7 @@ static int seq_client_alloc_seq(const struct lu_env *env,
 		if (rc) {
 			CERROR("%s: Can't allocate new meta-sequence, rc %d\n",
 			       seq->lcs_name, rc);
-			return rc;
+			goto out;
 		} else {
 			CDEBUG(D_INFO, "%s: New range - "DRANGE"\n",
 			       seq->lcs_name, PRANGE(&seq->lcs_space));
@@ -215,7 +215,7 @@ static int seq_client_alloc_seq(const struct lu_env *env,
 
 	CDEBUG(D_INFO, "%s: Allocated sequence [%#llx]\n", seq->lcs_name,
 	       *seqnr);
-
+out:
 	return rc;
 }
 
-- 
1.9.1


