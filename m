X-GM-THRID: 4118330474496
X-Received: by 10.194.178.234 with SMTP id db10mr1607735wjc.2.1424987164958;
        Thu, 26 Feb 2015 13:46:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.13 with SMTP id n13ls91927laa.80.gmail; Thu, 26 Feb 2015
 13:46:04 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr1592439lbo.8.1424987164502;
        Thu, 26 Feb 2015 13:46:04 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id el6si3423wib.2.2015.02.26.13.46.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:46:04 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x233.google.com with SMTP id k48so15085649wev.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 13:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=0mGb/sXUKjjuyo876z11H1OGgz0oHwTyIsK6cE7m53o=;
        b=gaeNVYHjNXAxxHxBTq9x2NLMZW1o1WHiupc/AhaefFPzfEFzUFGVSGLqOXiXY7JHL2
         UWLd2TZtaApyZD/vEITipyAoPfZvOp3mIfv+cnIz4iplzVHw4FwVEm0YdOyJN4pCisw2
         JmtJym0cYZDB4fQerxXdnPl1R80L5uI1uo6vKac24rIPXFdz6ZxAuYFCFfnlBpvrg192
         reLcfaO6ctSJsopDEEOO2MSiz/exNHX915v+pSYQvcmer8yWYF1yMDte3iYWdYchReYS
         HdeQFSdvAxx1hbc10qMV+156ewtn/eFKVfZasplUcnT7oHCKkT4L+2PraZjxsMFNxvLb
         86fg==
X-Received: by 10.194.88.131 with SMTP id bg3mr21391442wjb.119.1424987164415;
        Thu, 26 Feb 2015 13:46:04 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id kr5sm3215269wjc.1.2015.02.26.13.46.02
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Feb 2015 13:46:03 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v3 3/5] Staging: lustre: Corrected code indentation
Date: Thu, 26 Feb 2015 23:45:46 +0200
Message-Id: <1424987148-4033-3-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424987148-4033-1-git-send-email-aybuke.147@gmail.com>
References: <1424987148-4033-1-git-send-email-aybuke.147@gmail.com>

This patch fixes these warning messages found by checkpatch.pl:
WARNING: suspect code indent for conditional statements(8,15)

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* changed the description
Changes since v2:
There is no change in the set of incorrect file was removed.
---
 drivers/staging/lustre/lustre/llite/file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index d14fc9c..247b4f0 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -2822,7 +2822,7 @@ int ll_have_md_lock(struct inode *inode, __u64 *bits,  ldlm_mode_t l_req_mode)
 	int i;
 
 	if (!inode)
-	       return 0;
+		return 0;
 
 	fid = &ll_i2info(inode)->lli_fid;
 	CDEBUG(D_INFO, "trying to match res "DFID" mode %s\n", PFID(fid),
-- 
1.9.1


