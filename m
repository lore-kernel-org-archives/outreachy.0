X-GM-THRID: 1526974119936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7ff0cbb979278efc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.131.106 with SMTP id ol10mr348597lbb.20.1424533074198;
        Sat, 21 Feb 2015 07:37:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.6 with SMTP id iy6ls355880lac.38.gmail; Sat, 21 Feb
 2015 07:37:53 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr343654laj.6.1424533073819;
        Sat, 21 Feb 2015 07:37:53 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id cl5si323877wib.3.2015.02.21.07.37.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 07:37:53 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f49.google.com with SMTP id l18so18169552wgh.8
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 07:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=B8DVa4O/CJWW+6umoEmrR3Hz5FeAAQw6nhpfK43XMPk=;
        b=KsaBHYmAqjBOdV3qWBFEBObybRgI7XOe2FMa75gWtAdBzDRtaRf0MFoF5QnAxAzfbW
         ac5u7QwahlNx/K1qoXKMRSA5lAMjPjyw2FGs4EqLLZEwRfKIqV50ujIAQ+z1UmGJEpaa
         ChGHwEOqkydi+LrkQ7sUlab7rWr/xyF5e5LTrr/qUkNjd0YOYCyA6NMcqwtxM1Ln9Q7a
         0R3It7jgPH5tPu6mst+QcHqGBy3Rx/KSB2FGA3uJYdv1l/jaWZ8EIIRqFPldY/NpfL4b
         zH1WygkUYGa00AVlEa482awMMGQS/t0b5XS9YMdKAoUczApm7we/323zD4Do/yUP000M
         TVZQ==
X-Received: by 10.194.187.236 with SMTP id fv12mr5498649wjc.131.1424533073735;
        Sat, 21 Feb 2015 07:37:53 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([78.190.92.185])
        by mx.google.com with ESMTPSA id v16sm7410669wib.5.2015.02.21.07.37.51
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:37:52 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 2/2] Staging: lustre: Remove unnecessary else after return
Date: Sat, 21 Feb 2015 17:37:09 +0200
Message-Id: <1424533029-14651-2-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1424533029-14651-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1424533029-14651-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: else is not generally useful after a break or return
Remove unnecessary else after return. That was found by running
checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/lib-ptl.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/lib-ptl.c b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
index 98318fb..f6bd808 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-ptl.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
@@ -360,13 +360,12 @@ lnet_mt_match_head(struct lnet_match_table *mtable,
 
 	if (lnet_ptl_is_wildcard(ptl)) {
 		return &mtable->mt_mhash[mbits & LNET_MT_HASH_MASK];
-	} else {
-		unsigned long hash = mbits + id.nid + id.pid;
-
-		LASSERT(lnet_ptl_is_unique(ptl));
-		hash = hash_long(hash, LNET_MT_HASH_BITS);
-		return &mtable->mt_mhash[hash];
 	}
+	unsigned long hash = mbits + id.nid + id.pid;
+
+	LASSERT(lnet_ptl_is_unique(ptl));
+	hash = hash_long(hash, LNET_MT_HASH_BITS);
+	return &mtable->mt_mhash[hash];
 }
 
 int
-- 
1.8.3.2


