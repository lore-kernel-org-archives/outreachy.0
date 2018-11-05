X-GM-THRID: 6620347424824098816
X-Received: by 2002:a67:8509:: with SMTP id h9mr19823458vsd.16.1541419780674;
        Mon, 05 Nov 2018 04:09:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:1002:: with SMTP id 2ls2711515vsq.7.gmail; Mon, 05 Nov
 2018 04:09:39 -0800 (PST)
X-Google-Smtp-Source: AJdET5eGRQ/uPt3Ig6jWei6C8DXI1pPiU2RqjSikYBEvmEyVo+FiwRXhdqPYLFkKBCKhW+Fx9IEw
X-Received: by 2002:a67:68c5:: with SMTP id d188mr6367882vsc.24.1541419779363;
        Mon, 05 Nov 2018 04:09:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541419779; cv=none;
        d=google.com; s=arc-20160816;
        b=mPYJ/Pi1+dmym7vZqu7vn0y8hYtNvJlvtcIYnM4eJogJ6yAcPxSqwrNJ05oDKkB6At
         dX+V9C6aVUB4BY/6AfPwx6gxLAplJZSrZCKjJddgWCdN5tLT01GzNIBEQ+cYF8vob2CX
         +RRoJf08SKfXSmbf0OUE0AiVIU6pubT+E00ntcoCd6MX7dSxxeV6Xc8afxIDZ40RaBo7
         x5+B9XN9aX4avKewhwz6GViRZdwWQm84vD5D4qybcFxlJ9QRpAJ8u5tg/N/mE5jwPvij
         wku7wxQalt9FtCbrvOzde0ufFSK4yBn9DpFwz/oYlRC4qkRXhRgA1OE6YAt11+E48fSL
         M7pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rcTtAs88z3QvWDH8a0lBK3x/xOerWxBhS2oDL5hwA8Y=;
        b=bL1wKmpwYck6hBJJPFnypC3oq4X76l9CPVoR1DS2BbPzmQM0WVzZlyB0uPqc8ZYZjJ
         DFHsmg443sFFu6DlU+8hjTPeMM4W/WV/OVD3VX4mIeFp0qutWaAMq4+q/HEgr37oachx
         MeWjtx9xF72JRxcfZfvjrNH5rnlziT42sQcyjDrgfj+QxJxUYd98RX0Guvhptzif2/rU
         gmvT17UslRSIHjgdyYCt72Jakhmj1UfRZFFxD4yv7uiDDqPec6H4Y+/v2IwVCWZ3Jrf0
         juXvmSSkKmX8dqS/CXO5shfgJxLDlsGGRxAz+agK/pBXi+rUbfZVADxkTFVE0xEcFbph
         R0/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KnX2hZY/";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id 143si964357vkw.4.2018.11.05.04.09.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 04:09:39 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KnX2hZY/";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x535.google.com with SMTP id i4-v6so4148143pgq.9
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 04:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rcTtAs88z3QvWDH8a0lBK3x/xOerWxBhS2oDL5hwA8Y=;
        b=KnX2hZY/8f/DjFkf4uJdeTvTOaeVFDiKsg7KymjVFF25hvD05gqxGtQTJVhvt/qOSh
         A6tYNZkPmJir1+w0fEOMhd+Fuwuf+/7WNhyZnwLJpUxMpWfhEocvRVANwCBLKEdztxgG
         VsY/UPxrvRIkXPL6pMbE135ADEWJ5nIJGMDc5jUzbvf89SIT2PjF69xR4PKx9UjKX8jF
         yTn3ltVgh22aqYdt2Jnvy2wHK9oC2FuNZ+b5YjrfS37nuGhKLV5bXSfz8HaUtkzHuoXp
         Q4CqwYDCNSGK/CBZOIDo6Bp/i2GgO1QlJJx0rKZ+OEW2b/HEq4iA42bKvmy43BPRXot/
         wcig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rcTtAs88z3QvWDH8a0lBK3x/xOerWxBhS2oDL5hwA8Y=;
        b=bT4y5ug80VzLaEKtJRDkpIM8oyykz1IIOA0KRQnui7XzuPp0QWqgOpRMaaK6w7+JN5
         Ko89IV857HXHcqq78DLnhWx5WQsRHP39T3XaxrXLlEG4IXAc/jfyMfmfjOz87O76YAxN
         wXc/wP/uXFDB0+WvCrgpLDpHY/Hk9OBTryJlqgIQhGRYW4TjROvhYoMYCFD7tvGyqHCJ
         MMnB7+tioM5B/9oW1hDx5RQCXIJ9gZkyTybuTDiPnYBivm+wEtBIuQCNwhscTCuoG7mu
         y30LgADp1CtFxMu4a+JYa1qhLt5A06qx7zftY+hAUjmd2wSUf/ulhC7ZKuYvWt0iQIgn
         cUBw==
