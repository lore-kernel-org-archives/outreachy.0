X-GM-THRID: 6620354100879949824
X-Received: by 2002:a24:3303:: with SMTP id k3-v6mr6071610itk.2.1541421306852;
        Mon, 05 Nov 2018 04:35:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:6605:: with SMTP id k5-v6ls8011121jac.0.gmail; Mon, 05
 Nov 2018 04:35:06 -0800 (PST)
X-Google-Smtp-Source: AJdET5dI+RTc8LOs5o6Qt6WzRQlLIgIEa2ElFc8muPj1uT4prqFFXTe8A4g64RQ65hDNaWbRl1sx
X-Received: by 2002:a02:1810:: with SMTP id k16-v6mr18288802jad.21.1541421306001;
        Mon, 05 Nov 2018 04:35:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541421305; cv=none;
        d=google.com; s=arc-20160816;
        b=D3oZrR43SLhpSUXCXKCQaRGJPSWrBcPipmG8Qw86x2NgRGOSmDYa9mbyC2hqn928LM
         1vnPj5JkCpLh1y/gQV9nAAgMF1M5uMDz/wxMG/SPzk2exPCCKuqJ+oxXF6P6IcKVcEF8
         RjSe5pd4PwiEeRGJr/k7idFwxA//32udY7a2LvL3SRrZ6FeBaBGFrs9c1teshHGFuKmi
         bZanFGrkxz0cDv5TLl7VhMvPzUltHgeYZHURrP4LMhwRxbgF3adQPg5r7HraQKYRTDRN
         vq3syhTz67XmWaCYewa+NqBBZ05geyPn6oBE6n9w+ndv1AHO7b7ePPJOMhQW0UX2xQVd
         1Yhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rcTtAs88z3QvWDH8a0lBK3x/xOerWxBhS2oDL5hwA8Y=;
        b=hEbLJNmofluyoOV/EfA6MyRm4JaG3amSZRKaI2VKyufBZcVkx42sStRWQSgyruve6o
         flkJ5HxJZ0IFHdlpOQbhOCwx5EbHp+ZWKD0btAErX38+iRCD3vWgldlTtouXwIZu8B6J
         NGQrm/WD4US7v8eYUh+Y2fzf7XmMTTp8pikrZ50qQLG5xxA4QLM/rWsrCDKN/eQxEu5i
         vWCP/asUr/45FbX3qDlP0NZcd7m0aZN4l/oob1JDo4FqUdZFNE6Nt/rjQ603iOEVnr6w
         /uMqM7DuGc/zaXafuXcJyMUloNOim6QSZTkTgzbcnd878Fby+1/IVJlo6133U8qfNYTO
         uZ8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hAyX8o6G;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id b133-v6si376642itc.3.2018.11.05.04.35.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 04:35:05 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hAyX8o6G;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id q5-v6so4195335pgv.0
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 04:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rcTtAs88z3QvWDH8a0lBK3x/xOerWxBhS2oDL5hwA8Y=;
        b=hAyX8o6GZ+EBfRfl7VbxMJ9harZUDz96H+t3+fdQXnPLtqqLxCSmCiJn5rRQKELO1g
         Fdfq6oV0kKxDQ2AHpVBviKRYtkWRIKqDt2HvLuZGEB+r+wHe/Nt0OslXWdhU6n2L6Jea
         qni3IUxfVXe6Df5+hUuPGMGtVjIDoja1DDRcZuP1ALX3vWOxfC4+XGNzJWaONYIHJJsv
         0cwB8ZHxBhsZMeg67qE5j73zZ3MUWgjU/bjYeKiUQut/gq3ctOwzmK5uF95RGqQ3vE3q
         wGqCp/P56+qI2/+SoP8yYZDuTeiVigDMmWv9nGKO1MH+2/xb4JsfN1fZSAR7NFfc9KSr
         bHeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rcTtAs88z3QvWDH8a0lBK3x/xOerWxBhS2oDL5hwA8Y=;
        b=I6Rqziwqx0qiYExyddo8tMrb+xp5MuORxbNv8ZgRys4kxYv6FiIUuXn85+aGDWffDj
         /FrIVuTR9PrGOeqt5qiPue9Z1PVM257SOipDGORl/HfhfnmPLsR42m0+dgdqfyfqdrDR
         ceYsswgHt0VNDO2/zRiXuj1/i7cRVaJM7T/EitK/JR4Zddo9nariC8SZVoYma8D1XTMx
         YMLnUudIykgy1ivhfeK3Fku9beankY+aN8oQItt3titIX++kX20vVTnMgMV9z7TQGXBo
         86vwT71U3RB6EFsqujKRPgOnCDiI9mClw5be5vuvuCd+AP8sRvNOLcLORW8FSzRcKD0B
         UV7w==
X-Gm-Message-State: AGRZ1gJqD072JIxdn9anKpTfRutLZYt2qRv33ApA2tSYIhtGwJxPED67
	3exJkP6C2gTpqNY476Z0Z30=
X-Received: by 2002:a62:42dc:: with SMTP id h89-v6mr22525280pfd.0.1541421305198;
        Mon, 05 Nov 2018 04:35:05 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from dev ([12.97.16.194])
        by smtp.gmail.com with ESMTPSA id i6-v6sm46171060pfb.135.2018.11.05.04.35.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Nov 2018 04:35:04 -0800 (PST)
Date: Mon, 5 Nov 2018 12:35:03 +0000
From: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	linux-erofs@lists.ozlabs.org
Subject: [PATCH v3 2/2] staging: erofs: Modify conditional checks
Message-ID: <b36253c9dacce060a90e84f3e8d854749800d720.1541421259.git.digholebhagyashri@gmail.com>
References: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541421259.git.digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541421259.git.digholebhagyashri@gmail.com>
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


