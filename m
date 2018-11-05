X-GM-THRID: 6620347424824098816
X-Received: by 2002:a9d:32c9:: with SMTP id u67mr2252757otb.1.1541447348505;
        Mon, 05 Nov 2018 11:49:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:807:: with SMTP id 7-v6ls3273756oii.10.gmail; Mon, 05
 Nov 2018 11:49:07 -0800 (PST)
X-Google-Smtp-Source: AJdET5fTtDKrkiwEnbX5IDMADy53hcxEIj8HDAkH51qhpv/qR+tIRisRPrdEgnjawdhZmqZaWsP9
X-Received: by 2002:aca:d846:: with SMTP id p67-v6mr17922770oig.6.1541447347413;
        Mon, 05 Nov 2018 11:49:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541447347; cv=none;
        d=google.com; s=arc-20160816;
        b=Dn96uLxuj65h1qIO19IEBfrCmKhQzA3Ie+VMMg2gEMSe/aFpIp1mfMvjbjWGWy+rxY
         4xc/TVjiSHHch6Q+aVfUWSBqSV8IypHVI5BMAyfcSyNrpgsiOEIPUVZ5UwPHOZeSzBge
         2j8wbcT05js79o9Dt+NZA6F/++l+HmMtxVQVZ3ot2kb5I7JOYuBCUJWXBZurnPF5348y
         PcCH79Ws3lbHLwnloUvjaVKhyd4Xn/Q/+bZwTEFYNRSObFCvrC8OymoaB8murcy/O6DR
         vdAhlQvKl/xEaH1Zd5wd70qhAukqYSc6MBg90XB8UtgmcOEJlIcRKG9Fm7uIKZIgzGO1
         Nq8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=g701PfiZcZzfmaI1vytIFzexIqRrb4X6zYMeMXfY6FA=;
        b=rW7QyuvsXiP2BzS3r9gh8o47oi0+rKbeKFtOz0VjxlFe+/dGzU1SjigWENYUzzlY/o
         s18MBOqv+mB5lyRhScnPymq4lIZlsbSLch6iGiMTvaRZ+/RgQFPVbbO7TJO2cQn/zDwb
         X6SrCvNvn4xbmqKeD6jAD8rbowFTFfVpez1zetLacUBRamjLiMbUrUXsqossaMAmXkOw
         uFFU6phK6MgUGwnUA5+6pAsjnvRFBA4DYejsfsBpEKh4jgWwtMghPWAj+DEYxa4oT2kc
         fMbLraBtjYRTflyFSN4kvbHXHuPKbdvfBJHZ/zUFZWACyC7yx+aVqT1csOYZtfJgALd0
         7Ryg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=elgi+E98;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id 25-v6si1411827oij.4.2018.11.05.11.49.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 11:49:07 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=elgi+E98;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x433.google.com with SMTP id v9-v6so2624199pff.2
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 11:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=g701PfiZcZzfmaI1vytIFzexIqRrb4X6zYMeMXfY6FA=;
        b=elgi+E98owcXOSdh6x6mgi8l+hGSU+S9U7ev6yVe9aJRwlFI2a+EGWz11ljSkVcq7b
         e1T4ttIxiVG56nkYwA2Nnf85SAiHfgTxZRYJdvRwwyc4r0Pg+FFkPnH8GOj+GZFgBzPb
         MxQ+EL4yTcT6QlPcGWi9JNJp3bypx2BH/2N6vVW8XFyVCQvo8mlHuqHcMWprKwDsjXI4
         O0EKaLTXkC39OMrMltkbJN+V519+hPK+JhZR4lq3mWGj1axtJWa7l1Y/Dk3x70oF0do9
         PZOgIjVFD3YFUuWqRtvZi3561mwmZT/wBMQt/T7Jf6hCzT3G7z+bBxAQUmvLOgaTX4Hk
         M4bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=g701PfiZcZzfmaI1vytIFzexIqRrb4X6zYMeMXfY6FA=;
        b=oZoXWzkfvMKKmmLLe4EW5Xz1pUo3S+UzIuMbKdOf0CiclfplbmGiXFbG4OlY2qp1eS
         rBDHThZMHpwdWWONteJx7+zKnHyjjRqyeRs++BEmSMCdPbow6eY7hTh7fWcxVF2FCjRJ
         TrHxlTzOAM/VQxnLphJUfv/Bv+cbBLKJKPw1+zJZ5qzhngq1Rbn5WPBs4vrJziQoR8zh
         3l1bkZCAlB9tR4jCJZ4QKK/sPuZWJIZsuqsCLphn2WZzPP2jdL4h3zofidgOdBCZKhgg
         75xhRlJ1Z+F3ZkekrW3xwLh0A68KwzclZCcpyq5syMRxiqyKIEmkqZJhisNqnYipSLzR
         wggQ==
X-Gm-Message-State: AGRZ1gJAYcWRjxwSmrW3pDYE73KETESosGL6gQtMvGeZuA0P/Zk3wmI4
	Kp1rKFOCpzVzIb0AnzcXNjM=
X-Received: by 2002:a63:ac02:: with SMTP id v2-v6mr21222655pge.414.1541447346930;
        Mon, 05 Nov 2018 11:49:06 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from dev ([12.97.16.194])
        by smtp.gmail.com with ESMTPSA id v23-v6sm12129369pfm.170.2018.11.05.11.49.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Nov 2018 11:49:06 -0800 (PST)
Date: Mon, 5 Nov 2018 19:49:05 +0000
From: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	linux-erofs@lists.ozlabs.org
Subject: [PATCH v5 2/2] staging: erofs: Modify conditional checks
Message-ID: <b36253c9dacce060a90e84f3e8d854749800d720.1541446384.git.digholebhagyashri@gmail.com>
References: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541446384.git.digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541446384.git.digholebhagyashri@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix coding style alignment issues detected by checkpatch.pl
Use ! for NULL test rather than explicitly comparing to NULL.

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