X-Gm-Message-State: AGRZ1gKR0SxM+NVcq0+U+aoKQwwXCiAC2nnD+Pf6KGqror66uPiZ7cLH
	Te60VfVwr9dx1oTjWygJvhA=
X-Received: by 2002:a63:9c1a:: with SMTP id f26mr19997613pge.381.1541419778773;
        Mon, 05 Nov 2018 04:09:38 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from dev ([12.97.16.194])
        by smtp.gmail.com with ESMTPSA id y9-v6sm13950361pfl.187.2018.11.05.04.09.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Nov 2018 04:09:38 -0800 (PST)
Date: Mon, 5 Nov 2018 12:09:37 +0000
From: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	linux-erofs@lists.ozlabs.org
Subject: [PATCH v3 2/2] staging: erofs: Modify conditional check
Message-ID: <4aee17a8fb746113e084066d8c04c4575b152b95.1541414957.git.digholebhagyashri@gmail.com>
References: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541414957.git.digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541414957.git.digholebhagyashri@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix coding style alignment issues detected by checkpatch.pl
Use ! for NULL test rather than explicitly comparing to NULL.

Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/erofs/data.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
index b66191ad44aa..5a55f0bfdfbb 100644
--- a/drivers/staging/erofs/data.c
+++ b/drivers/staging/erofs/data.c
@@ -53,7 +53,7 @@ struct page *__erofs_get_meta_page(struct super_block *sb,
 
 repeat:
 	page = find_or_create_page(mapping, blkaddr, gfp);
-	if (unlikely(page == NULL)) {
+	if (unlikely(!page)) {
 		DBG_BUGON(nofail);
 		return ERR_PTR(-ENOMEM);
 	}
@@ -177,7 +177,7 @@ int erofs_map_blocks_iter(struct inode *inode,
 {
 	/* by default, reading raw data never use erofs_map_blocks_iter */
 	if (unlikely(!is_inode_layout_compression(inode))) {
-		if (*mpage_ret != NULL)
+		if (*mpage_ret)
 			put_page(*mpage_ret);
 		*mpage_ret = NULL;
 
@@ -200,7 +200,7 @@ int erofs_map_blocks(struct inode *inode,
 		int err;
 
 		err = erofs_map_blocks_iter(inode, map, &mpage, flags);
-		if (mpage != NULL)
+		if (mpage)
 			put_page(mpage);
 		return err;
 	}
@@ -232,7 +232,7 @@ static inline struct bio *erofs_read_raw_page(struct bio *bio,
 	}
 
 	/* note that for readpage case, bio also equals to NULL */
-	if (bio != NULL &&
+	if (bio &&
 	    /* not continuous */
 	    *last_block + 1 != current_block) {
 submit_bio_retry:
@@ -240,7 +240,7 @@ static inline struct bio *erofs_read_raw_page(struct bio *bio,
 		bio = NULL;
 	}
 
-	if (bio == NULL) {
+	if (!bio) {
 		struct erofs_map_blocks map = {
 			.m_la = blknr_to_addr(current_block),
 		};
@@ -342,7 +342,7 @@ static inline struct bio *erofs_read_raw_page(struct bio *bio,
 	unlock_page(page);
 
 	/* if updated manually, continuous pages has a gap */
-	if (bio != NULL)
+	if (bio)
 submit_bio_out:
 		__submit_bio(bio, REQ_OP_READ, 0);
 
@@ -408,7 +408,7 @@ static int erofs_raw_access_readpages(struct file *filp,
 	DBG_BUGON(!list_empty(pages));
 
 	/* the rare case (end in gaps) */
-	if (unlikely(bio != NULL))
+	if (unlikely(bio))
 		__submit_bio(bio, REQ_OP_READ, 0);
 	return 0;
 }
-- 
2.19.1


