X-GM-THRID: 6674617337151225856
X-Received: by 2002:a24:cb41:: with SMTP id u62mr63170itg.1.1554055468858;
        Sun, 31 Mar 2019 11:04:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:456a:: with SMTP id y103ls2138116ita.2.gmail; Sun, 31
 Mar 2019 11:04:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyUmCgvmzfTy+wu9b2FP685kiQw2+7WsT4jLi6bJwxnB/dt/nFHinVBG/pByvYKpP/pU3zg
X-Received: by 2002:a05:660c:a45:: with SMTP id j5mr5028363itl.20.1554055467897;
        Sun, 31 Mar 2019 11:04:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554055467; cv=none;
        d=google.com; s=arc-20160816;
        b=APK8YiTE/i6nhwjsKZfq9L1QyckC/w5Zvxk51j4SdbdzS5pP8/JzcJSxkjTFlu8vBT
         o5WnnvzxIgUtlBNliWdFuOYknpIPxPLL2e9vAQbnqtQhn4r9ElUpz5TixSaUffANefzk
         AQVD9RNAUvEFn5dO7fWCfHFnCxEteviqhs20q7eF0eq7p2K4DG/6SwzwPyur3q/5uooV
         KzuRFhb92VmX9MjgWx46ZCLYzJm6S6d7LHa/wtW1wZ6tHLwdzfXZqDzc/F1RVdVmubHg
         2dQ1qLhM0GwCdcFdEYggYMfBgHPYFidQzSHKWtA6kgk1K1cDNxic5OwUDUktiPZKGKBg
         EUnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=iyLFJ1ssp/gY6cOfObjLzHEeWREO9Q+EVMUcTtcXuHM=;
        b=gLsLoSltMyRWGizehNqIIURY7iV6CPOJtDHqghcFpHrMPidoxaGeNM5DQpBGGV/Y9X
         h5ejDcYiAhJIpIr5mDZO0GuupUNJ4z93zwO5xoAGTcQDzTgz6w+OMBuamQ0ajMm8S1pJ
         VILg5wT1bKK7Og5EYBBxk2mnipzXCF4/bL0+7AvXjwzJBrlfwlmQqkFQHPopg9lUgppB
         yqxUHANiI4/u7/F8MyKYzjaYa2Gk07n8a0KufDeJW6/xCALWzcSTPOsuJYIqIY8o6U41
         rBLcmc5YZXNc8gIV2QbiLy47JCPub9KLwFPJ+CLbDZyDTGfoF+BWoCu3IpY6KwFyPZ7f
         qWoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="a/XzEx0m";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id k26si306992ioh.5.2019.03.31.11.04.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 11:04:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="a/XzEx0m";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id u9so3562586pgo.7
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 11:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=iyLFJ1ssp/gY6cOfObjLzHEeWREO9Q+EVMUcTtcXuHM=;
        b=a/XzEx0mvN0fO0iL97noTDu32Snz7z0ygCnBvuKVlHvL81IaLEW42XcN0dzQ3ffQMQ
         uOUa+FvepuNWumJGAYpbHKfoPwnEgM4GUrsEOJk+5gf6bvIpiDIooL58uHinfc1mzd+R
         xlrId2s8xuhslHCHoIr8mRYUVVn992tJDlCsy9S2/3rf3i/eK666xTe9MOFBXFyg5AEq
         3zu7YBQnldllUvyDxXQSLqaFJbw37TxrbJ/G6q9dpkp7FdsX6P2IVwEV2++biVdaf2Ap
         6VLljzkbN85dqiV3gZwWfXqtvoEVkSBwKPRwBuTLccAU/FGUCqrxhzopClxbJNUI2boT
         x1qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=iyLFJ1ssp/gY6cOfObjLzHEeWREO9Q+EVMUcTtcXuHM=;
        b=J2Te5gYTsUgHLIErazCWHiNVa6N8FRXPua1bUJyVup/g4VSuzf2O8FDi4KLRlTFPCb
         JtLMdtxnClAMpuux8RqvgcnWdKjFW/xXnrJB1tsrp5MESu8u+otLY1wgSglYn6oNh8ad
         dYR2x4z7W6sHcpPdlVroVFooGu76doqcLgLOlfdKQqbKTbM7U8UZSfrCUeiOG42wjJEY
         h4vuxGhH/HKOUwy1nMSOqrWsy4Goy7U5tG3rfNB3vWOetSwXv36QIKb7A/Ou7yVApI6d
         Qwlu82ZuR6sPH0EytXgJKua7TfGnWqIXVbrxqO4ok6d3W75CUuRRIulqePI3c0s0upYi
         2nCQ==
