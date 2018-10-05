X-GM-THRID: 6608926139833384960
X-Received: by 2002:a1c:4d16:: with SMTP id o22-v6mr1271035wmh.4.1538760526224;
        Fri, 05 Oct 2018 10:28:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:23d0:: with SMTP id j199-v6ls330623wmj.18.gmail; Fri, 05
 Oct 2018 10:28:45 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62yA/L1uSiw9qd7PRONkLaeIFCipZI5q2e72TrGh9DIoO2bZaY9E1h5qTTPc45n3udREvec
X-Received: by 2002:a1c:96d5:: with SMTP id y204-v6mr990617wmd.0.1538760525184;
        Fri, 05 Oct 2018 10:28:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1538760525; cv=pass;
        d=google.com; s=arc-20160816;
        b=v4CSdJVGjkReC/Rm+n7Qwkhugs3LorW3JC21aXlL+Gx1kpirt7Aus75H6ODNkYj3QZ
         eAH22aSmTpMBtmBhc5LPlQRvx6yWUyDsaKKEbVza6J1zpJYsePXQce3H+GkyJR7TPOMc
         uJgfqB2uRGG0b1HtVQwOKe4ZITxHaO5He4ZnYkuI7p364Scdtr8LPwbNDBOhELfkC8hj
         jdo9JDLPNeQnNgc4j31fmiOyGHmc4rPYiE9m4cHEDRxly9sfurhemiAci6U0w6ymrXL1
         cnnlM8joNFmv120DuEZlBxCrEZrUMRtTzjDxJa3rOjjhHALFBBpFF30BaZD+MKm7loef
         4+Dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=T6XQyXJmyVmwxXffh+v9cWN/L6dKAVDiMwDIFeCNfxc=;
        b=xUDmiFmTj/iK12trecsUe8OPIgp/q8ONPtfjbNQyq8XQeB9GngVCJMRdDUV6U6cWSg
         gmKzicmtolcPCFat1DW/gqMwLeyb1v/nGk2b/PGWNQmHrojaM39DBmmGHY2P4/ZtS313
         ptli+mA3tEzgumkCtqqVx8hXSWl834BvLBJRuXZrIA008N4J6MjL3kuaaHw2s2K4d7rB
         tTu4+vEdI3CugjndF81Z0VDIvKnGXUYII3e4+bzxg7gSG+9v23gsXGYUKlvZv3C7gGCp
         CdxMIIFrzBwQ3oe5tZ7qCoGoR80tSVe1XInvle6kGoZp06zg9dsKJUWue6eHh6dCfxyd
         mIjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="P7NYw/7l";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o52.zoho.eu (sender-of-o52.zoho.eu. [31.186.226.248])
        by gmr-mx.google.com with ESMTPS id 41-v6si364731wrb.3.2018.10.05.10.28.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 10:28:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) client-ip=31.186.226.248;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="P7NYw/7l";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1538760523; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=IbrotPVjLTHxiVYfZlrD1P+LuSVPytPI0vSfMV+tIMsFGUOXLhQM4Piha9LtsTynJo5CtmXidyD9TE93vy/E1mFQEj1/0KMi0v6IxV+4fXrW3yQfi/0b+J8iF5HYRcnNKQ6nKx3WfezWzIRuN9ANEX4mBZXdvRd1UnzC6v2iPs0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1538760523; h=Content-Type:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=T6XQyXJmyVmwxXffh+v9cWN/L6dKAVDiMwDIFeCNfxc=; 
	b=D/IfxdMNPN5I/whZBRWn+Y+dbwOiIv49uKn8sUPNQT3jgIgbXxahm56LWs3apYDf5d3jW0ecNAPW4Kn/vjnLBvr2xvdHPkKe6KaaxgZ7lgYnZcN0fKAbnDz7RKo5PEwG6/254MCgHkqFgnUxzUnT5lcEIa/x0/0kONeBCdTy9Ug=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1538760523;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type;
	l=5997; bh=T6XQyXJmyVmwxXffh+v9cWN/L6dKAVDiMwDIFeCNfxc=;
	b=P7NYw/7lIkdmNO61OX6TfomxASFf1jqjko/IN0Kd7wZUtffilsGt7BwQJ21k8+xp
	zq0bhekRIszyx0cYaftaKNXeVN2jtUK1QhrKWiAXFksIuX7JBj5pcW4Q73LUki6KAu0
	Npws43s6+6UsJ75yCjMP+HiqlZffxHpFNWlzh2mk=
Received: from kvasir.local (90.254.43.240 [90.254.43.240]) by mx.zoho.eu
	with SMTPS id 1538760522599981.4338583540462; Fri, 5 Oct 2018 19:28:42 +0200 (CEST)
Date: Fri, 5 Oct 2018 18:28:41 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: erofs: fix indenting to conform to kernel coding
 style
