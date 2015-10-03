X-GM-THRID: 6201441777566613504
X-Received: by 10.195.12.234 with SMTP id et10mr3681346wjd.2.1443885680422;
        Sat, 03 Oct 2015 08:21:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.41.4 with SMTP id p4ls287439lfp.58.gmail; Sat, 03 Oct 2015
 08:21:19 -0700 (PDT)
X-Received: by 10.112.209.73 with SMTP id mk9mr3656083lbc.14.1443885679834;
        Sat, 03 Oct 2015 08:21:19 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id w4si104937wiz.0.2015.10.03.08.21.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 08:21:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id lk2so63904029wic.1
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 08:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=v51YYFf1IqWGpx5p8sSVXn1oW1fb4K0Zf9WkrUmBsdM=;
        b=D5Fx48jBxt7egzkSF2GxgC28TrqFX5if63LpjJa+17dH2SXvFKj2sbXJTfSaLhgEW+
         8V9QVXcK/rxQ0x25macVm4mLst1QwCsc5apE1q2aC1tZFkHbW6Azi6Tht4ckkqe4nL5B
         1rH+a6d3wMMSnTwO+4Hex/EWjWfyKxnrp9BsptVRNXi2vQxZQsq70YXN5Sxy30gAAzU7
         aZZmtEkroApAaxhfM1vt8AV4xrdl1twFr594pb+ImDziNB5L98bR+rzGFjKJ3NNfKSNl
         qyrKFvZOieFXYpxTa5R7MUeqHPcj6YQaChcyKvkZ6KBp0GZSsi2uDr83gD0sU8QtXqJ2
         VLmQ==
X-Received: by 10.180.107.1 with SMTP id gy1mr3229328wib.56.1443885679700;
        Sat, 03 Oct 2015 08:21:19 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.214])
        by smtp.gmail.com with ESMTPSA id it4sm16962809wjb.0.2015.10.03.08.21.17
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Oct 2015 08:21:19 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: android: Remove kernel-doc typo
Date: Sat,  3 Oct 2015 18:20:47 +0300
Message-Id: <1443885647-52092-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix 'No description found for parameter 'prot_mask'' and 'Excess
struct/union/enum/typedef member 'prot_masks' description in
'ashmem_area'' warnings by removing typo

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/android/ashmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 60200a3..236bfae0 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -43,7 +43,7 @@
  * @unpinned_list:	The list of all ashmem areas
  * @file:		The shmem-based backing file
  * @size:		The size of the mapping, in bytes
- * @prot_masks:		The allowed protection bits, as vm_flags
+ * @prot_mask:		The allowed protection bits, as vm_flags
  *
  * The lifecycle of this structure is from our parent file's open() until
  * its release(). It is also protected by 'ashmem_mutex'
-- 
1.9.1


