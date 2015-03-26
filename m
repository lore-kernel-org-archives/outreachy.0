X-GM-THRID: 9896689926144
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b09eff73c2aabdea,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.229.233 with SMTP id h99mr13255112yhq.42.1427328539193;
        Wed, 25 Mar 2015 17:08:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.80.163 with SMTP id s3ls458765obx.81.gmail; Wed, 25 Mar
 2015 17:08:58 -0700 (PDT)
X-Received: by 10.182.5.104 with SMTP id r8mr13563226obr.19.1427328538980;
        Wed, 25 Mar 2015 17:08:58 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x235.google.com (mail-qg0-x235.google.com. [2607:f8b0:400d:c04::235])
        by gmr-mx.google.com with ESMTPS id z4si519406qcf.0.2015.03.25.17.08.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 17:08:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) client-ip=2607:f8b0:400d:c04::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x235.google.com with SMTP id a8so67453358qgf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 17:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xXxjm0IOIRQpKQrMr3VxPkcNq62yTnsGryz/g6gJEdg=;
        b=Bsozf50PHpBKPAbMnOaKB1MR80eGkrdr9RabXBTIFQ5lT1W6Q5ndyNw4iNr8T/bB8Y
         NLfrTXX3nUJJC5/i4Sa0ZPVCrwTl3B/VSYKrVie8wiK6W3+doo3OUH1aLKGrMXkoDeLb
         JawnHTxoZV7XkwY9YmKErz6ibvnaKju/xP4KRghWtoLWIscCdtLRVmSiBgLg9ybScUc9
         VGZFSEYH2rW3rFppx/nu4y5oCHgyBiJXa+1vSoq3YGBCQjvhKDAoEyeY47oTl0auHsgB
         speRzBRtNIaCLP8w7RybIB9jPqpZv9qSnA6ja9GOh3g4ErTowgY3q9wwrQDyHfDWoTgs
         VcIA==
X-Received: by 10.55.23.82 with SMTP id i79mr24277607qkh.15.1427328538891;
        Wed, 25 Mar 2015 17:08:58 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.linksys.com ([179.159.91.9])
        by mx.google.com with ESMTPSA id 132sm2500529qhd.11.2015.03.25.17.08.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Mar 2015 17:08:58 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH] block: remove space before tabs
Date: Wed, 25 Mar 2015 21:08:50 -0300
Message-Id: <1427328530-6531-1-git-send-email-helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl warning:

WARNING: please, no space before tabs

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 block/bio.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/block/bio.c b/block/bio.c
index a80e62f..745b00a 100644
--- a/block/bio.c
+++ b/block/bio.c
@@ -545,15 +545,15 @@ inline int bio_phys_segments(struct request_queue *q, struct bio *bio)
 EXPORT_SYMBOL(bio_phys_segments);
 
 /**
- * 	__bio_clone_fast - clone a bio that shares the original bio's biovec
- * 	@bio: destination bio
- * 	@bio_src: bio to clone
+ *	__bio_clone_fast - clone a bio that shares the original bio's biovec
+ *	@bio: destination bio
+ *	@bio_src: bio to clone
  *
  *	Clone a &bio. Caller will own the returned bio, but not
  *	the actual data it points to. Reference count of returned
- * 	bio will be one.
+ *	bio will be one.
  *
- * 	Caller must ensure that @bio_src is not freed before @bio.
+ *	Caller must ensure that @bio_src is not freed before @bio.
  */
 void __bio_clone_fast(struct bio *bio, struct bio *bio_src)
 {
@@ -577,7 +577,7 @@ EXPORT_SYMBOL(__bio_clone_fast);
  *	@gfp_mask: allocation priority
  *	@bs: bio_set to allocate from
  *
- * 	Like __bio_clone_fast, only also allocates the returned bio
+ *	Like __bio_clone_fast, only also allocates the returned bio
  */
 struct bio *bio_clone_fast(struct bio *bio, gfp_t gfp_mask, struct bio_set *bs)
 {
@@ -605,8 +605,8 @@ struct bio *bio_clone_fast(struct bio *bio, gfp_t gfp_mask, struct bio_set *bs)
 EXPORT_SYMBOL(bio_clone_fast);
 
 /**
- * 	bio_clone_bioset - clone a bio
- * 	@bio_src: bio to clone
+ *	bio_clone_bioset - clone a bio
+ *	@bio_src: bio to clone
  *	@gfp_mask: allocation priority
  *	@bs: bio_set to allocate from
  *
-- 
1.9.1


