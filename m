X-GM-THRID: 6620077565776232448
X-Received: by 2002:ac8:6993:: with SMTP id o19-v6mr15215772qtq.35.1541356920345;
        Sun, 04 Nov 2018 10:42:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:bd87:: with SMTP id n129-v6ls7688322qkf.0.gmail; Sun, 04
 Nov 2018 10:41:59 -0800 (PST)
X-Google-Smtp-Source: AJdET5ewnLzGvJEkfYyRTLmdH75jqHyk6qKZ5gcFp+g8GU3RJrdNlMKZ3EGj4bLhpljD6l6fN2Mm
X-Received: by 2002:a37:d611:: with SMTP id t17mr2237131qki.58.1541356919705;
        Sun, 04 Nov 2018 10:41:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541356919; cv=none;
        d=google.com; s=arc-20160816;
        b=TN6oInemrADe4n92tr1XFq60M48A7rdTTye3P5GjVdNJlYZ45iA80UhYY28eqeHML2
         fL28aOff3vTs/ZkmN/vAz7rBRAn9h/cTe3/iExuEdRuQPefMRlrDHI//C2Y0/3x/rct/
         LJA7tISr9WduitYWE5nbBJx9gOlKa8OoMHoFKcVsqTQGHzLf2o+lneKWQ1cvakXJtTKX
         d43MP3hw0pV8LvMdgbG7+59msBVjXkG+wh8i2SxcLtijhzrIFnWMQ13bmQcrwSs8ZQq1
         rQYHr6yJwLbA3dingYvJDR/ItvVc1SqvGo//0Nq5sRns2mFqkTXKD+IT8v2nIdRSdJz6
         KGIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=JJNvxYwijTyvUF3fbUw+m+zz1+Bu5b/5NfryZugox0Q=;
        b=etCU/Cl4zlwSZNQNMrLHm3OK7jZgkFtyZxqsJhHRvQo8FzJ769nQz7wvwalGO7IIMi
         L2RSJFbilunfSotM8sfLSJCSqo+doHcUl8oQQqvlAAs4rSb5wNGeJIr2z0LWE4f/BpZ+
         tGnd3COOspYcLgpHlQTBvoaW0ZRbJivoKrEbIy6BdertCvy58Lqr8KdzgPAoVCUO+y5c
         HUK3UgIwi86rF+dpxIP/25iVku/Ilm2W0H97QA1R/OL+BkBhypFcs9zyjwFQtDX7Ga14
         kZ+erlAEZttNvbujuXnFx/7ox/Ix2JD5s1V64abe1iSrUotj7Lcmv1L1ubPn8tfKyFJj
         eHvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K82UAaIH;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id s34si144156qtk.1.2018.11.04.10.41.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 10:41:59 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K82UAaIH;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id v9-v6so999823pff.2
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Nov 2018 10:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JJNvxYwijTyvUF3fbUw+m+zz1+Bu5b/5NfryZugox0Q=;
        b=K82UAaIHFzou7EgILy889lRBSVPRP5nIx9zd2SjGKd/H0Qe3iMOZXK8ifbAh07nR1A
         i0o/3P87GC+FLHHX/PXBxX9wN6uVOQ4AE/8dI4Y2TzXa6xAjP5VqDg9zjcpEtxpsluXd
         if2T6hIVFlQ4Hp8yxiWcBeJWn/GYBCsxCrH16KCwHh1mZuksSEUVjIyhW1SLQPBwKnh1
         j8E+yrtjIU+n0Ukx/4mwt1YeK+R8fT5rB6/pxTMrQlEHv9GJqbLbJ5bT3Ee8ijaQemQL
         YlYJoLR0p5mN+URFJ+8FtRWMfGu1MzF81qeZyuTT83uINKDeXm0ew2HVGdLWWh1AYU/l
         OheQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JJNvxYwijTyvUF3fbUw+m+zz1+Bu5b/5NfryZugox0Q=;
        b=Ex9dDrRQoTts+NDRkZWVg0MHJ1A+BcyQxg94YHZT2gNxBRcUAZi6u3dnVm/JMXR9mK
         gezTTLJeFgGIsQQ+ukBpJKDKa2m4ssy5IQo4TSl/28zDNxZkgDGO0ACdVpTk8P6lMBxv
         iw7sc327iCktkY+eWhh5u/syw2y7jy2TuWNoo+XukBpNF7HAeSojPOL/PnDd0sq/pXWv
         aTaIpO/8R7StQbDcHkNZgu377kJCOMfYWYsU8LflKkODPPxS8Had6q243Lzr/9eZlFBX
         W/8Ms+Y0IGwimeQMlv2Pdq/xL3BlME0zKyv8Twr/uHJm51wKM5pdW/7g1RTT9HTGt9/l
         SQzA==
