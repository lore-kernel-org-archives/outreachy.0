X-GM-THRID: 9888705019904
X-Received: by 10.140.147.130 with SMTP id 124mr13296418qht.8.1427328339402;
        Wed, 25 Mar 2015 17:05:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.221 with SMTP id r90ls473510ioi.73.gmail; Wed, 25 Mar
 2015 17:05:39 -0700 (PDT)
X-Received: by 10.68.209.164 with SMTP id mn4mr13144754pbc.8.1427328339148;
        Wed, 25 Mar 2015 17:05:39 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id e5si515854qcg.1.2015.03.25.17.05.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 17:05:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22a.google.com with SMTP id 60so55538503qgf.3
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 17:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=fI7XtCjSX2nkzX/mTvpKiFBOxSpWLYTu+b3i3a/S0qg=;
        b=F91YD1gpo5FWK5N1KR1d22Jb2tdqKc9/ymQCA/TubKeuCz8zUAD/79W2/cnUbQsmnb
         KEC04rSvHwa8l3SKChjdAESTFB1tbg43jNWJ8t/hZzoZPFFFao0Get2zFzsEZSRKzHiI
         ICfWpop1Z8XVp6xMFYLcvNLwo19AY/uc1p8p/Z6i287iExqZnu56eTO9Nl38M3OXXam8
         b13gFs4qPvWNKVUd4vfnxFTQT7SD5jMQH5is64TBLOdDzopk6LwrVL7pTNzXjY6RPGh6
         HEStCKnXmQZmRcrhdpY56gyxWWQ7E1pmRHnqgVhVzOWwfIWH24zdLDSLRpm5zbte6Uz6
         HYVw==
X-Received: by 10.55.55.8 with SMTP id e8mr24499184qka.9.1427328339009;
        Wed, 25 Mar 2015 17:05:39 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.linksys.com ([179.159.91.9])
        by mx.google.com with ESMTPSA id n52sm2494593qge.39.2015.03.25.17.05.37
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Mar 2015 17:05:38 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH] block: Add blank line after variable declarations
Date: Wed, 25 Mar 2015 21:05:29 -0300
Message-Id: <1427328329-6437-1-git-send-email-helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:

WARNING: Missing a blank line after declarations

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 block/bio.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/block/bio.c b/block/bio.c
index 7495017..84f55b9 100644
--- a/block/bio.c
+++ b/block/bio.c
@@ -507,6 +507,7 @@ void zero_fill_bio(struct bio *bio)
 
 	bio_for_each_segment(bv, bio, iter) {
 		char *data = bvec_kmap_irq(&bv, &flags);
+
 		memset(data, 0, bv.bv_len);
 		flush_dcache_page(bv.bv_page);
 		bvec_kunmap_irq(data, &flags);
@@ -726,6 +727,7 @@ static int __bio_add_page(struct request_queue *q, struct bio *bio, struct page
 		if (page == prev->bv_page &&
 		    offset == prev->bv_offset + prev->bv_len) {
 			unsigned int prev_bv_len = prev->bv_len;
+
 			prev->bv_len += len;
 
 			if (q->merge_bvec_fn) {
@@ -1778,6 +1780,7 @@ void bio_endio(struct bio *bio, int error)
 		 */
 		if (bio->bi_end_io == bio_chain_endio) {
 			struct bio *parent = bio->bi_private;
+
 			bio_put(bio);
 			bio = parent;
 		} else {
-- 
1.9.1


