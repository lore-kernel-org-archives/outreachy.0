X-GM-THRID: 1726977409024
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3c6e687e9bd2e98
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.161.9 with SMTP id xo9mr266535lbb.7.1424519094733;
        Sat, 21 Feb 2015 03:44:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.184.134 with SMTP id eu6ls256048wic.50.canary; Sat, 21 Feb
 2015 03:44:54 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr223024wib.5.1424519094441;
        Sat, 21 Feb 2015 03:44:54 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id ev8si278811wib.3.2015.02.21.03.44.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 03:44:54 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f178.google.com with SMTP id em10so7821680wid.5
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 03:44:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vcnbenZXdAxK3L7+ZJ2Qcb+djEGWXiPR5wCBezeO0ac=;
        b=lA56p8om9223ikv1agbNLeZx4xfvCF0nr0D+4wSkDlS2V1e06Hi12fc15yiq4iiUXy
         088nXs/UGBgMyNAXLhby4Q8GlYoza+JIIRnbrqaRMFv0t5GlNhbfFq+LRFq3Du73T7cs
         iBofSzqtGM+n1Ykdrsa937wiz+vsXuj2FZyv9WANywlPDAOOzMlcf3mNaOJx6chjlreo
         E7UN6by0SnGc3/uMGfe01qpKxTV5IdXcRG2t05zAXFfA1TZNuYfo2811HlCbkr9iKdeg
         rG8MhTrPtj/oNwuLYyB+JuhHxdxy0fbohMVhqjMe/EsMWA6nZvxBmBOHi4cQv6RUmvBo
         REaQ==
X-Received: by 10.180.103.40 with SMTP id ft8mr3478175wib.68.1424519094368;
        Sat, 21 Feb 2015 03:44:54 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id ee10sm11061487wib.0.2015.02.21.03.44.52
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 03:44:53 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 4/5] Staging: lustre: Added spaces around '='
Date: Sat, 21 Feb 2015 13:44:34 +0200
Message-Id: <1424519075-4378-4-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424519075-4378-1-git-send-email-aybuke.147@gmail.com>
References: <1424519075-4378-1-git-send-email-aybuke.147@gmail.com>

This patch fixes "spaces required around that '=' (ctx:VxV)"
checkpatch.pl error in file.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index 9a7ab65..2dd6a8d 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -270,7 +270,7 @@ static int ll_md_close(struct obd_export *md_exp, struct inode *inode,
 	int lockmode;
 	__u64 flags = LDLM_FL_BLOCK_GRANTED | LDLM_FL_TEST_LOCK;
 	struct lustre_handle lockh;
-	ldlm_policy_data_t policy = {.l_inodebits={MDS_INODELOCK_OPEN}};
+	ldlm_policy_data_t policy = {.l_inodebits = {MDS_INODELOCK_OPEN}};
 	int rc = 0;
 
 	/* clear group lock, if present */
-- 
1.9.1


