X-GM-THRID: 6251571233793507328
X-Received: by 10.66.132.81 with SMTP id os17mr17085428pab.12.1455557354695;
        Mon, 15 Feb 2016 09:29:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.126.47 with SMTP id mv15ls992112obb.71.gmail; Mon, 15 Feb
 2016 09:29:14 -0800 (PST)
X-Received: by 10.182.63.17 with SMTP id c17mr16631432obs.39.1455557354062;
        Mon, 15 Feb 2016 09:29:14 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id u66si3101677pfa.2.2016.02.15.09.29.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 09:29:14 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e127so7750749pfe.3
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 09:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=JKutr5QJN1+hLrnBcgyengT0prsFIYT/hdrOu7/FkNg=;
        b=ONK+ohpbYb/dqmjJ//SZguRt32GZstNN/QSQ/wNisGHK6gXmPbqtSJdWk09UP+k+pu
         pneal+oIEyYdss2hs6LbZKgCj3M54CHKoQOszSWDTZNaQQXUeNOJN785uvP+5m/sEPpe
         +g+xZdnKEAiKf8+cmgf57MH9aryf5ZS2pdCEMjJxC/x/CaeLhGNoUlwL2+MY9cGYXCMS
         3wO5j20Sh568AvwYe380rD48cG8zR3hIjZZGlHvSRcNOPw3zioSvjLuPtm5LU48Bahyr
         TsVjJ+lJS7v6N5FHZ3vs6/RXXUcmVjwJtq9DI2FopxoUFIhr9GbOWIrYwTZt6dcvxPKR
         GJeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=JKutr5QJN1+hLrnBcgyengT0prsFIYT/hdrOu7/FkNg=;
        b=WbLbGzLPlR1Tk5R6JCYtDx8x7f4R5do/3GvnAtmxnHIyBCwGA6JERS+ZoV43QHNlcr
         n8wS9xe7tQBinsd/tjOrTeaDpZb1GEy5BxeUu6ieHl8SST3xCLDFU1840p9u4xn1gPr1
         sgzzbGBBg9cKMm0MUrlS18TtgCvnk7KFChiexsFMifJOIUVbWfxamgUmYqlJlLYJBxJ0
         kSxM0rSyGGAMytO+UeOsf0Bt9ZM52SWVfla5frScUx8rQJLH+dr+iLw3Esssv4p5dIW0
         JuiV3Jdvm4IKk4jUzJvRj/DM+Vdm9EmDu2+pjkOo+tdeDMhf085yYfp5j+56vxXFeXvU
         AlaA==
X-Gm-Message-State: AG10YOS18PwQ5eQFCBuOoc1fMDW02TZmTaaZGoi0bFtJg4AaXEHEpktGJ7gkymkXKglqdA==
X-Received: by 10.98.66.81 with SMTP id p78mr24981136pfa.43.1455557353886;
        Mon, 15 Feb 2016 09:29:13 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.48.60.250])
        by smtp.gmail.com with ESMTPSA id z5sm40012243pas.29.2016.02.15.09.29.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 09:29:13 -0800 (PST)
Date: Mon, 15 Feb 2016 22:59:10 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: llite: Remove IS_ERR test
Message-ID: <20160215172909.GA24050@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove IS_ERR tests as ll_iget() function can return a ERR_PTR.

This patch also removes checkpatch warnings:
Comparison to NULL could be written "!root"
Comparison to NULL could be written "!inode"

Additionally, reinitialising root and inode to NULL has been removed
since they have already been tested for the same.

Lastly, in the first case, the goto has been removed since iput(root)
will return nothing for a NULL pointer.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Remove IS_ERR test instead of replacing it with
         IS_ERR_OR_NULL

 drivers/staging/lustre/lustre/llite/llite_lib.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 446e4b8..940f83a 100644
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
@@ -502,10 +502,8 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
 			lmd.posix_acl = NULL;
 		}
 #endif
-		err = IS_ERR(root) ? PTR_ERR(root) : -EBADF;
-		root = NULL;
+		err = -EBADF;
 		CERROR("lustre_lite: bad iget4 for root\n");
-		goto out_root;
 	}
 
 	err = ll_close_thread_start(&sbi->ll_lcq);
@@ -1965,15 +1963,14 @@ int ll_prep_inode(struct inode **inode, struct ptlrpc_request *req,
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
-- 
1.9.1


