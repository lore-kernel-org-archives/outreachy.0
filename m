X-GM-THRID: 6620347424824098816
X-Received: by 2002:ac8:32d6:: with SMTP id a22mr9866173qtb.58.1541444639989;
        Mon, 05 Nov 2018 11:03:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ad35:: with SMTP id u50ls12603527qvc.8.gmail; Mon, 05
 Nov 2018 11:03:59 -0800 (PST)
X-Google-Smtp-Source: AJdET5eGQYOloxS6mtFMKKdbrM3EmQRktdguv3I+912DLsc3eVSgdHuCwU/ncmYlWLhxGsi8yeEP
X-Received: by 2002:a0c:9252:: with SMTP id 18mr18366408qvz.37.1541444639320;
        Mon, 05 Nov 2018 11:03:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541444639; cv=none;
        d=google.com; s=arc-20160816;
        b=mcE6IJ1BdZNue4aGn7pSO3MhRRjeRi7/uP8zDRuLSrwPahfv94+5cLVdNqt7dlyPmc
         hKQU4VHm0FjTwYS0sOEXWjPtVxiE+GicyQSgWVZUynkVyGpNP9kEbM+c8lnBtv3Ka38L
         w83C9hOXZgDHAfl2BZG61VhMZCd5KPu4YbHrwnZ6rHaS4hA8qx0X9gk7JoDrdEZCfITr
         TLUTXChWraDezspA6RGzxVe75fO5dVkbgwxCs5VUWyhea9t5HKhsZVKLUabPCL0yWbsM
         ChLwIh2KtAJftjTqnK28PGYhSs+eupaGfZQsNMBndADesInVjD5ugGz9h50SA9E+XsiF
         FwZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CQqnRnu8sYCOvKn17Iakg6ozsgKiTy231yFJd/iW/Yw=;
        b=S+BOpcbGVpj8aCUEKjMEMYBAOft9eUAQrWY/iRYCm0DBa08d8k01sNYg0EVCJjlvab
         Hkv8Ysh88jijynxRoMikN48zKJNmaP1qxaCFf8gF4LUdSeRuvIEFEs00SOg4YBN4kpjf
         +rFx7MZUErf99QloJPqZ2vqOtbUaX0jqUXOKwbcXr16LMu7RZOyHFFCsdpAZnRIf0388
         y/pKCZJsyPKyS7KtkJaOKYS1WxP1u02vmRqaKLMC2nKDn8vrT+NC7ChQeo1vJu1l8fi0
         xyMnXwSmYdve6YO3GhFAhgWPCvYfiMhOsilY4nQqDekAstDd4tZ0BHG5luVVO8dQAnYt
         WwdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hd2w3HoO;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id k8-v6si2197654qkg.3.2018.11.05.11.03.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 11:03:59 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hd2w3HoO;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id r64-v6so4857754pfb.13
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 11:03:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CQqnRnu8sYCOvKn17Iakg6ozsgKiTy231yFJd/iW/Yw=;
        b=Hd2w3HoOtX7KBbUiZdF6RZQN+oeNF6ocPsMsyPGOx/yiMPrZoI6j4mo/caO9laBhhE
         u3R6dzGGSawtPExGzwsuEVLNLbx9BygjL83nllb9c8TDh8Rp5YW+GPTtbZsBGOzCduh2
         6ssFeC/ZlImst11du8L6P7Pv/SUOrgGPSiQR2P+9urNwNwQAlMPwOLHTR/7i72Hy0PwJ
         weqoh++ZVq0cXJpT2mvR6tXqFOtP4me0E1xmAOri8y3oEuJhF/0IJTjik4MbI409qoPL
         NpQH9t1IeTH4EuUSlXMTjv5R4JB5C6xNl5F3bGS55oEbJ1Zt//cLXQHHbjiUEVjr/B1c
         9L7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CQqnRnu8sYCOvKn17Iakg6ozsgKiTy231yFJd/iW/Yw=;
        b=Fb1+yKJVR4gk9bC2SxG84doh5xJ8XJcRApmzDX/fjBZVu9JUUdQK3ebINzeqYud3/C
         4jV1ipIfhUN5iJKVCFbON77KP7za4hKLrWGGlHhdGCPCFF3uFrEDGr86bRgUOgKZkyNI
         L8U7SVTw72HGgKOSC4L0cOzt7TZ7nCNkITM67Ai9EcsukyZl3MU7ybAb3Gh0B/6cgVUM
         5LHMQpbSQMTAFb45mvi/cX7zU60ZpPYxerLUfutB/pOyaqpKmKnAXEz/foYh5tIEAnal
         tPlCB84/GaxFfjAgoAXjEN1npFFC0L4yhOO1nraGZP+ONW1w4wLfT8aLIpWj2VUyz9fU
         zAXw==
X-Gm-Message-State: AGRZ1gLG2HxCrUgw9H7sfbODXN62QuhgrtoAHIYLWkWnLGOyFatF0Bb7
	IiS8Dl7F8vH1vhneUf+P8GA=
X-Received: by 2002:a63:9402:: with SMTP id m2mr6499605pge.93.1541444638307;
        Mon, 05 Nov 2018 11:03:58 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from dev ([12.97.16.194])
        by smtp.gmail.com with ESMTPSA id u19-v6sm69340982pfj.115.2018.11.05.11.03.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Nov 2018 11:03:57 -0800 (PST)
Date: Mon, 5 Nov 2018 19:03:56 +0000
From: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	linux-erofs@lists.ozlabs.org
Subject: [PATCH v4 2/2] staging: erofs: Modify conditional checks
Message-ID: <b36253c9dacce060a90e84f3e8d854749800d720.1541443947.git.digholebhagyashri@gmail.com>
References: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541443947.git.digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541443947.git.digholebhagyashri@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix coding style alignment issues detected by checkpatch.pl
Use ! for NULL test rather than explicitly comparing to NULL.

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


