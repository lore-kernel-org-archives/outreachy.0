X-GM-THRID: 9883922464768
X-Received: by 10.52.90.11 with SMTP id bs11mr13219527vdb.8.1427328252714;
        Wed, 25 Mar 2015 17:04:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.129 with SMTP id u1ls500843qge.13.gmail; Wed, 25 Mar
 2015 17:04:12 -0700 (PDT)
X-Received: by 10.236.2.227 with SMTP id 63mr13215314yhf.12.1427328252551;
        Wed, 25 Mar 2015 17:04:12 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id kt5si515229qcb.3.2015.03.25.17.04.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 17:04:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id p97so71386092qge.1
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 17:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=sAUbjCN21o+/H+JZ3YTGGC9r57hMrXsWKn5MMmLg3mo=;
        b=qMfDWSmnTxqwRpgdjKZWuTQ5I1fbXbBvy2OVpYTzFU79zV+s2cZYC7P2LimCROYSls
         USXAyVcSl3yGyF0SCcI2/a/nPKIW3rMpEYO6g3eF4QXqqWD7Ez+LaKCwWilemdy91Z/3
         lCDVFrOg/Qa+dE3Njoz49vLwf9R/gBVJLOIQ4tOTAbvkry+HjpRWKrc+dC0D7SpfNbJ5
         GY0OZUvNTfW53Si6QOAkP13RWkbGW/5XfZ/mjfs/hhHFI25mBreJz//PTeUCplmpgIzj
         FDjJyh6EDC4tQHH9Uh9rKjlUliRTg/Hgcd+6GGreOqx3JN975Po4WJ6qptK2nlG1lspr
         6sCg==
X-Received: by 10.55.49.197 with SMTP id x188mr23691199qkx.49.1427328252446;
        Wed, 25 Mar 2015 17:04:12 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.linksys.com ([179.159.91.9])
        by mx.google.com with ESMTPSA id 10sm2484187qhe.29.2015.03.25.17.04.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Mar 2015 17:04:12 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH] block: Use kcalloc instead of kzalloc to initialize array
Date: Wed, 25 Mar 2015 21:04:03 -0300
Message-Id: <1427328243-6391-1-git-send-email-helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl warning:

WARNING: Prefer kcalloc over kzalloc with multiply
+       bio_slabs = kzalloc(bio_slab_max * sizeof(struct bio_slab), GFP_KERNEL);

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 block/bio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/block/bio.c b/block/bio.c
index f66a4ea..7495017 100644
--- a/block/bio.c
+++ b/block/bio.c
@@ -2051,7 +2051,7 @@ static int __init init_bio(void)
 {
 	bio_slab_max = 2;
 	bio_slab_nr = 0;
-	bio_slabs = kzalloc(bio_slab_max * sizeof(struct bio_slab), GFP_KERNEL);
+	bio_slabs = kcalloc(bio_slab_max, sizeof(struct bio_slab), GFP_KERNEL);
 	if (!bio_slabs)
 		panic("bio: can't allocate bios\n");
 
-- 
1.9.1


