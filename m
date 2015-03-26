X-GM-THRID: 9893768593408
X-Received: by 10.140.235.83 with SMTP id g80mr13281453qhc.5.1427328473497;
        Wed, 25 Mar 2015 17:07:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.66 with SMTP id 60ls312065qgg.14.gmail; Wed, 25 Mar
 2015 17:07:53 -0700 (PDT)
X-Received: by 10.140.147.130 with SMTP id 124mr13304304qht.8.1427328473243;
        Wed, 25 Mar 2015 17:07:53 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x22f.google.com (mail-qg0-x22f.google.com. [2607:f8b0:400d:c04::22f])
        by gmr-mx.google.com with ESMTPS id z1si517124qcn.2.2015.03.25.17.07.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 17:07:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) client-ip=2607:f8b0:400d:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22f.google.com with SMTP id a8so67687459qgf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 17:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=uwHKt0BUO6yeELaH4BLvbWG4rNE8NZEsBHMxBLWVHDM=;
        b=m7Miu4M+RJH3ZFnL6OFNh5v3MGYKKJ5Jcjco56/BLxr1vpdZW/LWYo8Ps+Aha5UoHx
         LMNAN1eSxYhx8QRdVRwFqn04iXuc04B1aR4ViqpKI/2BoeOXHXDCU7TupJbim75lrsAH
         cF727ahmTIaZfpKScmX+54c/wUwPZCIRVmYG7xC+wQdy1Kt/ksceFswjPBH5tpIiHxIB
         4n8wYzh1UAdC/RCgctcZEpMGSj+Suf2NAPjnLOVw0pya14ibmQ7X7/0isBLcuwhnyXHp
         NiYPsUjsHoR7Ygvptaeao83QMOy0d9etrX+TT98QWO74gZ3TgjHzu/8xM1MPA2HZAKaX
         43LQ==
X-Received: by 10.140.98.243 with SMTP id o106mr14115115qge.99.1427328473180;
        Wed, 25 Mar 2015 17:07:53 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.linksys.com ([179.159.91.9])
        by mx.google.com with ESMTPSA id h34sm2518197qge.13.2015.03.25.17.07.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Mar 2015 17:07:52 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH] block: remove trailing white space
Date: Wed, 25 Mar 2015 21:07:44 -0300
Message-Id: <1427328464-6485-1-git-send-email-helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1

Clean useless trailing white spaces

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 block/bio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/block/bio.c b/block/bio.c
index 84f55b9..a80e62f 100644
--- a/block/bio.c
+++ b/block/bio.c
@@ -1344,7 +1344,7 @@ struct bio *bio_map_user_iov(struct request_queue *q,
 
 			if (len <= 0)
 				break;
-			
+
 			if (bytes > len)
 				bytes = len;
 
-- 
1.9.1


