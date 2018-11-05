X-GM-THRID: 6620347424824098816
X-Received: by 2002:a67:8e03:: with SMTP id q3mr3188335vsd.31.1541419752138;
        Mon, 05 Nov 2018 04:09:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:2d54:: with SMTP id t81ls1994410vkt.4.gmail; Mon, 05 Nov
 2018 04:09:11 -0800 (PST)
X-Google-Smtp-Source: AJdET5dv/8nh2F8B537QWH3+5yIz5r5KgekyjVQ3kgm7DfPkyweQo+/kqkPAd1+vW9Y1BDdS91DX
X-Received: by 2002:a1f:980b:: with SMTP id a11mr19765676vke.15.1541419751350;
        Mon, 05 Nov 2018 04:09:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541419751; cv=none;
        d=google.com; s=arc-20160816;
        b=lAwJXRoWmzVoHbJNMIIBo3gkVvtG65RR3YvR2Qo0SGhPPJWuRFDB6x7vIKvaPdeivv
         1iZFeat+blk5jkx4P/pWS3DmrP/9icpQSrkQ9KF8t0dD+AL9Lk7A9ueefF+8JP6mSL6a
         DFEkbJVJah9mXDErXP2irreTmwgZJ5ykJVmZoQpSL0kU7RjiTY3rkKCEH+mz0Onv0qWc
         KTP57iMlB300IwhSRTcwYkEU9l7A28RKJV7p3AHV6KklX0yGuLpaMqRl1oo/ojgqmydP
         fZcEI6W9kkgrucKczfuOrirec2oxq3lBX3N8T8CTkhoduKxbDJS3di8IuVHI8wgps/um
         pCUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ROt8RW2W/OceQ/L46KB/mS4KoBdVa1cQt+JPagJbb/8=;
        b=oZE51p33a2bIsa+cTD0lsnEaVMJgLdIuPLpJAWykLzMjU0E/T5ERxBcLxnrygnIkTc
         lZP3H/pgQbeLwpz4SBkyscMzjIKErrHoGcekJIuY+1ks7sYLSYgpDGVKFwatm+9cZ2Tg
         0qfyajkASHJPEMfF5zuukbIG5cTi+rFF6jhjSlP41NipjcuKoyk9JzrcGf7YBU2rkysT
         cWXBrSBLNAcOU45lqHli3/lj8ZGhF97fTgE+U3EIOSSw0NM2FKVYE+4tUJViTaKQi2dF
         iaxnivpAjET/uxR/neKeZFU5In9NK1zSOeCiZGXsvTCISw7g31PlFwoUoeDFWW3LUKRd
         gx6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EHrZ8FTM;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id 67si925463uas.1.2018.11.05.04.09.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 04:09:11 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EHrZ8FTM;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52a.google.com with SMTP id z17-v6so4161558pgv.3
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 04:09:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ROt8RW2W/OceQ/L46KB/mS4KoBdVa1cQt+JPagJbb/8=;
        b=EHrZ8FTMqCwV8Nky400IP7CnvjxCs5K4ozvlYFnHx/IksZgW+s18MKNKlO1l60n9wk
         rs3XJB9IyemYKXfFW7xQiEOUN3MEeLqqhQegiAvtQUxK1RKjO8VfhHe8qGWa3vSVjsAP
         lJ/GwZiqWVbJKR/4Kv+kG2Ubwd36Oio85Yu109LQZrpXibvHmt0P0l6YBc2zuj9p3pmJ
         fz4gpSBjzoA9sKQGKguQfqG8SJ2OuGijvo/sxwYBZsC5m0lccrIMSP1LqXNDgDOt6edX
         yji9qBWaqqcHdR5Eskvp0lorZGNDUcFp5gAkpwmQRhi4ZauZc3igy8APMLFPioWzCt1j
         AW5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ROt8RW2W/OceQ/L46KB/mS4KoBdVa1cQt+JPagJbb/8=;
        b=al7p88pVcbQpVrAaGqvzHGEUxoRjaG/wJA+bfpkWalNd1+XbfTBGUl/bM3dCg3MONG
         gryhMfEtjikV14yA/JVC9ex3K9KS7FICfURJYmOLM/BOYtLkuu/kdwKvgHYrgfx8Nbvf
         ZFfNipnimV2FM1jhQUXL+3WhJce5VRY03UG4ScwJFBlaFGlQKhN2fYqRUmp4MbcJi2dI
         YxctgseqpIZ8F6uzV5ich/tOGBd1R2VY2hwALDyWVY0QE8U2H4ftOUyAp3FRceryuTCv
         G58CM+MgYOb3j1J4UnzwMGQiSg3NQH/JjWp6wuJzVEI1h7qvsOOwPLPFKY5Mes4Twqa1
         3JEw==