X-Gm-Message-State: APjAAAX8xuKTBI8FKqaTO6zY6IPAzr+QWfUhrtD6CvAU9jeWlZzIuCer
	1m3c1A5L/Bzr6j1ozz66G4hVDXty
X-Received: by 2002:a63:8142:: with SMTP id t63mr51881902pgd.63.1554055466967;
        Sun, 31 Mar 2019 11:04:26 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id e1sm8289669pfn.187.2019.03.31.11.04.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 11:04:26 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 3/5] staging: erofs: super.c: use !x in place of NULL comparison
Date: Sun, 31 Mar 2019 23:33:49 +0530
Message-Id: <e8033d211771386bc86c71a58643374cbc686e11.1554054896.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Avoid NULL comparison, compare using boolean operator.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/erofs/super.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
index 15c784f..a3aeb72 100644
--- a/drivers/staging/erofs/super.c
+++ b/drivers/staging/erofs/super.c
@@ -49,7 +49,7 @@ static struct inode *alloc_inode(struct super_block *sb)
 	struct erofs_vnode *vi =
 		kmem_cache_alloc(erofs_inode_cachep, GFP_KERNEL);
 
-	if (vi == NULL)
+	if (!vi)
 		return NULL;
 
 	/* zero out everything except vfs_inode */
@@ -86,7 +86,7 @@ static int superblock_read(struct super_block *sb)
 
 	bh = sb_bread(sb, 0);
 
-	if (bh == NULL) {
+	if (!bh) {
 		errln("cannot read erofs superblock");
 		return -EIO;
 	}
@@ -336,7 +336,7 @@ static struct inode *erofs_init_managed_cache(struct super_block *sb)
 {
 	struct inode *inode = new_inode(sb);
 
-	if (unlikely(inode == NULL))
+	if (unlikely(!inode))
 		return ERR_PTR(-ENOMEM);
 
 	set_nlink(inode, 1);
@@ -367,7 +367,7 @@ static int erofs_read_super(struct super_block *sb,
 	}
 
 	sbi = kzalloc(sizeof(struct erofs_sb_info), GFP_KERNEL);
-	if (unlikely(sbi == NULL)) {
+	if (unlikely(!sbi)) {
 		err = -ENOMEM;
 		goto err;
 	}
@@ -431,14 +431,14 @@ static int erofs_read_super(struct super_block *sb,
 	}
 
 	sb->s_root = d_make_root(inode);
-	if (sb->s_root == NULL) {
+	if (!sb->s_root) {
 		err = -ENOMEM;
 		goto err_iget;
 	}
 
 	/* save the device name to sbi */
 	sbi->dev_name = __getname();
-	if (sbi->dev_name == NULL) {
+	if (!sbi->dev_name) {
 		err = -ENOMEM;
 		goto err_devname;
 	}
@@ -481,7 +481,7 @@ static void erofs_put_super(struct super_block *sb)
 	struct erofs_sb_info *sbi = EROFS_SB(sb);
 
 	/* for cases which are failed in "read_super" */
-	if (sbi == NULL)
+	if (!sbi)
 		return;
 
 	WARN_ON(sb->s_magic != EROFS_SUPER_MAGIC);
-- 
2.7.4