X-Gm-Message-State: AGRZ1gIYvER/GejT+DvmBsrNvZOmYs1KMwbpU/UKmuR+zrvzId5o7ZlO
	3gv3dr1MuHo0CLRXuBHHwH/s0QMs9Lc=
X-Received: by 2002:a62:5b43:: with SMTP id p64-v6mr19846460pfb.122.1541356918939;
        Sun, 04 Nov 2018 10:41:58 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([49.35.118.235])
        by smtp.gmail.com with ESMTPSA id q145-v6sm11597040pfq.143.2018.11.04.10.41.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Nov 2018 10:41:58 -0800 (PST)
Date: Mon, 5 Nov 2018 00:11:54 +0530
From: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: erofs: Fix alignment issues and warnings.
Message-ID: <20181104184153.GA16136@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch includes modifications for alignment and warnings
as per the coding standards. Also, this patch includes fix
for syntanctical and logical errors.

Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/erofs/data.c | 65 ++++++++++++++++++++++----------------------
 1 file changed, 33 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
index 6384f73..6fec5e6 100644
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
@@ -53,7 +53,7 @@ struct page *__erofs_get_meta_page(struct super_block *sb,
 
 repeat:
 	page = find_or_create_page(mapping, blkaddr, gfp);
-	if (unlikely(page == NULL)) {
+	if (unlikely(!page)) {
 		DBG_BUGON(nofail);
 		return ERR_PTR(-ENOMEM);
 	}
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
@@ -167,16 +167,17 @@ static int erofs_map_blocks_flatmode(struct inode *inode,
 
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
-		if (*mpage_ret != NULL)
+		if (*mpage_ret)
 			put_page(*mpage_ret);
 		*mpage_ret = NULL;
 
@@ -192,27 +193,26 @@ int erofs_map_blocks_iter(struct inode *inode,
 }
 
 int erofs_map_blocks(struct inode *inode,
-	struct erofs_map_blocks *map, int flags)
+		     struct erofs_map_blocks *map, int flags)
 {
 	if (unlikely(is_inode_layout_compression(inode))) {
 		struct page *mpage = NULL;
 		int err;
 
 		err = erofs_map_blocks_iter(inode, map, &mpage, flags);
-		if (mpage != NULL)
+		if (mpage)
 			put_page(mpage);
 		return err;
 	}
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
@@ -232,15 +232,15 @@ static inline struct bio *erofs_read_raw_page(
 	}
 
 	/* note that for readpage case, bio also equals to NULL */
-	if (bio != NULL &&
-		/* not continuous */
-		*last_block + 1 != current_block) {
+	if (bio &&
+	    /* not continuous */
+	    *last_block + 1 != current_block) {
 submit_bio_retry:
 		__submit_bio(bio, REQ_OP_READ, 0);
 		bio = NULL;
 	}
 
-	if (bio == NULL) {
+	if (bio) {
 		struct erofs_map_blocks map = {
 			.m_la = blknr_to_addr(current_block),
 		};
@@ -307,7 +307,7 @@ static inline struct bio *erofs_read_raw_page(
 			nblocks = BIO_MAX_PAGES;
 
 		bio = erofs_grab_bio(inode->i_sb,
-			blknr, nblocks, read_endio, false);
+				     blknr, nblocks, read_endio, false);
 
 		if (IS_ERR(bio)) {
 			err = PTR_ERR(bio);
@@ -342,7 +342,7 @@ static inline struct bio *erofs_read_raw_page(
 	unlock_page(page);
 
 	/* if updated manually, continuous pages has a gap */
-	if (bio != NULL)
+	if (!bio)
 submit_bio_out:
 		__submit_bio(bio, REQ_OP_READ, 0);
 
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
@@ -407,7 +408,7 @@ static int erofs_raw_access_readpages(struct file *filp,
 	DBG_BUGON(!list_empty(pages));
 
 	/* the rare case (end in gaps) */
-	if (unlikely(bio != NULL))
+	if (unlikely(bio))
 		__submit_bio(bio, REQ_OP_READ, 0);
 	return 0;
 }
-- 
2.7.4


