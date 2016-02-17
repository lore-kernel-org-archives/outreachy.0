X-GM-THRID: 6252320028227534848
X-Received: by 10.107.198.137 with SMTP id w131mr4292836iof.9.1455731696729;
        Wed, 17 Feb 2016 09:54:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.13.103 with SMTP id g7ls859098igc.29.gmail; Wed, 17 Feb
 2016 09:54:56 -0800 (PST)
X-Received: by 10.107.136.23 with SMTP id k23mr4202921iod.23.1455731696437;
        Wed, 17 Feb 2016 09:54:56 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id ui7si370463pab.0.2016.02.17.09.54.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 09:54:56 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id e127so15180891pfe.3
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 09:54:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=YCLotqyhqY1gp0wD4aMlSWxOPBVCBlau25DVp4GcKbQ=;
        b=tFBX6VV2NNIplQrH4UVUjhrWzez7wNHbGpr4T/dFTJ61LlmGDIyy425pbNoubo0PuM
         BWAvngef8A24ntnz91M4BbnCFAABmGn7H4vaHze6KXiJk0Wb43MZ1LQ0KTGM6SOUXIsi
         46OkjPSokvh5xVmAy2ngN2dMc4CxTDoMghR13Zf50xE/fpIwU90TZYdWebI8bKUWSqMc
         8MQZZLyGfbuQL3GkWzlyqYUcAlmBK7Fn52AnlA5OavTN6KvfXe1QTT9DAck8YjwMb7yr
         pCtOQcyvt8S6hrWlJV4f2wwghlMxCQMw8rygfe/u52B5KupYMcX9nWUcLU8PZCLg9CR1
         gP/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=YCLotqyhqY1gp0wD4aMlSWxOPBVCBlau25DVp4GcKbQ=;
        b=lPwlizV00DYPsZNFJt1n+bSfyJajIJCoNYYRN2JCBKEmSNsXJ4cnEcd98cYguzX+/l
         XsumDx0AS/nYXtLHAkpVnq2BgoDdqYEXvizM/ObHsv8O2ffrpFecq7yh/82/bnMcXzn8
         KouyJe3O0QNxRhjDJ9rv367CIcMhsfEHNwUlCNMfaukZhugwL8zViEFH4lM1j+ALiB3/
         mHwQo7YRCQgkWPXzgUvqRPJ76hLFWmwcyaNbpuhOpFrr8WnTV2APzODexSMuCJhJh3K/
         K0vQwBAeALGvnKBBPYDNhFsfF9Y9W7qkwrQKPTyiIEm6qFoTFdBaTwfp1qSWiW2vZWOB
         FgoA==
X-Gm-Message-State: AG10YOR27KLRBTzTk6MApnfXM9aOlEaglj+Vt6NfIqKgImc1LQQGbC6QvNMRSRyqq+JeUw==
X-Received: by 10.98.17.129 with SMTP id 1mr3981262pfr.30.1455731696300;
        Wed, 17 Feb 2016 09:54:56 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o90sm4242573pfi.17.2016.02.17.09.54.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 09:54:55 -0800 (PST)
Date: Wed, 17 Feb 2016 23:25:25 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lusture: llite: Use IS_ERR_OR_NULL
Message-ID: <20160217175525.GA19663@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replaced tests for NULL and IS_ER with macro IS_ERR_OR_NULL.

The following Coccinelle semantic patch was used:

@@
expression ex;
@@

- ex == NULL || IS_ERR(ex)
+ IS_ERR_OR_NULL(ex)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 446e4b8..5a32f9f 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -493,7 +493,7 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
 	md_free_lustre_md(sbi->ll_md_exp, &lmd);
 	ptlrpc_req_finished(request);

-	if (root == NULL || IS_ERR(root)) {
+	if (IS_ERR_OR_NULL(root)) {
 		if (lmd.lsm)
 			obd_free_memmd(sbi->ll_dt_exp, &lmd.lsm);
 #ifdef CONFIG_FS_POSIX_ACL
@@ -1965,7 +1965,7 @@ int ll_prep_inode(struct inode **inode, struct ptlrpc_request *req,
 		*inode = ll_iget(sb, cl_fid_build_ino(&md.body->fid1,
 					     sbi->ll_flags & LL_SBI_32BIT_API),
 				 &md);
-		if (*inode == NULL || IS_ERR(*inode)) {
+		if (IS_ERR_OR_NULL(*inode)) {
 #ifdef CONFIG_FS_POSIX_ACL
 			if (md.posix_acl) {
 				posix_acl_release(md.posix_acl);
--
2.1.4


