X-GM-THRID: 5536407879680
X-Received: by 10.112.126.194 with SMTP id na2mr3364947lbb.18.1425240278287;
        Sun, 01 Mar 2015 12:04:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.231.38 with SMTP id td6ls389385wic.24.gmail; Sun, 01 Mar
 2015 12:04:37 -0800 (PST)
X-Received: by 10.180.13.195 with SMTP id j3mr1699983wic.2.1425240277978;
        Sun, 01 Mar 2015 12:04:37 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x232.google.com (mail-we0-x232.google.com. [2a00:1450:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id el6si537960wib.2.2015.03.01.12.04.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 12:04:37 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) client-ip=2a00:1450:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so29603437wes.7
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 12:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/Vu/Oe7AW31V0B6eWKM51Ac1+n1c+GBzt6OdWsPmMJo=;
        b=Wpz5qZCSpzeOsnW5avJmEzHVszImvEhJ7YEoShszXXB8VXY2TyYoTuhthrc8Js7tH0
         fWWV8J51AfH775uLJu3xZws0SzhftP5FN/lttCXk8IP5DYFs1taRjmKWI/e7z7SR2vHZ
         O3w7rophSfKPJ2w2RqDKv6mexDQQ2X6PJU0+ji0WdYEV0IgWP9SkmWMH0+pnKtsTLYVb
         4NmzcOOc6RNZfBIgkzbBALYldTKf9xgKnxLKGJ2Cy6qZqCSJaJNdwcNE7USylGLr1eyX
         Ofett6LLMGx2qqoLj5zEQQlOsJaVsCJqSv9gN6Oe8GHBJb34Keb9bqTSCZ4UeUbYKZtE
         VkTg==
X-Received: by 10.180.198.211 with SMTP id je19mr20832441wic.37.1425240277890;
        Sun, 01 Mar 2015 12:04:37 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id lu13sm12933907wic.10.2015.03.01.12.04.36
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Mar 2015 12:04:37 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Fix __packed is preferred over __attribute__((packed)) in libcfs_kernelcomm.h
Date: Sun,  1 Mar 2015 22:04:30 +0200
Message-Id: <1425240270-9001-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with  __packed is preferred over __attribute__((packed)) in libcfs_kernelcomm.h

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h
index 4688770..a989d26 100644
--- a/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h
+++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h
@@ -107,7 +107,7 @@ typedef struct lustre_kernelcomm {
 	__u32 lk_group;
 	__u32 lk_data;
 	__u32 lk_flags;
-} __attribute__((packed)) lustre_kernelcomm;
+} __packed lustre_kernelcomm;
 
 /* Userspace methods */
 int libcfs_ukuc_start(lustre_kernelcomm *l, int groups);
-- 
1.9.1


