X-GM-THRID: 6620347424824098816
X-Received: by 2002:a1f:abd8:: with SMTP id u207mr20285149vke.16.1541429373267;
        Mon, 05 Nov 2018 06:49:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8c85:: with SMTP id o127ls4109960vsd.0.gmail; Mon, 05
 Nov 2018 06:49:32 -0800 (PST)
X-Google-Smtp-Source: AJdET5e1oFjAkFgZhU+wy00uqBPo0ppDpIwNAEXgoX0zBwEvgMr9wsRP9tjKMzZxCa61QJwcl/Bb
X-Received: by 2002:a67:7611:: with SMTP id r17mr18106625vsc.42.1541429372434;
        Mon, 05 Nov 2018 06:49:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541429372; cv=none;
        d=google.com; s=arc-20160816;
        b=vBnoLOaDX4y3xURkzKy1i6wYoaxulqKO16yg15oqJ7pxZLuryd4v49E1aFVprgsCsF
         B93Ix5IQzo6FCN/WS939U8bIUFXIAGcFTIGz2DfNRYoO/6GvydgqGiozEZ/tO4rV/tzT
         tk4BjFn3wPkHexMWgWglMkS7W1qlmjIHWA+/G0Bh1cZM1THDMIVmG4hoSa8efYWy7yBY
         jYVIH4J2BxqNZDG5esP5vTq3uEG6r3awE8hEwx/8lysov8thh9p/+PDZSZZhU76pTTRC
         NuHVR+f5qEAzb+y6rTYDpp8rpMnm8yZ5sD3VPSNVXqzO6OtQWE5cYb3ThCPMhGam19lu
         8W3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=7noPQ7rbJnjEzqmjwakpKQiV1W0+j8LQY5/PsJJXzIA=;
        b=icljYyB5pBR7nOJQajMKRbMvs7K4zG4MESGMUVxYHUgJkGlsSDNTon2CTrF3vEHWkZ
         5wzsYH0lmyxzyenzbLbPYJk6McXCe6yUK/7eDsChuQvx/LjC/f9kbr+ybaT1S8HRTbd/
         ylYa96INMbe3mVavVmg5YxDhzHgVOhn8AQ4xaJuvIc2UminhzKoo2kUa2og1paQ7filH
         VD4QwyKMvVxnPANX5/pdCMO1pSS4TVOLwVyyIYn/oD4gmBqPmI45EeR0AN/tRkyZOT9e
         BxNEOdzy8kEA1mjXoJ9kiLbhTrZzef9aWkuX+eFm0GvhLWtvhS7YCkmuXt1yafHejv+O
         /n0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="A3jRnBF/";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id w9si2804419uac.0.2018.11.05.06.49.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:49:32 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="A3jRnBF/";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id r64-v6so4526147pfb.13
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 06:49:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7noPQ7rbJnjEzqmjwakpKQiV1W0+j8LQY5/PsJJXzIA=;
        b=A3jRnBF/n08YfD2Cv+nqCRJ8pRJob4Il2TWupluRzPklYqhnnUmGNTbuLPTWdAL37c
         pz1VhxfNwutBRV5L6TdOgqlrOp7LTEyRlVkc+e2xUBICur3zofn/rSgXTDI7gytPPDJB
         o1jcQV2jujLdL2UGhvf9KtLduughs3YsXlQVwZDbvyfH490o6rffehCxceYoKAdIuxe0
         86I/3vCJXzludLPQfhcMEeKNonjMmTsq7gew4D7y5LNidMIO4OPXDCsx4OutTuBIUa0M
         zl9BI9qOKz8zXTwWcL09n6/l/+66m5Ri30T3sfddHUsxYxc8RtRVFUb9PPk41DfVhgF+
         7a4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7noPQ7rbJnjEzqmjwakpKQiV1W0+j8LQY5/PsJJXzIA=;
        b=geRRQKzA2ng4UyqjpVoVxTig7sAIKqKpuF986Zxu5YIb/Sdvuk+GoHqk5fC4rt36p2
         /OnJKUfmUUUvuClYTbNweYVbBVPqCF4TeCpKONqstU0gYUGsY1C7D7VJNmT37rNwH4nG
         6+16wajgFKonUOZi+Uy/rTm6le/WewRZoxwJnJ4qy15kxAkk0IeqDEdi/mXSuFd3r5p6
         bh+LZyFf8EUNsmbG+vBJRUS6obWnfF6t3GwW+y6m/LV0yNPXS9XowcRk59psQWOLzJsh
         FWkk1NfT4CxENQmscsI05b9SZwmW3K48x1kR2KqI2zcKtRPpsLpQJxOPy/sf9NesXwk/
         LcRA==
X-Gm-Message-State: AGRZ1gIEiymRIvwNQM7v4TcMjzI/NNWvKFhEhNHHuQdBojqIuZ+H1C25
	iRrhbEyktNIqF6mjIkh7z/Q=
X-Received: by 2002:a62:5b43:: with SMTP id p64-v6mr22937102pfb.122.1541429371247;
        Mon, 05 Nov 2018 06:49:31 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from dev ([12.97.16.194])
        by smtp.gmail.com with ESMTPSA id b75-v6sm51323634pfe.148.2018.11.05.06.49.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Nov 2018 06:49:30 -0800 (PST)
Date: Mon, 5 Nov 2018 14:49:29 +0000
From: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	linux-erofs@lists.ozlabs.org
Subject: [PATCH v3 1/2] staging: erofs: Modify coding style alignments
Message-ID: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541421259.git.digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix coding style alignment issues detected by checkpatch.pl
Matched alignments with parenthesis.

Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
---
Changes in v3:
- Split patch in two patches. Each patch have similar 
  kind of changes. One patch for all alignment fixes and 
  second patch for all conditional check fixes.

Changes in v2:
- Fix for one alignment issue and one conditional check issue.

Changes in v1:
- Fix for all issues in data.c

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


