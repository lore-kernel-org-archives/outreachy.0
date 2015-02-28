X-GM-THRID: 5127900495872
X-Received: by 10.112.167.98 with SMTP id zn2mr2663622lbb.6.1425133689790;
        Sat, 28 Feb 2015 06:28:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.68 with SMTP id k4ls300941lam.53.gmail; Sat, 28 Feb
 2015 06:28:09 -0800 (PST)
X-Received: by 10.112.40.81 with SMTP id v17mr2716417lbk.5.1425133689394;
        Sat, 28 Feb 2015 06:28:09 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id ev8si303229wib.3.2015.02.28.06.28.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 06:28:09 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wiwl15 with SMTP id l15so5940322wiw.3
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 06:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=iELN7d40XUoQ+ZrMStXdGh/CjMleTMYvY1iPwnucT3M=;
        b=ttnpfXOnerDDvcHdlJdXAwN4x4ZG7aHi9tpVI6HBP2RlyiZOQK/79maQf/ZKS8/e13
         AW5i8D0GNVHqvS0drDhxp8+Q6fWQmYWIMGenYlk9jG0jxPioVU+CiT4OE9Ds6rrO2j3d
         pRQ3OI4gA0vts6/7h0dyPThXktoNHTfrWXj9Rj5yPoBubdqR08Kzl37yGR3uHbp2SEXk
         JZ5TwsQ32EmZQsfogIYs71HQ6l20XcuJBBqy6Raody0T2jhiaU8K7nkW7Q8i5UIRGdOH
         Vci/rmNboNi+Froo625j55zLoHpBxCWTJSp9DhnY12T6PoOUOftM6qvQwAfI3ehinkri
         VYDA==
X-Received: by 10.180.8.65 with SMTP id p1mr17253309wia.42.1425133689292;
        Sat, 28 Feb 2015 06:28:09 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id s5sm7851875wia.1.2015.02.28.06.28.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 06:28:08 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: __aligned(size) is preferred over __attribute__((aligned(size)))
Date: Sat, 28 Feb 2015 16:28:01 +0200
Message-Id: <1425133681-4841-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning in the drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h
index f19a121..4688770 100644
--- a/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h
+++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h
@@ -58,7 +58,7 @@ struct kuc_hdr {
 	__u8  kuc_flags;
 	__u16 kuc_msgtype;    /* Message type or opcode, transport-specific */
 	__u16 kuc_msglen;     /* Including header */
-} __attribute__((aligned(sizeof(__u64))));
+} __aligned(sizeof(__u64));
 
 #define KUC_CHANGELOG_MSG_MAXSIZE (sizeof(struct kuc_hdr)+CR_MAXSIZE)
 
-- 
1.9.1


