X-GM-THRID: 6620347424824098816
X-Received: by 2002:a0c:95d2:: with SMTP id t18mr18094163qvt.3.1541444320070;
        Mon, 05 Nov 2018 10:58:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:21a1:: with SMTP id 30-v6ls3253036qty.11.gmail; Mon, 05
 Nov 2018 10:58:39 -0800 (PST)
X-Google-Smtp-Source: AJdET5ceQbKEs73oMm/jFUgTStISQmetAvZP0HN6XQ/DHwl7Df7q8zzDIN34TVYW/fAXZJNmE5FW
X-Received: by 2002:ac8:17e6:: with SMTP id r35mr1366014qtk.45.1541444319428;
        Mon, 05 Nov 2018 10:58:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541444319; cv=none;
        d=google.com; s=arc-20160816;
        b=kOqmJFhkmLt4/fJM8aNHpXHzA5uQMdlGQ95ltmHL1qo8ZuOagufrWYFX0KqtDpPuHW
         tYolypiQsz2WaGQ/hTKWXHrVowAK/iCfdA57gGaIERbwHzL2M914rLLaMR1bQcWacEH0
         5qoSIaNPhNuVU1xma7L/LgfduxSVJmJ1w3vlTEMqwDpCV4MLp9NzavB2+XNQHzY3Tu7i
         28xqfMq+6cduSK6STuQmqBGPSSHEUuTwMYaUQ5RSmeKqdUwq3HXVn83RTS6q3opRcU3k
         7dMNHut94z6667ZfZQrPs2IupKqWeMOEF5qi2Nn6fHuvJ/tRleqW0xjzos4x85jn6Lqk
         j/eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=gdbXomgk+MZ0t7+v9BT7kwYAKFTBAo19asR+YaFYeM0=;
        b=YOgz3M6vBy8Xds+BuhstsnUbwRZIM8XkFZOtqzRBDse8Xx3/EOU44pAOCvI7pyQ0Pm
         135qWV+yIFK/pipsQlvpSdIRxuSk6fcQuezte1Mk+AJVsljeZ6yTKoEaOXrZqfSM/iaQ
         QPGQ2Ssja53is5aE20YK1ijl0CF9fLXLFZQtsQwUAbi/8plgI37BRVdoUpZuAhPNWhNJ
         XBxF+XtctRbyu4beiAe7/4TFx6Wy0EpLCUKQo+8UGD/qQy4710CtEx9gktK7h8Au3dh3
         evRgK5abzK3FyiDGv73XD7xNBoyxgnda0nEBiCYBSOXwWAYEDc2zlpa6fDTsRNoRKpaj
         t3FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EK/8ns0t";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id s34si331417qtk.1.2018.11.05.10.58.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 10:58:39 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EK/8ns0t";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id r64-v6so4850901pfb.13
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 10:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gdbXomgk+MZ0t7+v9BT7kwYAKFTBAo19asR+YaFYeM0=;
        b=EK/8ns0t8S6T7pC1u7YRsZ39xjMp50EXAfN8FUQAQk6x6ejU1MAJWqlPb3vtq/dxp8
         fZn2N34HQXq72iRSddTwU187itQ3iNsj0ZDV9OAA2NIsaPRc8iJ6AJbzarjTfekq49LS
         yOW6x3RIEtAz7puWJxzYaFvLDtC195n78z2oQTDEwqs0ZL5EprS/wW865gwVHkIlBM5m
         qMcTyR7zEpWywLrIjE1q40DcLe1couImeUZJ0AxS3NNVyqkDtRXDn8lA5HInLzNs0in6
         /ZFitSw63GeEXlOat04jQVi583iS2SEyhT5MeRN5z1N0H8akOHEq52sMgcf4y3q3gLyO
         4Xtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gdbXomgk+MZ0t7+v9BT7kwYAKFTBAo19asR+YaFYeM0=;
        b=tNPX44cStFc3kIRZnmsnGKQElA25RUSScBqTQ21DgqWS2uTjhdBJ7/Q8eUzzaxO1oh
         4JpuOKQq1FN7Thl1rXnWx08WSGgNRF0By0bSjbhb8tx9wj+K+FUkTkvnCWcjjtD4Y3ff
         IEM+zRvB1KV2yLsqRGJGnmMQz43z9vsIcpFwBeg5mfx8aDLGfo5anEgfRhICnZKqsguc
         7n+l9LExPKxtxHlnMPHvj0YM3vDxo3UYFKHv4n+PYDiea2Y98H9PjJu/xGEch5AbIBb6
         TnlFdF82x2hRZA9wjtff37dJ0GrzoFitWBhfDw6mnXbJzPK6N+dllk5kz7JF522FFUMq
         VKhg==
X-Gm-Message-State: AGRZ1gKOkdlXpqzt9DMnjpLZg7qFzGt3t9DpHUlg9voz0uIo5VQlPee3
	cQ6ShJmFa5wzWh2S91mX0L/bIbp1nGJffE77
X-Received: by 2002:a62:1954:: with SMTP id 81-v6mr23157857pfz.237.1541444318821;
        Mon, 05 Nov 2018 10:58:38 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from dev ([12.97.16.194])
        by smtp.gmail.com with ESMTPSA id z5-v6sm46919997pfd.99.2018.11.05.10.58.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Nov 2018 10:58:38 -0800 (PST)
Date: Mon, 5 Nov 2018 18:58:37 +0000
From: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
To: shrikantchaudhari6548@gmail.com
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	linux-erofs@lists.ozlabs.org
Subject: [PATCH v4 1/2] staging: erofs: Modify coding style alignments
Message-ID: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541443947.git.digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix coding style alignment issues detected by checkpatch.pl
Matched alignments with parenthesis.

Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
---
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


