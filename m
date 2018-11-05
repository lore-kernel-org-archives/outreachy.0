X-GM-THRID: 6620347424824098816
X-Received: by 2002:ac8:26cb:: with SMTP id 11mr4047406qtp.34.1541447321950;
        Mon, 05 Nov 2018 11:48:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:bd9d:: with SMTP id n29ls2621452qvg.7.gmail; Mon, 05 Nov
 2018 11:48:41 -0800 (PST)
X-Google-Smtp-Source: AJdET5dIWsI686eyCo9qa6akm5A0UmVkkK81X3fDVq+dLsqk+wx1KdwZNIGbYw99amhFRclhKg+i
X-Received: by 2002:a0c:b897:: with SMTP id y23mr17983899qvf.25.1541447321407;
        Mon, 05 Nov 2018 11:48:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541447321; cv=none;
        d=google.com; s=arc-20160816;
        b=EZ6ri/971rTaIPGjOvh6bOuh3Bra5GYniCoMQmwEvjYv0RJPGXCvlnkrNbEqwvjuy/
         CRiHsR+lyVTHg4IQ91OILe36jPta9ap3mccu6Ps5WsB7Gzm4PNAide6A4IPmTG/lBiHp
         xiSuGPHh5J6Omgj6sxwzlDh+slCx2nWQL9dLcF6/70KKfc8rOsdGh71XMQu4sFnflzJb
         6JmlavTEeHFwmY1ToD/RMoiVOn2C+pXtE3igwd1U2uKVazuHWwQHH76vp1lLHUTiM/Xb
         +hyNvQoP8duEYVeDIUmmZKsPxl1K8/6Et93B41xH30frnD68H13W2Gj1q5c1yhMFJyoK
         xkHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ZgjZvupXWfVEowfilBK6d3ZfcN2rpEjlrlNcZ4fdUgY=;
        b=Hu8tG37sOVIItlGmR5qNmrYNPvCZMcGiqOuYYtiuStA8JwvwBDOXTamqAbnSoesFvq
         Kns8gC63nHdEHJnmWrieYEpDvb5UHtPaTd+XlBW0vK3cJ9AGtmbHtk6gx0tVPQheSLVq
         6Fr345WuMpA3Dn4AfBWLA0Xc2k8AhPJcYJLtLD/NgM0IB2Yyp7GTSEVNNkDR9vn8eMdD
         O9pnqT1ukh9R8+yh/TlK/fZwpiTgDeVKJiqfMSYuvPq7o12taE28OFINqxMkwFzDlghD
         m/SOOnVTlWJDseHWAbrJDCP4HRImC52wlEtSrdK7Lkuy+I5cmp77C/+jccaJ+0V3WD42
         TD3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="eVra0H+/";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id k8-v6si2206413qkg.3.2018.11.05.11.48.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 11:48:41 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="eVra0H+/";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id c10-v6so4694582pgq.4
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 11:48:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZgjZvupXWfVEowfilBK6d3ZfcN2rpEjlrlNcZ4fdUgY=;
        b=eVra0H+/UIk9xBtWnmwHRCk3nPm/F+9+hYaKv0cq/j1hZlRonizKtIDipklYlCHhqv
         nsSvzDUQbBK5kroZTjpjX64jUPNtWcedYwNVcUk32yNxYh4igdQOD19wG7RqXg5hZnyZ
         7I+O1jd3m9rQLtkNclXk2kXzffMbUuRunFBUbKnFfKQemsTNrFzOytsdNebbrx9MHjmN
         o7ThVilex2JWfsi8kNWEX93f+OMJdjEoHG64Ajl3STwn3hGweyYXAQYjmZOyan+0JknY
         2wipHGSdUWaavTKlsKNnza66BHTCjF/yk0SOFAEXd0V9g76XbG17xj2Y6YDjN64aDHwT
         Is2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZgjZvupXWfVEowfilBK6d3ZfcN2rpEjlrlNcZ4fdUgY=;
        b=rhmcmlooHYIO2D6xx746/M2bR+4cSD0sfHG04slR0O5psOvdb9W2dYKr8n2qob2li5
         rOtsNyB9At+dN9czkTGGyNGTJNt0H7Xxk2iA4SEKrQvlrQQmLU22RlYg/SRHPcbkKAo2
         YpQcRFu6fOd50sDzIBrOXt22/ShA3L3ePVIJNHvl+3TI+RsnNKxSesKvgOPyJKhRsq3+
         GwdYjJIxyzoQcQ8ddeV8cls39dyOjkQ+LuyMFcrJPDrJqapHxWL6/4OAnK6pYlugYmix
         hchpf7d2pNJxzj/aMx29Z/thZIv9ZIxC5S+38IqxFq3CumFw1VSs42PJMoD2LEzS5TiH
         E7pA==
X-Gm-Message-State: AGRZ1gJT2LmiiTJHVAbeYUIQQFxrtZx+SWe9QgSWn0jKZjOMyr0kGXQb
	9blUkQ5iNsTpBZBMmgY6croujelQx1HCnkIP
X-Received: by 2002:a63:5ec6:: with SMTP id s189mr20394031pgb.357.1541447320217;
        Mon, 05 Nov 2018 11:48:40 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from dev ([12.97.16.194])
        by smtp.gmail.com with ESMTPSA id i189-v6sm8145663pfc.16.2018.11.05.11.48.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Nov 2018 11:48:39 -0800 (PST)
Date: Mon, 5 Nov 2018 19:48:38 +0000
From: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	linux-erofs@lists.ozlabs.org
Subject: [PATCH v5 1/2] staging: erofs: Modify coding style alignments
Message-ID: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541446384.git.digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix coding style alignment issues detected by checkpatch.pl
Matched alignments with parenthesis.

Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>
---
Changes in v5:
- Add reviewer.

Changes in v4:
- Add changelog messages for patch versions.

Changes in v3:
- Split patch in two patches. Each patch have similar
  kind of changes. One patch for all alignment fixes and 
    second patch for all conditional check fixes.

Changes in v2:
- Change for one alignment issue and one conditional check issue.

Changes in v1:
- Change for all issues in data.c detected by checkpatch.pl

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


