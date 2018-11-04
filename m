X-GM-THRID: 6620077565776232448
X-Received: by 2002:aca:3254:: with SMTP id y81-v6mr14886043oiy.14.1541357394966;
        Sun, 04 Nov 2018 10:49:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3016:: with SMTP id w22-v6ls413781oiw.3.gmail; Sun, 04
 Nov 2018 10:49:54 -0800 (PST)
X-Google-Smtp-Source: AJdET5fnCAcDitKxn+nJatZ9a7ji9OQ5Izem6nRiHlwKlBNzc2+/kOXyZBBXyIBmvoYH5qFJ/HOn
X-Received: by 2002:aca:40c2:: with SMTP id n185-v6mr15569116oia.53.1541357394235;
        Sun, 04 Nov 2018 10:49:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541357394; cv=none;
        d=google.com; s=arc-20160816;
        b=LqfVZwtp0ZApJ0sDFzBG9v1vilaqO3HuAd8CsROSjgdvnVTJjwsKD+93j4hnZRO+2m
         yF/MK1+fgFuZPIq4e3guBc0hUPXvd2jT54Z40RqoymBdKzxFlxtUDdYB85nwhKBomFWm
         e2TlespilZ89dbmphENsLTfCiKozAl7+KQXOArpXgrfc0JZSsab8PsDWe8SIIsTQk8xE
         b6MJRRj/FsRRr9qGXf7SMdacy1qrepASWCG+oNu2cZW766IY2ksZtaM904QB6bQNLmCy
         HhjLdOTOjlc3phy7V0Cn3LPJ8EzRYSIjom9s7XRhnmxm8iFoYMVbB2KizO5kvuCIKuJf
         FbDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=JJNvxYwijTyvUF3fbUw+m+zz1+Bu5b/5NfryZugox0Q=;
        b=TGdpMlCSn5v/w/XWFIuQjO/HXqQNaVPNB/wspD+QqgA4jgzTpHVyUrPuJruPqdh1A/
         ljb5ORFNoapnMoN3YT28HIk8lbsMqHh8Lb1jbz420pQyu1i+QPvtH20q1Y67g0RqVYmN
         VcwF3WmdmefGoCt4WaXyXsh3OQdRJmfdky7l9G826yHutGYDFGoUVavJRtAt7K1F7fNx
         o7UWL0E8VXTVDAQ5WNCEOYCSKpqgR/UKpXb9IYlsfxBfF73aKGtEjPc5c7Av6uirMueu
         fkVMO0WZuJOY6E3NLcwT0FzVMAcDv4vU9fWr5+i9tafV68aoxm2OfQrmIoPLSgxdCbf6
         TEEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iKd0OijY;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id j23-v6si1714312oib.2.2018.11.04.10.49.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 10:49:54 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iKd0OijY;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id q19-v6so332690pll.7
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Nov 2018 10:49:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JJNvxYwijTyvUF3fbUw+m+zz1+Bu5b/5NfryZugox0Q=;
        b=iKd0OijYLUy/0U21+GJLkzE8YeLrcLGR18szjH5bHfyn+NKu1WsxDLXDHhvjbdvAc9
         nHDm35vvbwMF6PaK3jOo2h8aZkXGuD02LZvuM0blBBpQLcVHKsTEzkQjTvLwYYb/CC2i
         uMb7B6bZWcRzA+BsMMrV5eQHTxcbYZfY4AF2Gvf2xXuJ4uL4VWOznRXgZVdp1DXsB780
         ubhcsTpoYHT4Xj2DI4+yA8AQpFTb/YD++2016UM05RPJ588SwM97oGCnDrsMNFxJg/LG
         zpVP0XBgn+0Gv/YlwCDAmhJOVY9SS52ttJ6xNS3z9dR388y4uTpGqKdwMb0IXosBp/T0
         A33w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JJNvxYwijTyvUF3fbUw+m+zz1+Bu5b/5NfryZugox0Q=;
        b=ONOsCL3wl+NnCzr7xQ1B0HmvnAI0cBHmUo5Op41MTalBovN9ep7IMrUbDUTK0hxyYz
         tjWMd6t3dPZXxczghwXz4qRZqUUtoPQ3Mazv9ZnWJHi9vZ9F6dGpdRf5TbZX8bDUP386
         u1NzJgL3CRaGrkESwkZq+Nt7iPu6hdnxBFbb3NP5+9eb/nk2MnWO3ebbOMZk4a/urRcT
         0jffu7uFDySE1Ea/ahtCRrIdoREFjukV1xgrGmhD4C7RK/lfQbf+kFuIo2TO6G9RUMr9
         VWQmbssRkZlUtSvjz00ncobLAU5IWB1fGXb/uS2UUXVGNQOMZPs4A/2Wj8bL1XkyjYvM
         oUbQ==
X-Gm-Message-State: AGRZ1gJKkqeODd/K7t7T07wQ5AZ2AKdwHjl1XUT/5sRvioYDrjHbjsIR
	KMvoPkpjDf4XdcnYUC7odFUerorHH40=
X-Received: by 2002:a17:902:1681:: with SMTP id h1-v6mr19532444plh.88.1541357393139;
        Sun, 04 Nov 2018 10:49:53 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([49.35.118.235])
        by smtp.gmail.com with ESMTPSA id x4-v6sm15328654pfx.42.2018.11.04.10.49.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Nov 2018 10:49:52 -0800 (PST)
Date: Mon, 5 Nov 2018 00:19:48 +0530
From: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: erofs: Fix alignment issues and warnings.
Message-ID: <20181104184947.GA16811@bhagyashri-Lenovo-G570>
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


