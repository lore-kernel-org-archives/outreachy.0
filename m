X-GM-THRID: 6251859755441061888
X-Received: by 10.107.6.163 with SMTP id f35mr21481343ioi.25.1455624530405;
        Tue, 16 Feb 2016 04:08:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.126.37 with SMTP id mv5ls1069728igb.33.gmail; Tue, 16 Feb
 2016 04:08:50 -0800 (PST)
X-Received: by 10.66.236.129 with SMTP id uu1mr20637306pac.18.1455624530063;
        Tue, 16 Feb 2016 04:08:50 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id 12si3081708pfb.1.2016.02.16.04.08.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 04:08:50 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id ho8so103886270pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 04:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=jSwGRVseogcR3Q4mudFUK1uSZDNteb31D1c7eoqdleU=;
        b=MUSNTsYjKEHy09WPogOUpiL5zMCyTahwr5KetDpHUNsTeNXa8ccIcJ3J0093JbRmCu
         jzPIwDTj501fwDfiZRuQIrkhAKmk6pM3j0jX+nEOceV0PAVWz8kfWElVW+mNXnSAPiDc
         M07UGiFg108qi/ST09JT0wH9NuNlqfAmrSQKZAlMUfZmAsMQNYtvtMkjsFPFAewvoFWk
         tZs4+TMbP72HYBhvzBvmuSb4eVZ6yH2crrxYp6COrUKdb05CmnpL29jhUNQLVi5bgGEq
         vGb2cwFHDIRDtI0GaCIv29LSzLMrH1w1Q4N/w7eyWsjMJLAOtkXQ/Kh54iXfMO4lLulB
         0Gkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=jSwGRVseogcR3Q4mudFUK1uSZDNteb31D1c7eoqdleU=;
        b=LNs77gcVqFJS5zJZfvV5R/LzL5oyPCIKLf/uyZdtX5pMdEE2K36h3oSybNyTtFQBBz
         LdEd11uClHQn6K3f9vid+t89tEbszwuzKJPxk4VdPtnQlnomHJ+vJ7JITP9U8j+uFn8l
         7KDN+bqlq4nsrYMJOR6UBHW/FaQIx8QLX1UeeGT2+CWfs+Q73T4h05KrqiAwsDeOXzgp
         lHmeLHxSmiof4zxe07MRHOH26UHuGw/UXQqtda4/p3G0cujfIyLWSoO34jXHQlEcpNUQ
         kB+qZVbrZyyF0cXXjM6pPNkpXf1BG4edkMfsECrkHU2/TDF+2HaYdMUcs1eXpjs2Hesm
         g3Og==
X-Gm-Message-State: AG10YOSiOCm9vpZVBuxFcUgx/eKc9gSLYYzs2Pf/AghAZs9YKrVeZzgMdJ5iX74wJru/bQ==
X-Received: by 10.66.236.132 with SMTP id uu4mr6385936pac.95.1455624529910;
        Tue, 16 Feb 2016 04:08:49 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id u5sm45457809pfi.15.2016.02.16.04.08.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 04:08:49 -0800 (PST)
Date: Tue, 16 Feb 2016 17:38:44 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: lustre: llite: Remove IS_ERR tests
Message-ID: <20160216120844.GA18950@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

ll_iget() has been modified to always return NULL in case of error and
not a ERR_PTR.

Consequently, remove unnecessary IS_ERR tests as now ll_iget() function 
can never return a ERR_PTR.

This patch also removes checkpatch warnings:
Comparison to NULL could be written "!root"
Comparison to NULL could be written "!inode"

Additionally, reinitialising root and inode to NULL has been removed
since they have already been tested for the same.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v3:
        -Modified ll_iget() to only return NULL in case of error
Changes in v2:
        -Remove IS_ERR test instead of replacing it with
         IS_ERR_OR_NULL

 drivers/staging/lustre/lustre/llite/llite_lib.c | 10 ++++------
 drivers/staging/lustre/lustre/llite/namei.c     |  2 +-
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 446e4b8..a64b3f6 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -493,7 +493,7 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
 	md_free_lustre_md(sbi->ll_md_exp, &lmd);
 	ptlrpc_req_finished(request);
 
-	if (root == NULL || IS_ERR(root)) {
+	if (!root) {
 		if (lmd.lsm)
 			obd_free_memmd(sbi->ll_dt_exp, &lmd.lsm);
 #ifdef CONFIG_FS_POSIX_ACL
@@ -502,8 +502,7 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
 			lmd.posix_acl = NULL;
 		}
 #endif
-		err = IS_ERR(root) ? PTR_ERR(root) : -EBADF;
-		root = NULL;
+		err = -EBADF;
 		CERROR("lustre_lite: bad iget4 for root\n");
 		goto out_root;
 	}
@@ -1965,15 +1964,14 @@ int ll_prep_inode(struct inode **inode, struct ptlrpc_request *req,
 		*inode = ll_iget(sb, cl_fid_build_ino(&md.body->fid1,
 					     sbi->ll_flags & LL_SBI_32BIT_API),
 				 &md);
-		if (*inode == NULL || IS_ERR(*inode)) {
+		if (!inode) {
 #ifdef CONFIG_FS_POSIX_ACL
 			if (md.posix_acl) {
 				posix_acl_release(md.posix_acl);
 				md.posix_acl = NULL;
 			}
 #endif
-			rc = IS_ERR(*inode) ? PTR_ERR(*inode) : -ENOMEM;
-			*inode = NULL;
+			rc = -ENOMEM;
 			CERROR("new_inode -fatal: rc %d\n", rc);
 			goto out;
 		}
diff --git a/drivers/staging/lustre/lustre/llite/namei.c b/drivers/staging/lustre/lustre/llite/namei.c
index da5f443..ca175cc 100644
--- a/drivers/staging/lustre/lustre/llite/namei.c
+++ b/drivers/staging/lustre/lustre/llite/namei.c
@@ -127,7 +127,7 @@ struct inode *ll_iget(struct super_block *sb, ino_t hash,
 			}
 			if (rc != 0) {
 				iget_failed(inode);
-				inode = ERR_PTR(rc);
+				inode = NULL;
 			} else
 				unlock_new_inode(inode);
 		} else if (!(inode->i_state & (I_FREEING | I_CLEAR)))
-- 
1.9.1


