X-GM-THRID: 6122635264000
X-Received: by 10.152.4.229 with SMTP id n5mr4098421lan.1.1425333778448;
        Mon, 02 Mar 2015 14:02:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.104 with SMTP id ln8ls459036lac.94.gmail; Mon, 02 Mar
 2015 14:02:58 -0800 (PST)
X-Received: by 10.112.145.133 with SMTP id su5mr4053990lbb.17.1425333778025;
        Mon, 02 Mar 2015 14:02:58 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id o3si750492wib.2.2015.03.02.14.02.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 14:02:57 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22d.google.com with SMTP id a1so36315941wgh.5
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 14:02:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=dqa8gcklLGsnTvmaf+ck5dZjNlWTzCXORF6Bx33+Eag=;
        b=TZ0ZV6+l0Y3uSTOD1q+UQ+bea6XSeKzVPXv+PiJTkVO2w7x3E7D5EjZDQOKA+LeZGY
         lSwx/NKQCSS0f8DYiF8UAdtV8Hi9+cmUhtarPs5KoJsgY4CmIZ/rHV05ePDOPxFsidwO
         etgDgF6GWTj1IuVVjvCTqXhC0d+1VeARlFT7Ph+xwcfMko/51v71Lt4B4uiHzLisdTNv
         4QBu0oW7EKf1ceq8H+tdmjLtbSIkYQuSzvBMGkIoLRYsVgIB3JDmVKjofT7ONW30T95T
         Xslsc0VLJOL3tjXA62/rFviGMHLh6n8nW2xyiCGrCLGA37+wUSCoLC0O/KKVf/LR3Nyk
         dtJA==
X-Received: by 10.180.108.239 with SMTP id hn15mr39985630wib.38.1425333777924;
        Mon, 02 Mar 2015 14:02:57 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id k1sm21023159wjn.9.2015.03.02.14.02.56
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 14:02:57 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 447BC621FB; Tue,  3 Mar 2015 01:03:01 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v4] Staging: lustre: Remove extern in .c file
Date: Tue,  3 Mar 2015 01:03:00 +0300
Message-Id: <1425333780-14728-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes extern from .c file; for The variable is not used
anywhere else in the file.
Issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v4: remove extern declaration from .h

 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
index d20d277..3d264e9 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
@@ -141,8 +141,6 @@
  */
 #define LDLM_POOL_SLV_SHIFT (10)
 
-extern struct proc_dir_entry *ldlm_ns_proc_dir;
-
 static inline __u64 dru(__u64 val, __u32 shift, int round_up)
 {
 	return (val + (round_up ? (1 << shift) - 1 : 0)) >> shift;
-- 
1.9.1


