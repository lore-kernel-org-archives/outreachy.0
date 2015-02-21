X-GM-THRID: 1888775831552
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5e28edf932a9a915
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.45.197 with SMTP id p5mr345851lbm.18.1424531175302;
        Sat, 21 Feb 2015 07:06:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.132 with SMTP id q4ls84752laj.26.gmail; Sat, 21 Feb
 2015 07:06:14 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr331868lab.0.1424531174902;
        Sat, 21 Feb 2015 07:06:14 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id l8si517708wia.0.2015.02.21.07.06.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 07:06:14 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f44.google.com with SMTP id k14so18151788wgh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 07:06:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=kdcQqLhN8tArIVfMamLFSbjEvaboFXtzDbKGFuSbyHQ=;
        b=pBE7jyMfNFEJU+uwWojohxNCJ0/CzSu/URNjILGMmJjD0WBBx1XfMVd4iH5oI78plV
         pte1Goh7iN+LQgAJTt1r7WGvJ/1jK0f1GosNAmL/imlj9Q8PIuRrG6eymfD5ThNejdiU
         JX1oGMjsFwgQIiktw2n8IUcIFWITXs894ZbYrsjTMiFEeLFNSqPp9OBTUNsAo78UXIaZ
         NJ6bqkzKtTGPo2s6+Ezp8D/uOp5UYm5pNVuKU7u1qvFopXt6n9Ezzj5fHdfcYr6YGo1C
         D/tZJUWZj5i6GEFJHLHPXc1WeDeuBSHaxKJuLu5l/IlnrSJL/FGwXATdECHSaL4v/X15
         j/EQ==
X-Received: by 10.180.221.201 with SMTP id qg9mr4585919wic.5.1424531174809;
        Sat, 21 Feb 2015 07:06:14 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([78.190.92.185])
        by mx.google.com with ESMTPSA id jg3sm7319141wid.0.2015.02.21.07.06.12
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:06:14 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 4/4] Staging: lustre: Remove unnecessary else after return
Date: Sat, 21 Feb 2015 17:05:14 +0200
Message-Id: <1424531114-12823-4-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1424531114-12823-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1424531114-12823-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING : else is not generally useful after a break or return
Remove unnecessary else after return.That was found by running checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/router.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
index 69b7f12..dded50f 100644
--- a/drivers/staging/lustre/lnet/lnet/router.c
+++ b/drivers/staging/lustre/lnet/lnet/router.c
@@ -355,11 +355,10 @@ lnet_add_route(__u32 net, unsigned int hops, lnet_nid_t gateway,
 
 		if (rc == -EHOSTUNREACH) { /* gateway is not on a local net */
 			return 0;	/* ignore the route entry */
-		} else {
-			CERROR("Error %d creating route %s %d %s\n", rc,
-			       libcfs_net2str(net), hops,
-			       libcfs_nid2str(gateway));
 		}
+		CERROR("Error %d creating route %s %d %s\n", rc,
+		       libcfs_net2str(net), hops,
+		       libcfs_nid2str(gateway));
 		return rc;
 	}
 
-- 
1.8.3.2


