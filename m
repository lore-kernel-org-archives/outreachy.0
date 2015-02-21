X-GM-THRID: 1526974119936
X-Received: by 10.112.160.3 with SMTP id xg3mr332536lbb.5.1424533069922;
        Sat, 21 Feb 2015 07:37:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.193 with SMTP id v1ls367985lag.102.gmail; Sat, 21 Feb
 2015 07:37:49 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr345442lbb.11.1424533069666;
        Sat, 21 Feb 2015 07:37:49 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id ta1si325799wic.1.2015.02.21.07.37.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 07:37:49 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id x3so10577687wes.6
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 07:37:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=nMmu86UvGQ7XTC9pnhkHuVr+aeNQJ8ZmmrAZE1W+zbg=;
        b=RaVBqummJJ131LgfbwG1m1dBzYX11hSiWIbx53XmLGhq5jio+E0ubdzT7JJJFHSEeh
         tkyd0hTSBPVKsYR4txvz0T1w7qtxL9ppJd4qHa1EHO4kxWRvxPx6MluUTRrpR8FBavxN
         U83rfnui8ZSxYt4McNieQ1pVKqYP5FFh4drMb8efzFSOyQBu/lzHfSbxnQ4oPKB7atHu
         ttSHC2wTnD6atqeTcDUn8Tcm12OT/9rB8SwVP8LDfHlC8Ue7QWoHg1z3+FezLS5/UfxX
         ciJd9yIy5FAmMPmDCuLyD6WxMMSTv+dvgaua9YpOlOn2SDsbnMtdbAlg3p31L3ldLxDN
         BFtQ==
X-Received: by 10.180.21.161 with SMTP id w1mr4800670wie.44.1424533069576;
        Sat, 21 Feb 2015 07:37:49 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([78.190.92.185])
        by mx.google.com with ESMTPSA id v16sm7410669wib.5.2015.02.21.07.37.47
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:37:48 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 1/2] Staging: lustre: Deleted space prohibited between function name and open parenthesis
Date: Sat, 21 Feb 2015 17:37:08 +0200
Message-Id: <1424533029-14651-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: space prohibited between function name and open parenthesis '('
Remove unnecessary space between function name and opening parenthesis.
That was found by running checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/lib-ptl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lnet/lnet/lib-ptl.c b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
index 3ba0da9..98318fb 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-ptl.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
@@ -899,7 +899,7 @@ int
 LNetClearLazyPortal(int portal)
 {
 	struct lnet_portal	*ptl;
-	LIST_HEAD		(zombies);
+	LIST_HEAD(zombies);
 
 	if (portal < 0 || portal >= the_lnet.ln_nportals)
 		return -EINVAL;
-- 
1.8.3.2