X-Gm-Message-State: AGRZ1gIseZ4E70bgn5WcbeeXXiDV486inVCMnT3LMPrjlfKAbH5jkNrJ
	Tyi1EYCTjscbAYaNNhzixbHn3lgnvLDjZYIUuqw=
X-Received: by 2002:a65:5286:: with SMTP id y6mr17756163pgp.439.1541419750661;
        Mon, 05 Nov 2018 04:09:10 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from dev ([12.97.16.194])
        by smtp.gmail.com with ESMTPSA id r18-v6sm41243356pgv.17.2018.11.05.04.09.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Nov 2018 04:09:10 -0800 (PST)
Date: Mon, 5 Nov 2018 12:09:09 +0000
From: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	linux-erofs@lists.ozlabs.org
Subject: [PATCH v3 1/2] staging: erofs: Modify coding style alignments
Message-ID: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541414957.git.digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix coding style alignment issues detected by checkpatch.pl
Matched alignments with parenthesis.

Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/erofs/data.c | 51 ++++++++++++++++++------------------
 1 file changed, 26 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
index 6384f73e5418..b66191ad44aa 100644
--- a/drivers/staging/erofs/data.c
+++ b/drivers/staging/erofs/data.c
@@ -40,7 +40,7 @@ static inline void read_endio(struct bio *bio)
 
 /* prio -- true is used for dir */
 struct page *__erofs_get_meta_page(struct super_block *sb,
-	erofs_blk_t blkaddr, bool prio, bool nofail)
+				   erofs_blk_t blkaddr, bool prio, bool nofail)
 {
 	struct inode *const bd_inode = sb->s_bdev->bd_inode;
 	struct address_space *const mapping = bd_inode->i_mapping;
@@ -76,7 +76,7 @@ struct page *__erofs_get_meta_page(struct super_block *sb,
 		}
 
 		__submit_bio(bio, REQ_OP_READ,
-			REQ_META | (prio ? REQ_PRIO : 0));
+			     REQ_META | (prio ? REQ_PRIO : 0));
 
 		lock_page(page);
 
