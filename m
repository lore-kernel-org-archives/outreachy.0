X-GM-THRID: 934491979776
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f49f0748e2ff6394,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.64.171 with SMTP id p11mr834043lbs.12.1424377578558;
        Thu, 19 Feb 2015 12:26:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.199 with SMTP id x7ls214288lae.0.gmail; Thu, 19 Feb
 2015 12:26:18 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr477540lbb.11.1424377578161;
        Thu, 19 Feb 2015 12:26:18 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id cl5si9103202wib.3.2015.02.19.12.26.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 12:26:18 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id hi2so50706845wib.4
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 12:26:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=SS6vzVK5CsLhDo2tL4zIMXkf9VDeYoe/nEwm4PUAOLA=;
        b=i0djjof1PNdRkklwBNCh0QB7iH2DVAp7zr1iFSUs2ni7aYMYsIQOG7xcja/k6Fv5Bd
         CtKkujIWgPtCqPLeSQihNfeVNzkjh58ST2JcDXNcu9m2Ry5pUZTJ1akjy2G5BIk+x0WK
         apYPtf8MlELo/6puPVv3y4rRsbRRNoxiQIqDO8TQAG3KBrKVaAc07halL46VOq8q5brV
         jqhOAHA2dGoDUSLUV1GtEi9F6VaOeAdfn1b9Fycdvzgg/oIIWR191aBmqNmPDk7p1KXe
         sY4o0TIhBV9eZWLZEgwuAsvk03sJVAaJY1ySO73qBA55rCdVZ0yi2R/g+0BFPEZa5Kvl
         7lXw==
X-Received: by 10.194.200.233 with SMTP id jv9mr12661341wjc.51.1424377578052;
        Thu, 19 Feb 2015 12:26:18 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id lj13sm35722809wic.9.2015.02.19.12.26.16
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 12:26:17 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: lustre: include: linux: libcfs: Remove spaces at the start of a line
Date: Thu, 19 Feb 2015 22:25:40 +0200
Message-Id: <1424377540-18850-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes checpatch.pl warning
WARNING: please, no spaces at the start of a line

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
index 808e494..4dcae61 100644
--- a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
+++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
@@ -469,7 +469,7 @@ cfs_hash_key(struct cfs_hash *hs, struct hlist_node *hnode)
 static inline void
 cfs_hash_keycpy(struct cfs_hash *hs, struct hlist_node *hnode, void *key)
 {
-        if (hs->hs_ops->hs_keycpy)
+	if (hs->hs_ops->hs_keycpy)
 		hs->hs_ops->hs_keycpy(hnode, key);
 }
 
-- 
1.8.3.2


