X-GM-THRID: 5549458456576
X-Received: by 10.112.131.106 with SMTP id ol10mr3344339lbb.20.1425242394643;
        Sun, 01 Mar 2015 12:39:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.134 with SMTP id ky6ls346576lac.76.gmail; Sun, 01 Mar
 2015 12:39:54 -0800 (PST)
X-Received: by 10.112.9.65 with SMTP id x1mr3345108lba.16.1425242394121;
        Sun, 01 Mar 2015 12:39:54 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id r6si547166wix.0.2015.03.01.12.39.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 12:39:54 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id h11so10638277wiw.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 12:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=6QlTB/IS6cGCaQWjIKIMtu445j/HApq+oeEuxQGCJjg=;
        b=rIZpgVR5OFYkiwAZpkz+NIe23b2X1nyPEpAocPTp/EOSR1F23R7uAwebUIe//J2URN
         7mBxxwvbBgXsjLFWsGUCLSqOyEY6xx/x03X1rhx6GWjObVr7xI5V87VrCmKUv5RjAdqW
         NuULlhoVeGLYyPCd5PZXr/gpvIkyQJ9dr+1pfAT3IZdnk/7s3KVd5Ckl2TVmzd6Dt0Ry
         oMoEpcenmYDBdFFVEwEGihbEwUW7d4lus8fuohPWzMyrubokn51izZGK/9zh1xFwSVrs
         EFoAFXTGLFaGPON5vya0YXcTcD458ky2EKkCwxJyu0P7n6Oy/tq7yO27okj96xy8aDrm
         0FZQ==
X-Received: by 10.180.76.45 with SMTP id h13mr28224886wiw.51.1425242394036;
        Sun, 01 Mar 2015 12:39:54 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id pp10sm16194525wjc.31.2015.03.01.12.39.52
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Mar 2015 12:39:53 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Fix assignment in if condition checkpatch error
Date: Sun,  1 Mar 2015 22:39:47 +0200
Message-Id: <1425242387-10440-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl error assignment in if condition and assign variable
before if condition.

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/include/linux/libcfs/libcfs_fail.h | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_fail.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_fail.h
index eea55d9..ae6901b 100644
--- a/drivers/staging/lustre/include/linux/libcfs/libcfs_fail.h
+++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_fail.h
@@ -77,10 +77,9 @@ enum {
 static inline int cfs_fail_check_set(__u32 id, __u32 value,
 				     int set, int quiet)
 {
-	int ret = 0;
+	int ret = __cfs_fail_check_set(id, value, set);
 
-	if (unlikely(CFS_FAIL_PRECHECK(id) &&
-		     (ret = __cfs_fail_check_set(id, value, set)))) {
+	if (unlikely(CFS_FAIL_PRECHECK(id) && ret)) {
 		if (quiet) {
 			CDEBUG(D_INFO, "*** cfs_fail_loc=%x, val=%u***\n",
 			       id, value);
-- 
1.9.1