@@ -107,8 +107,8 @@ struct page *__erofs_get_meta_page(struct super_block *sb,
 }
 
 static int erofs_map_blocks_flatmode(struct inode *inode,
-	struct erofs_map_blocks *map,
-	int flags)
+				     struct erofs_map_blocks *map,
+				     int flags)
 {
 	int err = 0;
 	erofs_blk_t nblocks, lastblk;
@@ -151,7 +151,7 @@ static int erofs_map_blocks_flatmode(struct inode *inode,
 		map->m_flags |= EROFS_MAP_META;
 	} else {
 		errln("internal error @ nid: %llu (size %llu), m_la 0x%llx",
-			vi->nid, inode->i_size, map->m_la);
+		      vi->nid, inode->i_size, map->m_la);
 		DBG_BUGON(1);
 		err = -EIO;
 		goto err_out;
@@ -167,12 +167,13 @@ static int erofs_map_blocks_flatmode(struct inode *inode,
 
 #ifdef CONFIG_EROFS_FS_ZIP
 extern int z_erofs_map_blocks_iter(struct inode *,
-	struct erofs_map_blocks *, struct page **, int);
+				   struct erofs_map_blocks *,
+				   struct page **, int);
 #endif
 
 int erofs_map_blocks_iter(struct inode *inode,
-	struct erofs_map_blocks *map,
-	struct page **mpage_ret, int flags)
+			  struct erofs_map_blocks *map,
+			  struct page **mpage_ret, int flags)
 {
 	/* by default, reading raw data never use erofs_map_blocks_iter */
 	if (unlikely(!is_inode_layout_compression(inode))) {
@@ -192,7 +193,7 @@ int erofs_map_blocks_iter(struct inode *inode,
 }
 
 int erofs_map_blocks(struct inode *inode,
-	struct erofs_map_blocks *map, int flags)
+		     struct erofs_map_blocks *map, int flags)
 {
 	if (unlikely(is_inode_layout_compression(inode))) {
 		struct page *mpage = NULL;
@@ -206,13 +207,12 @@ int erofs_map_blocks(struct inode *inode,
 	return erofs_map_blocks_flatmode(inode, map, flags);
 }
 
-static inline struct bio *erofs_read_raw_page(
-	struct bio *bio,
-	struct address_space *mapping,
-	struct page *page,
-	erofs_off_t *last_block,
-	unsigned int nblocks,
-	bool ra)
+static inline struct bio *erofs_read_raw_page(struct bio *bio,
+					      struct address_space *mapping,
+					      struct page *page,
+					      erofs_off_t *last_block,
+					      unsigned int nblocks,
+					      bool ra)
 {
 	struct inode *inode = mapping->host;
 	erofs_off_t current_block = (erofs_off_t)page->index;
@@ -233,8 +233,8 @@ static inline struct bio *erofs_read_raw_page(
 
 	/* note that for readpage case, bio also equals to NULL */
 	if (bio != NULL &&
-		/* not continuous */
-		*last_block + 1 != current_block) {
+	    /* not continuous */
+	    *last_block + 1 != current_block) {
 submit_bio_retry:
 		__submit_bio(bio, REQ_OP_READ, 0);
 		bio = NULL;
@@ -307,7 +307,7 @@ static inline struct bio *erofs_read_raw_page(
 			nblocks = BIO_MAX_PAGES;
 
 		bio = erofs_grab_bio(inode->i_sb,
-			blknr, nblocks, read_endio, false);
+				     blknr, nblocks, read_endio, false);
 
 		if (IS_ERR(bio)) {
 			err = PTR_ERR(bio);
@@ -361,7 +361,7 @@ static int erofs_raw_access_readpage(struct file *file, struct page *page)
 	trace_erofs_readpage(page, true);
 
 	bio = erofs_read_raw_page(NULL, page->mapping,
-		page, &last_block, 1, false);
+				  page, &last_block, 1, false);
 
 	if (IS_ERR(bio))
 		return PTR_ERR(bio);
@@ -371,8 +371,9 @@ static int erofs_raw_access_readpage(struct file *file, struct page *page)
 }
 
 static int erofs_raw_access_readpages(struct file *filp,
-	struct address_space *mapping,
-	struct list_head *pages, unsigned int nr_pages)
+				      struct address_space *mapping,
+				      struct list_head *pages,
+				      unsigned int nr_pages)
 {
 	erofs_off_t last_block;
 	struct bio *bio = NULL;
@@ -389,13 +390,13 @@ static int erofs_raw_access_readpages(struct file *filp,
 
 		if (!add_to_page_cache_lru(page, mapping, page->index, gfp)) {
 			bio = erofs_read_raw_page(bio, mapping, page,
-				&last_block, nr_pages, true);
+						  &last_block, nr_pages, true);
 
 			/* all the page errors are ignored when readahead */
 			if (IS_ERR(bio)) {
 				pr_err("%s, readahead error at page %lu of nid %llu\n",
-					__func__, page->index,
-					EROFS_V(mapping->host)->nid);
+				       __func__, page->index,
+				       EROFS_V(mapping->host)->nid);
 
 				bio = NULL;
 			}
-- 
2.19.1


