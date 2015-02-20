X-GM-THRID: 1517610336256
X-Received: by 10.180.8.67 with SMTP id p3mr60528wia.7.1424461785110;
        Fri, 20 Feb 2015 11:49:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.178.229 with SMTP id db5ls159944lac.49.gmail; Fri, 20 Feb
 2015 11:49:44 -0800 (PST)
X-Received: by 10.152.37.200 with SMTP id a8mr1508822lak.5.1424461784261;
        Fri, 20 Feb 2015 11:49:44 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id o3si167849wib.2.2015.02.20.11.49.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 11:49:44 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id y19so14973569wgg.13
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 11:49:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=k35zzO8sz+DiWHz1/Gx7jOVccdQuudFHduYwan0lcT8=;
        b=RX7XpOgVyFURBrVXXF4BR0UhWC7nxIIevS6MBqWG0wvjplEFklc1UFc3L2zaBq/hAj
         o7Nc3tKdr7e4OKbFStg5b8QKoIk6I8OKcC1jQr7654S2tvyPSda8/a/2h4EgBopPN+kp
         9uCt4p7tU9cFnR7wfjen4dQ+n+emuWg3dHvCmjYV/fDrFZSvfdL3yKS2Np/zlC0Wc0O8
         ywISOoz1FsAovldxXSMgts3yZjE/bEYhS9VdROHjo8F+AbolMjLVuGgT4CPyDuUmeEhe
         lpVHZnicCcHNO9Q3vW8cYsLVcl/vs0nKQ0xJs0890iChRIcj+9EU7NHWT0epPXUwkcyQ
         re0A==
X-Received: by 10.194.92.9 with SMTP id ci9mr21786668wjb.142.1424461784140;
        Fri, 20 Feb 2015 11:49:44 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id bf8sm34487411wjb.37.2015.02.20.11.49.42
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 11:49:43 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v3] Staging: lustre: Remove unnecessary else after return
Date: Fri, 20 Feb 2015 21:49:34 +0200
Message-Id: <1424461774-8405-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "else is not generally useful after
a break or return" checkpatch.pl warning using goto statement in fid_request.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* removed the "else" block instead of goto statement was used and
a commit message has been corrected.
Changes since v2:
* subject heading has been corrected.
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