Message-ID: <20181005172841.GA26217@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Cleanup all inconsistent indenting to conform to kernel coding style.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/erofs/data.c | 56 ++++++++++++++++++------------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
index 6384f73e5418..ffd392e74803 100644
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
 
@@ -107,7 +107,7 @@ struct page *__erofs_get_meta_page(struct super_block *sb,
 }
 
 static int erofs_map_blocks_flatmode(struct inode *inode,
-	struct erofs_map_blocks *map,
+				     struct erofs_map_blocks *map,
 	int flags)
 {
 	int err = 0;
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
+			  struct erofs_map_blocks *map,
 	struct page **mpage_ret, int flags)
 {
 	/* by default, reading raw data never use erofs_map_blocks_iter */
 	if (unlikely(!is_inode_layout_compression(inode))) {
-		if (*mpage_ret != NULL)
+		if (*mpage_ret)
 			put_page(*mpage_ret);
 		*mpage_ret = NULL;
 
@@ -192,27 +193,27 @@ int erofs_map_blocks_iter(struct inode *inode,
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
+static inline struct bio *erofs_read_raw_page
+	(struct bio *bio,
+	 struct address_space *mapping,
+	 struct page *page,
+	 erofs_off_t *last_block,
+	 unsigned int nblocks,
+	 bool ra)
 {
 	struct inode *inode = mapping->host;
 	erofs_off_t current_block = (erofs_off_t)page->index;
@@ -232,15 +233,15 @@ static inline struct bio *erofs_read_raw_page(
 	}
 
 	/* note that for readpage case, bio also equals to NULL */
-	if (bio != NULL &&
-		/* not continuous */
+	if (bio &&
+	    /* not continuous */
 		*last_block + 1 != current_block) {
 submit_bio_retry:
 		__submit_bio(bio, REQ_OP_READ, 0);
 		bio = NULL;
 	}
 
-	if (bio == NULL) {
+	if (!bio) {
 		struct erofs_map_blocks map = {
 			.m_la = blknr_to_addr(current_block),
 		};
@@ -307,7 +308,7 @@ static inline struct bio *erofs_read_raw_page(
 			nblocks = BIO_MAX_PAGES;
 
 		bio = erofs_grab_bio(inode->i_sb,
-			blknr, nblocks, read_endio, false);
+				     blknr, nblocks, read_endio, false);
 
 		if (IS_ERR(bio)) {
 			err = PTR_ERR(bio);
@@ -342,7 +343,7 @@ static inline struct bio *erofs_read_raw_page(
 	unlock_page(page);
 
 	/* if updated manually, continuous pages has a gap */
-	if (bio != NULL)
+	if (bio)
 submit_bio_out:
 		__submit_bio(bio, REQ_OP_READ, 0);
 
@@ -361,7 +362,7 @@ static int erofs_raw_access_readpage(struct file *file, struct page *page)
 	trace_erofs_readpage(page, true);
 
 	bio = erofs_read_raw_page(NULL, page->mapping,
-		page, &last_block, 1, false);
+				  page, &last_block, 1, false);
 
 	if (IS_ERR(bio))
 		return PTR_ERR(bio);
@@ -371,7 +372,7 @@ static int erofs_raw_access_readpage(struct file *file, struct page *page)
 }
 
 static int erofs_raw_access_readpages(struct file *filp,
-	struct address_space *mapping,
+				      struct address_space *mapping,
 	struct list_head *pages, unsigned int nr_pages)
 {
 	erofs_off_t last_block;
@@ -389,12 +390,12 @@ static int erofs_raw_access_readpages(struct file *filp,
 
 		if (!add_to_page_cache_lru(page, mapping, page->index, gfp)) {
 			bio = erofs_read_raw_page(bio, mapping, page,
-				&last_block, nr_pages, true);
+						  &last_block, nr_pages, true);
 
 			/* all the page errors are ignored when readahead */
 			if (IS_ERR(bio)) {
 				pr_err("%s, readahead error at page %lu of nid %llu\n",
-					__func__, page->index,
+				       __func__, page->index,
 					EROFS_V(mapping->host)->nid);
 
 				bio = NULL;
@@ -407,7 +408,7 @@ static int erofs_raw_access_readpages(struct file *filp,
 	DBG_BUGON(!list_empty(pages));
 
 	/* the rare case (end in gaps) */
-	if (unlikely(bio != NULL))
+	if (unlikely(bio))
 		__submit_bio(bio, REQ_OP_READ, 0);
 	return 0;
 }
@@ -417,4 +418,3 @@ const struct address_space_operations erofs_raw_access_aops = {
 	.readpage = erofs_raw_access_readpage,
 	.readpages = erofs_raw_access_readpages,
 };
-
-- 
2.19.0



